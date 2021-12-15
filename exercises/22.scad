use <lib.scad>;
include <default_cube.scad>;

cd=40;
ch=30;
M = [[cw,15,15,10],
     [0,cd-10,0,0],
     [0,0,ch-10,10]];

difference() {
    cube([cw,cd,ch]);
    translate([0,0,ch+10])
    mirror([0,0,1])
    multmatrix(M) {
        cube([1,1,1]);
    }
    translate([10, cd-15,0])
    cylinder(h=ch,d=10);
    translate([cw-15,15,0])
    cylinder(h=10,d=10);
}

fname("22", cw);
