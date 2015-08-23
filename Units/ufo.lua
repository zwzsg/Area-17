local unitName  =  "ufo"

unitDef = {
	--Internal settings
	objectName             = "ufo.dae",
    name                   = "UFO",
    unitName               = unitName,
    script                 = unitName .. ".lua",

	-- Movement
	acceleration           = 0.9,
	--airHoverFactor         = 0.1, -- How much the unit moves while hovering on the spot
    airHoverFactor         = -1, --allows it to land
	brakeRate              = 0.6,
	maxVelocity            = 400,
	cruiseAlt              = 350,
    verticalSpeed          = 20,
	turnRate               = 0, -- Implement turning in script
	footprintX             = 2,
	footprintZ             = 2,

	useSmoothmesh          = false, -- Broken, do not use it.
	bankingAllowed         = false,
	canFly                 = true,
	floater                = true,
	hoverAttack            = true,
	canSubmerge            = false,
	turnInPlaceAngleLimit  = 180,

	customParams           = {
		modelradius        = "18",
		midposoffset       = "0 0 0",
	},

	-- Abiltiies
	firestate              = 0,
	builder                = false,
	canAttack              = true,
	canGuard               = true,
	canMove                = true,
	canPatrol              = true,
	canStop                = true,
	collide                = true,
	upright                = true,

	category               = "ufo",

	-- Hitbox
	collisionVolumeOffsets = "0 0 0",
	collisionVolumeScales  = "180 20 180",
	collisionVolumeType    = "cylY",

	-- Attributes
	mass                   = 200,
	maxDamage              = 1000,
    -- disable auto heal, healing will happen via repairs; additionally we'll use shields?
	autoHeal               = 0,
	idleAutoHeal           = 0,
	idleTime               = 1,

	-- Economy
	buildCostEnergy        = 100,
	buildCostMetal         = 100,
	buildTime              = 100,

	weapons                = {
		{
			def                = "gravityBeam",
			onlyTargetCategory = "land",
		},
		{
			def                = "gravityBeam",
			onlyTargetCategory = "land",
		},
		{
			def                = "gravityBeam",
			onlyTargetCategory = "land",
		},
		{
			def                = "gravityBeam",
			onlyTargetCategory = "land",
		},
		{
			def                = "independenceDayGun",
			onlyTargetCategory = "land",
		},
		{
			def                = "independenceDayGun",
			onlyTargetCategory = "land",
		},
		{
			def                = "independenceDayGun",
			onlyTargetCategory = "land",
		},
		{
			def                = "independenceDayGun",
			onlyTargetCategory = "land",
		},
		{
			def                = "pulseLaser",
			onlyTargetCategory = "land",
		},
	},

	weaponDefs             = {

		gravityBeam = {
			name                    = "Gravity Beam",
			areaOfEffect            = 128,
			avoidFeature            = false,
			avoidFriendly           = false,
			avoidNeutral            = false,
			avoidGround             = false,
			beamTime                = 0.01,
			beamTtl                 = 2,
			coreThickness           = 0,
			craterBoost             = 0,
			craterMult              = 0,

			customParams            = {
				impulse             = "-60",
				normaldamage        = "0",
			},

			damage                  = {
				default = 2,
			},

			interceptedByShieldType = 1,
			largeBeamLaser          = true,
			laserFlareSize          = 0,
			minIntensity            = 1,
			noSelfDamage            = true,
			range                   = 10000,
			reloadtime              = 0.02,
			rgbColor                = "0.2 0.2 0.2",
			scrollSpeed             = 10,
			soundTrigger            = true,
			sweepfire               = false,
			thickness               = 7,
			tileLength              = 100,
			tolerance               = 5000,
			turret                  = true,
			weaponType              = "BeamLaser",
			weaponVelocity          = 500,
		},
		pulseLaser = {
			name                    = "Pulse laser",
			areaOfEffect            = 128,
			avoidFeature            = false,
			avoidFriendly           = false,
			avoidNeutral            = false,
			avoidGround             = false,
			coreThickness           = 0,
			craterBoost             = 0,
			craterMult              = 0,

			damage                  = {
				default = 20,
			},

			interceptedByShieldType = 1,
			noSelfDamage            = true,
			range                   = 10000,
			reloadtime              = 0.01,
			rgbColor                = "0.2 0.5 0.2",
			soundTrigger            = true,
			thickness               = 3,
			tolerance               = 5000,
			turret                  = true,
			weaponType              = "LaserCannon",
			weaponVelocity          = 2500,
			soundstart  			= "pulse.wav",
		},
		independenceDayGun = {
			name                    = "Independence Day Gun",
			areaOfEffect            = 128,
			avoidFeature            = false,
			avoidFriendly           = false,
			avoidNeutral            = false,
			avoidGround             = false,
			beamTime                = 0.01,
			beamTtl                 = 2,
			coreThickness           = 2,
			craterBoost             = 10,
			craterMult              = 10,

			customParams            = {
				impulse             = "60",
				normaldamage        = "0",
			},

			damage                  = {
				default = 2,
			},

			interceptedByShieldType = 1,
			largeBeamLaser          = true,
			laserFlareSize          = 0.1,
			minIntensity            = 1,
			noSelfDamage            = true,
			range                   = 10000,
			reloadtime              = 0.01,
			rgbColor                = "0.2 0.2 0.2",
			scrollSpeed             = 10,
			soundTrigger            = true,
			sweepfire               = false,
			thickness               = 20,
			tileLength              = 10000,
			tolerance               = 5000,
			turret                  = true,
			weaponType              = "BeamLaser",
			weaponVelocity          = 100,
			pulseSpeed				= 0.1,
		},
	},
}

return lowerkeys({[unitName] = unitDef})
