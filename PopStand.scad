
$fn = 200;
difference(){
    union(){
        cylinder(r1=25, r2=24, h=2);
        translate([0,8,0]){
            cylinder(d=2.75, h=6);
        };
    }
    translate([0,0,1.4]) rotate_extrude() {
        translate([22,0,0]) square(1,1);
    }
}