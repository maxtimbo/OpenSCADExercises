$fn=50;

cw=70;
cd=35;
ch=35;
cy=10;

difference() {
    cube([cw,cd,ch]);
    translate([10,0,0])
    cube([cw-20,cd-15,ch]);
    translate([0,0,ch])
    rotate([0,90,0])
    linear_extrude(height=10)
    polygon([ [10,0],[0,0],[0,10] ]);
    translate([cw,cd,ch])
    rotate([90,180,0])
    linear_extrude(height=cd)
    polygon([ [40,0],[0,0],[0,20] ]);
    translate([25,cd,25])
    rotate([90,0,0])
    cylinder(h=15,d=10);
    translate([45,cd,10])
    rotate([90,0,0])
    cylinder(h=15,d=10);
}



translate([cw/2,0,-20])
linear_extrude(height=1)
text("18");
