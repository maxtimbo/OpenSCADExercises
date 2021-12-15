$fn=50;

cw=70;
cd=30;
ch=35;
cy=10;

difference() {
    cube([cw,cd,ch]);
    translate([0,0,10])
    cube([cw,20,15]);
    translate([cw-40,0,10])
    cube([cw,cd,15]);
    translate([20,0,20])
    cube([cw-20,cd,15]);
    translate([10,10,25])
    cylinder(h=cy,d=cy);
    translate([40,15,0])
    cylinder(h=cy,d=cy);
    translate([cw-10,15,0])
    cylinder(h=cy,d=cy);
}
translate([cw/2,0,-20])
linear_extrude(height=1)
text("4");
