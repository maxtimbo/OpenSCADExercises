$fn=50;

cw=70;
cd=40;
ch=30;
cy=10;

difference() {
    cube([cw,cd,ch]);
    translate([0,15,ch-5])
    cube([cw,15,5]);
    linear_extrude(height=ch)
    polygon([[45,0],[70,0],[70,20]]);
    translate([0,cd,10])
    rotate([90,0,0])
    linear_extrude(height=cd)
    polygon([[70,0],[cw,ch-10],[30,ch-10]]);
    translate([15,cd,15])
    rotate([90,0,0])
    cylinder(h=cd,d=10);
}

translate([cw/2,0,-20])
linear_extrude(height=1)
text("12");

