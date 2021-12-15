$fn=50;

cw=70;
cd=35;
ch=35;
cy=10;

difference() {
    cube([cw,cd,ch]);
    translate([0,0,10])
    cube([30,cd-10,ch-10]);
    translate([(cw/2)+5,0,10])
    cube([30,cd-10,ch-10]);
    rotate([90,0,90])
    linear_extrude(height=cw)
    polygon([[0,10],
             [0,ch],
             [cd-10,ch]]);
    translate([cw,0,0])
    mirror([1,0,0])
    translate([cw-15,cd,ch-15])
    rotate([90,0,0])
    linear_extrude(height=cd)
    polygon([[0,15],
             [15,0],
             [15,15]]);
    translate([cw-15,cd,ch-15])
    rotate([90,0,0])
    linear_extrude(height=cd)
    polygon([[0,15],
             [15,0],
             [15,15]]);
    translate([15,10,0])
    cylinder(h=cy,d=cy);
    translate([cw-15,10,0])
    cylinder(h=cy,d=cy);
}

translate([cw/2,0,-20])
linear_extrude(height=1)
text("15");
