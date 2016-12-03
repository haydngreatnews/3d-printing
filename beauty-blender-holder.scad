module blender(size) {
    sphere(d=size);
}

module small_blender(x=0,y=0,z=0) {
    translate([x,y,z])
    blender(size=18);
}

module large_blender(x=0,y=0,z=0) {
    translate([x,y,z])
    blender(size=36);
}

module cleaner(x=0, y=0, z=0) {
    translate([x,y,z])
    rotate([90])
    cylinder(d=46, h=11, center=true);
}

$fn = 100;

difference() {
    cube(size=[52, 98 ,20]);
    cleaner(x=26, y=8.5, z=24);
    large_blender(x=26, y=35, z=20);
    small_blender(x=15.5, y=65, z=20);
    small_blender(x=15.5, y=86, z=20);
    small_blender(x=36.5, y=65, z=20);
    small_blender(x=36.5, y=86, z=20);
}