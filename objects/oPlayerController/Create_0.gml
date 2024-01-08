/// @description Initialise Variables

instance_create_layer(x, y, "UI", oCrosshair);

// Body Stats
playerMaxHealth = 200;
playerHealth = playerMaxHealth;

playerLevel = 1;
playerMoonlight = 0;
playerMaxMoonlight = 1000;


#region // Powerups
powerup[0] = false; // Double Jump
powerup[1] = false; // Enhanced Spear
powerup[2] = false; // Stopwatch

#endregion

// Spear Stats
spearLastObjectHit = oGame.object_index; // Last Object Hit with Spear.
spearRadius = 14; // Radius of Attack
spearCooldown = 80; // Cooldown of Attack in frames
spearFastCooldown = 40; // Cooldown of Attack in Frames, used after successfully landing last hit.
spearDamage = 25; // Damage, modified by +/-20% when attacking
spearDamageMultiplier = 1; // Damage Multiplier for upgrades.
spearStaggerMultiplier = 40; // Increases the amount of stagger dealt.

// Stagger Stats
staggerTimer = 150; // Length time will be slowed in frames.
staggerIntensity = 3; // Strength time will be slowed for.

// Camera Stats
staggerCameraWidth = 480;
staggerCameraHeight = 270;