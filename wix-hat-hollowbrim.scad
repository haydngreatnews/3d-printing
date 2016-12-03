$fn =90;

base_width = 15;
taper_scale = 0.90;

module hat_segment (size) {
    height = size * 5;
    base   = base_width * size;
    taper  = taper_scale;
//    difference() {
//        cylinder(
//            r1=base,
//            r2=base * taper,
//            h =height
//        );
        translate([0,0, height/2])
//        scale(1.2)
        rotate_extrude()
            translate([base, 0, 0])
            rotate([0, 0, 90 - atan( height / (base * (1-taper)) )])
            resize([(base / 4)*1.5, sqrt(pow(height,2) + pow(base * (1-taper), 2)) *1.5, 1])
            circle(d = 1);
//    }
}

module hat_outer() {
    union(){
        for(layer = [0:17]){
            hull(){
                rotate([0,5*layer,0]) translate([0,0,get_z_translation(layer)]) scale(pow(taper_scale,layer)) hat_segment(1);
                rotate([0,5*(layer+1),0]) translate([0,0,get_z_translation(layer+1)]) scale(pow(taper_scale,(layer+1))) hat_segment(1);
            }
    }
    }
}

module toroid(inner_radius, outer_radius){
    rotate_extrude()
        translate([outer_radius - (outer_radius - inner_radius)/2, 0, 0])
//        scale([0.5, 1, 1])
        circle(d = outer_radius - inner_radius);
}

//toroid(15,20)



//hat_segment(1);
difference(){
    difference(){
        hat_outer();
//        union (){
//            for(layer = [0:20]){
//                rotate([0,5*layer,0]) translate([0,0,get_z_translation(layer)]) scale(pow(taper_scale,layer)) hat_segment(1);
//            }
//        }
        
        translate ([0,0,-5]) cylinder(r1=19, r2=12, h=19);
    }
//    translate([-50,0,-50]) cube([100,100,100]);
}
//translate([0,0,get_z_translation(2)]) scale(pow(0.95,2)) hat_segment(1);
//translate([0,0,get_z_translation(3)]) scale(pow(0.95,3)) hat_segment(1);

// color("green") cylinder(r1=18, r2=14, h=10);

// Hat Brim
color("purple"){
    difference() {
        hat_brim(); 
        translate([0,0,-2]) hat_brim();
        translate ([0,0,-5]) cylinder(r1=19, r2=12, h=13);
    }
}


module hat_brim(){
    minkowski(){
        hull(){
        translate([0,0,0]) cylinder(r=base_width*1.2, h=0.1);
        translate([-base_width * 0.4,0, base_width * -0.33])
            resize([base_width*2 * 2, base_width *2 * 1.7, 0.1])
            cylinder(r=1, h=0.1);
        };
        sphere(r=0.7);
    }
}

module pop_head(){
    rounding = 10;
    minkowski(){
        cube([54-rounding, 57-rounding, 48-rounding], center=true);
        sphere(r=rounding);
    }
}

//color("yellow") translate([0,0,-50]) pop_head();


function get_z_translation(i=1) = (i == 0) ? 0 :(i == 1) ? 5 : 5*pow(taper_scale, i-1) + get_z_translation(i-1);

echo("z1= ", get_z_translation(1));
echo("z2= ", get_z_translation(2));
echo("z3= ", get_z_translation(3));
echo("o1= ", get_z_translation(1));
echo("o2= ", 5+5*.95);
echo("o3= ", 5+5*.95+5*.95*.95);

//
//translate([0,0,0]) color("red") hull() {
//    color("blue", 0.5) cylinder(
//        r1=base_width,
//        r2=base_width * taper_scale,
//        h =5);
//
//    color("green", 0.5) translate([0,0,5])
//        rotate([0,15,0])    
//        cylinder(
//            r1=base_width * taper_scale,
//            r2=base_width * pow(taper_scale,2),
//            h =5);
//}
////hull(){
//for(layer = [0:5]){
//    translate([layer,0,5*layer])
//        rotate([0,15*layer,0])    
//        cylinder(
//            r1=base_width * pow(taper_scale, layer-1),
//            r2=base_width * pow(taper_scale, layer),
//            h =5);
//}
////}