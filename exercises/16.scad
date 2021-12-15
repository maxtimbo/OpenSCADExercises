$fn=50;

cw=80;
cd=35;
ch=30;
cy=10;

difference() {
    cube([cw,cd,ch]);
    translate([10,10,10])
    cube([15,cd-10,ch-10]);
    translate([25,0,10])
    cube([45,cd,ch-10]);
    translate([0,0,30])
    rotate([0,90,0])
    linear_extrude(height=cw)
    polygon([[0,0],[10,0],[0,20]]);
    translate([0,cd-10,ch-10])
    rotate([0,90,0])
    cylinder(h=cw,d=cy);
    translate([45,15.0])
    cylinder(h=10,d=15);
}


translate([cw/2,0,-20])
linear_extrude(height=1)
text("16");
