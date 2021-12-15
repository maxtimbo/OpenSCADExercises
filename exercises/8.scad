$fn=50;

cw=70;
cd=30;
ch=40;
cy=10;

difference() {
    cube([cw,cd,ch]);
    translate([0,0,10])
    cube([cw,10,ch-10]);
    translate([0,20,0])
    cube([cw,10,ch-10]);
    translate([40,0,20])
    cube([30,cd,20]);
    translate([10,cd-5,ch-10])
    cube([20,5,10]);
    translate([20,20,20])
    rotate([90,0,0])
    cylinder(h=cy,d=cy);
}
translate([cw/2,0,-20])
linear_extrude(height=1)
text("8");
