$fn=50;


difference() {
    cube([70,40,30]);
    translate([15,0,15])
    cube([45,40,15]);
    translate([40,0,0])
    cube([30,15,30]);
    translate([25,10,0])
    cylinder(h=30, d=10);
    translate([40,30,0])
    cylinder(h=30, d=10);
}
translate([cw/2,0,-20])
linear_extrude(height=1)
text("1");
