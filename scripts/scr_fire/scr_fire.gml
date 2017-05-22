//set up the particle system
partsys_fire = part_system_create();
part_system_depth(partsys_fire,0);

//set up the basic fire particle
part_fire = part_type_create();

    //how it looks
    part_type_sprite(part_fire,spr_fire,0,0,1);
    part_type_size(part_fire,1,1.5,-.05,0);
    part_type_orientation(part_fire,0,360,2,0,0);
    part_type_color2(part_fire,c_orange,c_red);
    part_type_alpha3(part_fire,0.5,0.25,0);
    part_type_blend(part_fire,1);
    
    //how it moves
    part_type_direction(part_fire,-10,10,.01,.01);
    part_type_speed(part_fire,2,10,-.1,0);

    //how long it lasts
    part_type_life(part_fire,10,15);
    
//set up an extra cinder particle for a nice added effect
part_cinder = part_type_create();

    //how it looks
    part_type_sprite(part_cinder,spr_cinderWipe,0,0,1);
    part_type_size(part_cinder,.5,.75,-.001,0);
    part_type_orientation(part_cinder,0,360,.05,0,0);
    part_type_color2(part_cinder,c_orange,c_red);
    part_type_alpha3(part_cinder,1,1,0);
    part_type_blend(part_cinder,1);
    
    //how it moves
    part_type_direction(part_cinder,-10,10,.01,.01);
    part_type_speed(part_cinder,6,8,0,0);

    //how long it lasts
    part_type_life(part_cinder,10,25);
    
    
    
    
