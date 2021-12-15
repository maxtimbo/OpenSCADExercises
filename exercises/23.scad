use <lib.scad>;
include <default_cube.scad>;

ccw=cw/2;
ch=35;
cd=30;

module side() {
    difference() {
        cube([ccw,cd,ch]);
        translate([0,cd-10,20])
        cube([ccw,10,ch-20]);
        translate([10,cd,10])
        rotate([90,0,0])
        cylinder(h=cd,d=10);
        polyhedron(
         points=[[10,0,ch],         //0
                 [ccw,0,10],        //1
                 [ccw,cd-10,ch-10], //2
                 [25,cd-10,ch],     //3
                 [ccw,cd-10,ch],    //4
                 [ccw,0,ch]         //5
                 ],
          faces=[[0,1,2],
                 [1,0,5],
                 [2,3,0],
                 [3,2,4],
                 [1,5,2],
                 [5,4,2],
                 [5,3,4],
                 [3,5,0]
                 ]);
    }
}

union () {
    translate([ccw*2,0,0])
    mirror([1,0,0])
    side();
    side();
}

fname("23", cw);
