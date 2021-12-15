use <lib.scad>;
include <default_cube.scad>;


cw=75;
cd=40;
ch=25;

module funky_slope() {
    polyhedron(
       points=[[cw-10,0,0],     //0
               [cw,0,0],        //1
               [cw,10,0],       //2
               [cw,0,ch],       //3
               [cw,cd/2,10],    //4
               [cw,cd/2,ch],    //5
               [cw-15,cd/2,ch], //6
               [cw-30,0,ch]     //7
               ],
        faces=[[0,1,2],
               [3,1,0],
               [3,2,1],
               [2,3,4],
               [5,4,3],
               [4,5,6],
               [7,6,5],
               [5,3,7],
               [3,0,7],
               [4,6,7],
               [2,4,7],
               [0,2,7]
               ]);
}

module side() {
    difference () {
        cube([cw,cd/2,ch]);
        translate([10,0,ch-5])
        rotate([0,0,90])
        wedge([0,10],[0,10],[5,0]);
        funky_slope();
    }
}

difference() {
    union() {
        side();
        translate([0,cd,0])
        mirror([0,1,0])
        side();
    }
    translate([25,cd/2,0])
    cylinder(h=ch, d=10);
    translate([cw-30,cd/2,0])
    cylinder(h=ch, d=10);
    translate([25,(cd/2)-5,0])
    cube([(cw-30)-25,10,ch]);
}

fname("24", cw);
