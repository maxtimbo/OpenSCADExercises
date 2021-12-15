$fn=50;

cw=70;
cd=40;
ch=30;
cy=10;

difference() {
    cube([cw,cd,ch]);
    cube([30,cd,5]);
    translate([0,20,0])
    cube([cw,10,5]);
    translate([cw-20,0,0])
    cube([20,10,ch]);
    translate([0,cd,10])
    rotate([90,0,0])
    linear_extrude(height=cd)
    polygon([ [70,0],[70,ch-10],[cw-40,ch-10] ]);
    translate([10,10,0])
    cylinder(h=ch,d=10);
    translate([20,cd-10,0])
    cylinder(h=ch,d=10);

}
translate([cw/2,0,-20])
linear_extrude(height=1)
text("11");
