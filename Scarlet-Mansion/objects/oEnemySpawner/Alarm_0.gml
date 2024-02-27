/// @description Spawn Enemies

// Create Enemies
switch (phase) {
	case 1: // Small Swarm
		repeat (irandom_range(1, 2)) {
			var enemy = instance_create_layer(x+irandom_range(-200, 200), y+irandom_range(-30, 30), "Instances", oEnemyPlaceholder);
			enemy.maxObjectHealth = irandom_range(180, 240);
			enemy.enemyName = "Tough Akaiakuma";
			
			enemy.enemyMaxStagger = irandom_range(2000, 3000);
			enemy.enemyStaggerResistance = irandom_range(15, 20);
			enemy.chaseRange = 256;
			enemy.enemyDamage = 40;
			enemy.image_xscale = .6;
			enemy.image_yscale = .6;
		}
		alarm[0] = room_speed*irandom_range(8, 12);
		break;
		
	case 2: // Medium Swarm
		repeat (irandom_range(1, 2)) {
			var enemy = instance_create_layer(x+irandom_range(-200, 200), y+irandom_range(-30, 30), "Instances", oEnemyPlaceholder);
			enemy.maxObjectHealth = irandom_range(180, 240);
			enemy.enemyName = "Tough Akaiakuma";
			enemy.enemyMaxStagger = irandom_range(2000, 3000);
			enemy.enemyStaggerResistance = irandom_range(15, 20);
			enemy.chaseRange = 256;
			enemy.enemyDamage = 40;
			enemy.image_xscale = .6;
			enemy.image_yscale = .6;
		}
		
		repeat (irandom_range(1, 2)) {
			var bigEnemy = instance_create_layer(x+irandom_range(-200, 200), y+irandom_range(-30, 30), "Instances", oEnemyPlaceholder);
			bigEnemy.maxObjectHealth = irandom_range(400, 550);
			bigEnemy.enemyName = "Mighty Akaiakuma";
			bigEnemy.enemyMaxStagger = irandom_range(2400, 3600);
			bigEnemy.enemyStaggerResistance = irandom_range(20, 25);
			bigEnemy.enemyDamageMultiplier = 0.5;
			bigEnemy.enemyStaggeredDamageMultiplier = 8;
			bigEnemy.chaseRange = 256;
			bigEnemy.enemyDamage = 50;
			bigEnemy.image_xscale = .75;
			bigEnemy.image_yscale = .75;
		}
		alarm[0] = room_speed*irandom_range(10, 15);
		break;
		
	case 3: // Massive Swarm
		repeat (irandom_range(2, 4)) {
			var enemy = instance_create_layer(x+irandom_range(-200, 200), y+irandom_range(-30, 30), "Instances", oEnemyPlaceholder);
			enemy.maxObjectHealth = irandom_range(180, 240);
			enemy.enemyName = "Tough Akaiakuma";
			enemy.enemyMaxStagger = irandom_range(2000, 3000);
			enemy.enemyStaggerResistance = irandom_range(15, 20);
			enemy.chaseRange = 256;
			enemy.attackRange = 192;
			enemy.enemyDamage = 40;
			enemy.image_xscale = .6;
			enemy.image_yscale = .6;
		}
		
		repeat (irandom_range(1, 2)) {
			var bigEnemy = instance_create_layer(x+irandom_range(-200, 200), y+irandom_range(-30, 30), "Instances", oEnemyPlaceholder);
			bigEnemy.maxObjectHealth = irandom_range(400, 550);
			bigEnemy.enemyName = "Mighty Akaiakuma";
			bigEnemy.enemyMaxStagger = irandom_range(2400, 3600);
			bigEnemy.enemyStaggerResistance = irandom_range(20, 25);
			bigEnemy.enemyDamageMultiplier = 0.5;
			bigEnemy.enemyStaggeredDamageMultiplier = 8;
			bigEnemy.chaseRange = 256;
			bigEnemy.enemyDamage = 50;
			bigEnemy.image_xscale = .75;
			bigEnemy.image_yscale = .75;
		}
		
		alarm[0] = room_speed*irandom_range(5, 10);
		break;
}
