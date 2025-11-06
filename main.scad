echo("Работа Касимова Василя");
$fn=64;
round_corner = 15;

//translate([0, 0, 10])
//color("green")
//cube([129, 129, 1], center = true);

frame();

module frame() {
    difference() {
        square_plate();
        translate([0, 0, 1])
        color("red")
        scale([0.95, 0.95, 4])
        square_plate();
    }
}

module square_plate(){ 
    hull() {
        //cube([129-round_corner, 129, 1], center = true);
        translate([129/2-round_corner/2, 129/2-round_corner/2, 0])
        color("red")
        cylinder(d = round_corner, h = 5, center = true);
        
        mirror([1, 0, 0])
        translate([129/2-round_corner/2, 129/2-round_corner/2, 0])
        color("red")
        cylinder(d = round_corner, h = 5, center = true);
        
        mirror([0, 1, 0])
        translate([129/2-round_corner/2, 129/2-round_corner/2, 0])
        color("red")
        cylinder(d = round_corner, h = 5, center = true);
        
        mirror([1, 1, 0])
        translate([129/2-round_corner/2, 129/2-round_corner/2, 0])
        color("red")
        cylinder(d = round_corner, h = 5, center = true);
    }
}

////hull() {
//    square(129, center = true);
//    translate([0, 0, 120])
//    circle(25);
////}

//hull() {
//cube([129, 129, 1], center = true);
//translate([0, 0, 120])
//cylinder(d=25, h=1, center = true);
//}


