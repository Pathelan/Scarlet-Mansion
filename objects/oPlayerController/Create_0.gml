/// @description Initialise Variables

instance_create_layer(x, y, "UI", oCrosshair);

// Body Stats
playerMaxHealth = 200;
playerHealth = playerMaxHealth;

playerLevel = 1;
playerMoonlight = 0;
playerMaxMoonlight = 600;


#region // Powerups
powerup[0] = false; // Double Jump
powerup[1] = false; // Enhanced Spear
powerup[2] = false; // Stopwatch

#endregion

// Misc Spear Variables
spearSprite = sPlayerSpearLong;

// Buffer
bufferSpearDamage = buffer_create(64, buffer_fixed, 4);

// Spear Stats
spearLastObjectHit = oGame.object_index; // Last Object Hit with Spear.
spearRadius = 18; // Radius of Attack
spearCooldown = 80; // Cooldown of Attack in frames
spearFastCooldown = 40; // Cooldown of Attack in Frames, used after successfully landing last hit.
spearDamage = 25; // Damage, modified by +/-20% when attacking
spearDamageMultiplier = 1; // Damage Multiplier for upgrades.
spearStaggerMultiplier = 40; // Increases the amount of stagger dealt.

spearAlternateFire = false; // Allows the Spear to fire as a projectile.
spearAlternateDamage = 180; // Damage Alternate Spear Damage Does
spearAlternateStaggerMultiplier = 100; // How effective Spear Fire is at staggering
spearAlternateCooldown = room_speed*5; // How Long it takes for spear to return to player.

// Stagger Stats
staggerTimer = 150; // Length time will be slowed in frames.
staggerIntensity = 3; // Strength time will be slowed for.

// Camera Stats
staggerCameraWidth = 480;
staggerCameraHeight = 270;