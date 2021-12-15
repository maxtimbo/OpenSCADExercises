use <lib.scad>;

cw=70;
cd=40;
c2h=30;
ch=35;
roof1h=ch-10;

union() {
    difference() {
        cube([40, cd, ch]);
        translate([30,0,1])
        cube([10, cd, ch-1]);
        wedge([0,15],[cd,0],[ch,roof1h]);
        translate([15*2,0,0])
        mirror([1,0,0])
        wedge([0,15],[cd,0],[ch,roof1h]);
    }
    
    translate([70,10,0])
    rotate([0,0,90])
    difference() {
        cube([30,50,c2h]);
        wedge([0,15],[50,0],[c2h,c2h-10]);
        translate([15*2,0,0])
        mirror([1,0,0])
        wedge([0,15],[50,0],[c2h,c2h-10]);
    }
    translate([cw-(5/2),20,0])
    cube([5,10,ch]);
}

fname("21",cw);
