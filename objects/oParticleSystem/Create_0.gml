/// @description Initialise Particle Systems

dir = point_direction(x, y, x, y);



particleSystem = part_system_create();

#region // Player Particles
particleSpearHit = part_type_create();

// Particle Variables
part_type_life(particleSpearHit, 5, 10);
part_type_sprite(particleSpearHit, sParticleSpearHit, false, false, true);

part_type_direction(particleSpearHit, 0, 359, false, false);
part_type_speed(particleSpearHit, 3*global.TIMESCALE, 4*global.TIMESCALE, -0.25*global.TIMESCALE, false);
part_type_orientation(particleSpearHit, 0, 359, 0, 0, true);
part_type_alpha3(particleSpearHit, 1, 1, 0);
part_type_size(particleSpearHit, 0.5, 0.8, -0.05, false);

#endregion





