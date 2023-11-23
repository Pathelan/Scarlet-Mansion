/// @description Insert description here
// You can write your code in this editor

hspd = 0;
vspd = 0;
isGrounded = false;

#region Stagger
enemyMaxStagger = irandom_range(1200, 1800);
enemyCurrentStagger = 0;
enemyStaggerResistance = irandom_range(10, 17);
enemyStaggerDecayTimer = room_speed/5;
isStaggered = false;

enemyDamageMultiplier = 1; // Lower Value is Less Damage
enemyStaggeredDamageMultiplier = 4; // Damage Multiplier when staggered.


#endregion

// Misc Variables
enemyName = "James May Sumimasen";

// Inherit the parent event
event_inherited();

maxObjectHealth = irandom_range(90, 150);
currentObjectHealth = maxObjectHealth;