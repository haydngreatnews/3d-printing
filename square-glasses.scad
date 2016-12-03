$fn = 60;

module lens_shape () {
    minkowski(){
        cylinder(1);
        resize([6*1.618,4.75,0.5]) cube([1,1,1], center=true);
    }
}

module lens(){
    difference(){
        lens_shape();
        scale([0.9, 0.9, 1]) lens_shape();
    }
}


module nose_bridge(){    
    minkowski(){
        cylinder(d=0.45);
        union(){
            translate([1.3,0,0])
                rotate([0,0,-60])
                resize([0.1,3,0.5])
                cube([1,1,1], center=true);    
            translate([-1.3,0,0])
                rotate([0,0,60])
                resize([0.1,3,0.5])
                cube([1,1,1], center=true);
        }
    }
}

module arm(){
    translate([0,-2.5,7.5]) cube([0.6,1.0,15], center=true);
}


resize([57,0,0], auto=true) union(){
    translate([ 8.3,0,0]) lens();
    translate([-8.3,0,0]) lens();
    translate([ 13.80,0,0]) arm();
    translate([-13.80,0,0]) arm();
    nose_bridge();
}