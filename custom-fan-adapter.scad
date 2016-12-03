
base_size = 43.62 * 2;
base_height = 27;

little_fan_height = 10.4;

module base_adapter() {
    rotate([-90,0,0])
    translate([-base_size/2, -4.4 - base_height, -base_size/2])
        import("80to60.STL", convexity=3);
}
    
module little_fan(){
    // The old fan shape
    translate([-30, -60, 0]) cube([60,120,little_fan_height]);
}

//base_adapter();

scale([1,1, 0.8])
color("purple")
difference() {
    scale([1,1, 0.8]) base_adapter();
    difference(){
        translate([-base_size/2, -base_size/2,base_height*.8-little_fan_height])
            cube([base_size, base_size, little_fan_height]);
        translate([0,0,base_height*.8-little_fan_height]) little_fan();
    }
}