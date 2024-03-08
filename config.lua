Config = {}

Config.ExerciseMarkers = {
    arms = {
        {x = -1202.725, y = -1565.6, z = 4.611572, text = 'Appuyez sur [E] pour faire soulever des ~g~halters'}, --Plage
        --{x = -1268.3735, y = -363.9988, z = 36.9596, text = 'Appuyez sur [E] pour faire soulever des ~g~halters'}, --Salle 
		--{x = -378.4909, y = 6047.9873, z = 31.4805, text = 'Appuyez sur [E] pour faire soulever des ~g~halters'}, --Paleto  
    },
    chins = {
        {x = -1200.045, y = -1571.089, z = 4.609574, text = 'Appuyez sur [E] pour faire des ~g~tractions'}, --Plage 
        --{x = -1258.8065, y = -355.3633, z = 36.9596, text = 'Appuyez sur [E] pour faire des ~g~tractions'}, --Salle 
		--{x = -375.9461, y = 6041.7046, z = 31.4774, text = 'Appuyez sur [E] pour faire des ~g~tractions'}, --Paleto 
    },
    pushup = {
        {x = -1203.015, y = -1570.11, z = 4.607991, text = 'Appuyez sur [E] pour effectuer des ~g~pompes'}, --Plage
        --{x = -1263.8376, y = -354.8871, z = 36.9596, text = 'Appuyez sur [E] pour effectuer des ~g~pompes'}, --Salle
		--{x = -382.3640, y = 6046.2446, z = 31.4571, text = 'Appuyez sur [E] pour effectuer des ~g~pompes'}, --Paleto		
    },
    yoga = {
        {x = -1204.843, y = -1560.178, z = 4.61447, text = 'Appuyez sur [E] pour faire du ~g~yoga'}, --Plage 
        --{x = -1269.8346, y = -359.1649, z = 36.9596, text = 'Appuyez sur [E] pour faire du ~g~yoga'}, --Salle
		--{x = -374.2855, y = 6045.0195, z = 31.4769, text = 'Appuyez sur [E] pour faire du ~g~yoga'}, --Paleto
    },
    situps = {
        {x = -1207.925, y = -1566.454, z = 4.607986, text = "Appuyez sur [E] pour effectuer des ~g~abdos"}, --Plage 
        --{x = -1266.2815, y = -355.9388, z = 36.9596, text = "Appuyez sur [E] pour effectuer des ~g~abdos"}, --Salle 
		--{x = -381.5142, y = 6051.0132, z = 31.4574, text = "Appuyez sur [E] pour effectuer des ~g~abdos"}, --Paleto 
    },
    squats = {
        {x = -1209.2518, y = -1561.2382, z = 4.6009, text = 'Appuyez sur [E] pour faire des ~g~squats'}, --Plage
        --{x = -1261.6252, y = -358.3934, z = 36.9948, text = 'Appuyez sur [E] pour faire des ~g~squats'}, --Salle
		--{x = -380.2811, y = 6054.1709, z = 31.4571, text = 'Appuyez sur [E] pour faire des ~g~squats'}, --Paleto  
    },
    crunches = {
        {x = -1200.747, y = -1577.221, z = 4.608611, text = 'Appuyez sur [E] pour faire des ~g~crunches'}, --Plage 
        --{x = -1259.9114, y = -361.7896, z = 36.9948, text = 'Appuyez sur [E] pour faire des ~g~crunches'}, --Salle
		--{x = -380.0384, y = 6046.0610, z = 31.4812, text = 'Appuyez sur [E] pour faire des ~g~crunches'}, --Paleto 		
    },
    jumpingjacks = {
        {x = -1200.002, y = -1563.524, z = 4.618803, text = 'Appuyez sur [E] pour faire des ~g~jumping jacks'}, --Plage 
        --{x = -1263.1707, y = -363.8068, z = 36.9948, text = 'Appuyez sur [E] pour faire des ~g~jumping jacks'}, --Salle 
        --{x = -373.6440, y = 6043.1528, z = 31.4761, text = 'Appuyez sur [E] pour faire des ~g~jumping jacks'}, --Paleto 		
    },
    jog = { 
		--{x = -1260.8041, y = -367.8844, z = 37.1068, text = 'Appuyez sur [E] pour ~g~courir'}, --Salle 
		--{x = -386.0635, y = 6052.6548, z = 31.6143, text = 'Appuyez sur [E] pour ~g~courir'}, --Paleto 
	},
}

Config.ExerciseAnims = {
    arms = "weights",
    chins = "chinup",
    pushup = "pushup",
    yoga = "yoga",
    situps = "situp",
    squats = "gym",
    crunches = "gym2",
    jumpingjacks = "gym4",
    jog = "jog",
}

Config.ExerciseSkills = {
    arms = {Strength = 2},
    chins = {Strength = 2, ["Lung Capacity"] = 0.5},
    pushup = {Strength = 2, Stamina = 1},
    yoga = {["Lung Capacity"] = 1},
    situps = {Strength = 2},
    squats = {Strength = 2, Stamina = 1},
    crunches = {["Lung Capacity"] = 1, Stamina = 1},
    jumpingjacks = {Stamina = 2},
    jog = {Stamina = 2},
}

Config.ExerciseDuration = 20000 -- 20 secondes