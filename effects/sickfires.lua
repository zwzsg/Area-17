return {
  ["pulseflash"] = {
    usedefaultexplosions = false,
	spikes = {
		air                = true,
		class              = [[CExploSpikeProjectile]],
		count              = 5,
		ground             = true,
		water              = true,
		properties = {
			alwaysVisible      = false,
			length 				= 40,
			width				= 15,
			alpha				= 1,
			alphaDecay 			= 0.2,
			lengthGrowth		= 5.6,
			dir 				= [[r3 -1.5,r3 -1.5, r3-1.5]],
			color 				= [[0, 1, 0]],
			pos					= [[0, 0,0]],
		},
	},
	core = {
		air                = true,
		class              = [[CExploSpikeProjectile]],
		count              = 5,
		ground             = true,
		water              = true,
		properties = {
			alwaysVisible      = false,
			length 				= 20,
			width				= 10,
			alpha				= 1,
			alphaDecay 			= 0.2,
			lengthGrowth		= 5.6,
			dir 				= [[r3 -1.5,r3 -1.5, r3-1.5]],
			color 				= [[1, 1, 1]],
			pos					= [[0, 0,0]],
		},
	},
  },
  ["fireflash"] = {
    usedefaultexplosions = false,
	spikes = {
		air                = false,
		class              = [[CExploSpikeProjectile]],
		count              = 1,
		ground             = true,
		water              = false,
		properties = {
			alwaysVisible      = false,
			length 				= 60,
			width				= 40,
			alpha				= 1,
			alphaDecay 			= 0.2,
			lengthGrowth		= 5.6,
			dir 				= [[r3 -1.5,r3 -1.5, r3-1.5]],
			color 				= [[1, 0, 0]],
			pos					= [[0, 0,0]],
		},
	},
  },
  ["sickfires"] = {
    fire = {
      class              = [[CExpGenSpawner]],
      count              = 20,
      nounit             = 1,
      ground             = true,
      water              = true,
	  air                = true,
      properties = {
        delay              = [[d0.05y1 i1x1 r10 -5]],
        dir                = [[dir]],
        explosiongenerator = [[custom:fire]],
        pos                = [[0, 0, 0]],
        damage             = [[d1]],
      },
    },
  },
  ["fire"] = {
    usedefaultexplosions = false,
    expand = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        alwaysvisible      = false,
        heat               = [[d1 30]],
        heatfalloff        = [[20]],
        maxheat            = [[d3]],
        pos                = [[r20 -10,r20 -10,r20 -10]],
        size               = [[30]],
        sizegrowth         = [[0.4]],
        speed              = [[0, 0.2, 0]],
        texture            = [[flame]],
      },
    },
    contract = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        alwaysvisible      = false,
        heat               = [[d1 30]],
        heatfalloff        = [[20]],
        maxheat            = [[d4]],
        pos                = [[r20 -10,r20 -10,r20 -10]],
        size               = [[30]],
        sizegrowth         = [[-2]],
        speed              = [[0, 0.2, 0]],
      },
    },
	flame = {
		air                = false,
		class              = [[CExploSpikeProjectile]],
		count              = 1,
		ground             = true,
		water              = false,
		properties = {
			alwaysVisible      = false,
			length 				= 20,
			width				= 20,
			alpha				= 1,
			alphaDecay 			= [[d0.05p-1.05]],
			lengthGrowth		= [[d0.02]],
			dir 				= [[0,10, 0]],
			color 				= [[1, 0, 0]],
			pos                = [[r20 -10,0,r20 -10]],
		},
	},
	core = {
		air                = false,
		class              = [[CExploSpikeProjectile]],
		count              = 1,
		ground             = true,
		water              = false,
		properties = {
			alwaysVisible      = false,
			length 				= 20,
			width				= 16,
			alpha				= 1,
			alphaDecay 			= [[d0.05p-1.1]],
			lengthGrowth		= [[d0.01]],
			dir 				= [[0,10, 0]],
			color 				= [[1, 0.15, 0]],
			pos                = [[r20 -10,0,r20 -10]],
		},
	},
  },

}

