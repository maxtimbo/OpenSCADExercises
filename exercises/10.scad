$fn=50;

cw=80;
cd=30;
ch=35;
cy=10;

union() {
    difference() {
        translate([ 0,30,0 ])
        rotate([90,0,0])
        linear_extrude(height=cd)
        polygon([[20,0],[60,0],[40,35]]);
        translate([cw/2-15,cd/2-5,ch-10])
        cube([30,10,10]);
    }
    
    translate([0,5,0])
    difference() {
        cube([cw,cd-10,15]);
        translate([10,10,0])
        cylinder(h=20,d=10);
        translate([70,10,0])
        cylinder(h=20,d=10);
    }
}
translate([cw/2,0,-20])
linear_extrude(height=1)
text("10");

