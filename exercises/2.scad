$fn=100;
cw=70;
cd=35;
ch=30;

difference() {
    cube([cw,cd,ch]);
    translate([15,10,ch-10])
    cube([cw-15,15,10]);
    translate([25,0,25])
    cube([cw-50,cd,5]);
    for(i=[0:cw-15:cw-15]) {
        translate([i,0,10])
        cube([15,35,30]);
    }
    translate([cw/2,cd,10])
    rotate([90,0,0])
    cylinder(h=cd,d=10);
}
translate([cw/2,0,-20])
linear_extrude(height=1)
text("2");
