$fn=50;

cw=70;
cd=40;
ch=30;
cy=10;

difference() {
    cube([cw,cd,ch]);
    translate([cw-20,0,0])
    cube([20,30,ch]);
    translate([0,0,10])
    cube([cw-30,cd,ch-10]);
    cube([20,10,10]);
    translate([15,25,0])
    cylinder(h=cy,d=cy);
    translate([40,15,ch-10])
    rotate([0,90,0])
    cylinder(h=cy,d=cy);
}
translate([cw/2,0,-20])
linear_extrude(height=1)
text("7");
