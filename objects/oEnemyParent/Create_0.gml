/// @description Insert description here
// You can write your code in this editor

hspd = 0;
vspd = 0;
isGrounded = false;

usesGravity = true;
gravityScale = global.GRAVITY;

#region Stagger
enemyMaxStagger = irandom_range(1200, 1800);
enemyCurrentStagger = 0;
enemyStaggerResistance = irandom_range(10, 17);
enemyStaggerDecayTimer = room_speed/5;
isStaggered = false;

isStunned = false; // Draws stunned VFX when true;

enemyDamageMultiplier = 1; // Lower Value is Less Damage
enemyStaggeredDamageMultiplier = 4; // Damage Multiplier when staggered.


#endregion

// Misc Variables
enemyName = "James May Sumimasen";
enemyDamage = 30;

// Inherit the parent event
event_inherited();

maxObjectHealth = irandom_range(90, 150);
currentObjectHealth = maxObjectHealth;