//CUSTOMIZER VARIABLES
// bolt_length: the length of the entire bolt from the base to tip
// bolt_clearance: the length of the narrow part of the bolt
// head_dia:  the diameter of the widest point on the bolt, at the end
// shaft_dia: the diameter of the rest of the bolt
//
// all measurements are in mm

//	bolt length, mm
bolt_length = 8;	//	[5:10]

//	bolt clearance, mm
bolt_clearance = 4;	//	[5:10]

//	head diameter, mm
head_dia = 10;	//	[5:30]

//	shaft diameter, mm
shaft_dia = 6;	//	[3:20]

//CUSTOMIZER VARIABLES END

plate_thickness = 2;
plate_width     = 19;
plate_height    = 50;

// Render fineness
$fn = 100;

// Maybe add some stuff for sticker size?

cube([plate_width, plate_height, plate_thickness]);
translate([plate_width/2, plate_height * 0.2, 0]){
    cylinder(h=bolt_length + plate_thickness, r=shaft_dia/2);
    
    translate([0, 0, bolt_clearance + plate_thickness ]){
        cylinder(h=bolt_length - bolt_clearance, r1=shaft_dia/2, r2=head_dia/2);
    }
}