/// @description Initialise Variables

viewportWidth = 0;
viewportHeight = 0;

get_viewport_size(view_camera[0]);

#region Enemy UI
drawEnemyStaggerTimer = 0;
drawEnemyStaggerID = noone;
drawEnemyCurrentStagger = 0;
drawEnemyMaxStagger = 0;
drawEnemyName = "";
drawEnemyStaggerAlpha = 1;

#endregion

winCountdown = 0; // Who Knows?
winPhase = 0;

winScreen = false; // Player Win
deathScreen = false; // Player Death

#region Item UI
drawItemTimer = 0;
drawItemAlpha = 0;

drawItemName = "";
drawItemDescription = "";
drawItemSprite = sItemWings;

#endregion