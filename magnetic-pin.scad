module magnet() {
    translate([0,0,-0.1])
    cylinder(d=13.5, h=2.8);
}

module half_sphere(diameter){
    difference(){
            sphere(d=diameter);
            translate ([-diameter/2,-diameter/2,-diameter]){
                cube(size=[diameter,diameter,diameter]);
            }
    }
}

module pin() {
    union() {
        half_sphere(20);
        cylinder(d1=12.7, d2=10.8, h=20);
        translate([0,0,20]) cylinder(d1=10.8, d2=15.6, h=5);
    }    
}

$fn=100;

translate([0,0,25 * 0.8])
rotate([180,0,0]){
    difference() {
        scale(0.8) pin();
        magnet();
    }
}