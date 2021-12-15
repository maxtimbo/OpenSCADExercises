$fn=100;

cw=70;
cd=35;
ch=30;

union() {
    difference() {
        cube([cw-5,cd,ch]);
        translate([cw/2,cd/2,0])
        cylinder(h=15, d=15);
        translate([cw/2,10,0])
        cube([cw/2,15,15]);
        translate([15,0,15])
        cube([cw-15,cd,ch-15]);
        translate([0,0,ch-10])
        cube([15,15,10]);
    }
    translate([cw-5,5, 0])
    cylinder(h=15, r=5);
    translate([cw-5,5,0])
    cube([5,5,15]);
    translate([cw-5,cd-5, 0])
    cylinder(h=15, r=5);
    translate([cw-5,cd-10,0])
    cube([5,5,15]);
}
translate([cw/2,0,-20])
linear_extrude(height=1)
text("3");
