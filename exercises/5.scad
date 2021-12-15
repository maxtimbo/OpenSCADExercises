$fn=50;

cw=70;
cd=30;
ch=35;
cy=10;

difference() {
    cube([cw,cd,ch]);
    cube([20,cd,ch-10]);
    translate([0,10,0])
    cube([cw,10,5]);
    translate([cw-25,0,15])
    cube([25,cd,20]);
    translate([30,0,15])
    cube([20,15,ch-15]);
    translate([10,cd/2,ch-cy])
    cylinder(h=cy,d=cy);
}
translate([cw/2,0,-20])
linear_extrude(height=1)
text("5");
