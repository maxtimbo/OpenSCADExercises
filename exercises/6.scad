$fn=50;

cw=75;
cd=35;
ch=30;

difference() {
    cube([cw,cd,ch]);
    translate([10,0,0])
    cube([20,cd-10,ch]);
    translate([40,0,10])
    cube([cw-20*2,cd,ch-10]);
    translate([cw-15,cd/2,0])
    cylinder(h=10,d=15);
    translate([0,10,20])
    rotate([0,90,0])
    cylinder(h=40,d=10);
}
translate([cw/2,0,-20])
linear_extrude(height=1)
text("6");
