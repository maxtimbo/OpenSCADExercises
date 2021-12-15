
$fn=50;

cw=70;
cd=35;
ch=30;
cy=10;

difference() {
    cube([cw,cd,ch]);
    translate([0,0,15])
    cube([cw,20,15]);
    translate([0,cd,0])
    rotate([90,0,0])
    linear_extrude(height=cd)
    polygon([[ 70,0  ],[ 35,ch ],[ cw,ch  ]]);
    translate([15,10,0])
    cylinder(h=15,d=cy);
    translate([40,10,0])
    cylinder(h=15,d=cy);
}
translate([cw/2,0,-20])
linear_extrude(height=1)
text("9");
