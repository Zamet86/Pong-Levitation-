echo("Работа Касимова Василя");

//hull() {
//    square(129, center=true);
//    translate([0, 0, 120])
//    circle(25);
//}

hull(){
    cube([129, 129,1], center=true);
    translate([0, 0, 120])
    cylinder(d=25, h=1, center=true);
}


