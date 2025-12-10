$fn = 64;

x = 10;
y = 20;

difference() {
    rotate_extrude(angle = 360)
    translate([1, 0, 0])
    parabola();
    cylinder(d = 25, h = 15, center = true);
}

module parabola() {
    for (x = [0: 0.8: 40]) {
        y = 0.01*x*x;
        translate([x, y, 0])
        circle(1);
    }
}
