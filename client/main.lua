ESX = exports["es_extended"]:getSharedObject()
Config = {}

-- Les touches restent inchangées car elles ne sont pas incluses dans le config.lua
local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

DrawText3D = function(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

-- Boucle principale
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- Attendre un tick (ne met pas en pause le thread)
        local plyCoords = GetEntityCoords(PlayerPedId(), false)
        
        -- Parcourir les exercices et leurs marqueurs
        for exercise, markers in pairs(Config.ExerciseMarkers) do
            for _, marker in ipairs(markers) do
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, marker.x, marker.y, marker.z)
    
                if dist <= 0.5 then
                    DrawText3D(marker.x, marker.y, marker.z, marker.text)
    
                    if IsControlJustPressed(0, Keys['E']) then
                        PerformExercise(exercise)
                    end
                end
            end
        end
    end
end)

-- Fonction pour exécuter un exercice
function PerformExercise(exercise)
    local emote = Config.ExerciseAnims[exercise]

    ESX.ShowNotification("Se préparer pour l'~g~exercice...")
    Citizen.Wait(1000)

    local playerPed = PlayerPedId()

    exports["rpemotes"]:EmoteCommandStart(emote) -- Utilisation de l'export pour déclencher l'emote

    Citizen.Wait(Config.ExerciseDuration)

    for skill, value in pairs(Config.ExerciseSkills[exercise]) do
        exports["gamz-skillsystem"]:UpdateSkill(skill, value)
    end

    exports["rpemotes"]:EmoteCancel(true) -- Annuler l'emote une fois la durée terminée
end