$fn=50;

scale(1.1){
    difference(){
        union() {
            cube([9,10,6]);
            translate([4.5,10,0]) {
                cylinder(h=6, r=4.5);
            }
        }

        translate([0.5, -0.1, 0.4]){
            union() {
                cube([8,10,7]);
                translate([4,10,0]) {
                    cylinder(h=7, r=4);
                }
            }
        }
    }
}