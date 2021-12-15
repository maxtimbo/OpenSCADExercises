$fn=50;

cw=70;
cd=30;
ch=40;
cy=10;

difference() {
    cube([cw,cd,ch]);
    translate([0,cd-5,0])
    cube([cw,5,20]);
    translate([10,cd,ch-10])
    rotate([90,0,0])
    cylinder(h=cd,d=cy);
    translate([cw-10,cd,10])
    rotate([90,0,0])
    cylinder(h=cd,d=cy);
    polyhedron(
        points=[ [10,0,0],      //0
                 [10,10,0],     //1
                 [cw-30,10,0],  //2
                 [cw-30,0,0],   //3
                 [30,0,ch],     //4
                 [30,10,ch],    //5
                 [cw-10,10,ch], //6
                 [cw-10,0,ch]   //7
                            ],
        faces=[  [1,0,2],
                 [2,0,3],
                 [4,0,5],
                 [0,1,5],
                 [4,6,7],
                 [6,2,7],
                 [3,4,7],
                 [0,4,3],
                 [4,5,6],
                 [5,2,6],
                 [2,5,1],
                 [2,3,7]
                        ]);
    polyhedron(
        points=[ [50,0,ch],     //0
                 [cw,0,ch],     //1
                 [cw,0,25],     //2
                 [50,cd,ch],    //3
                 [cw,cd,ch],    //4
                 [cw,cd,25] ],  //5
        faces=[  [0,1,2],
                 [1,4,2],
                 [2,4,5],
                 [3,0,5],
                 [2,5,0],
                 [1,0,3],
                 [1,3,4],
                 [4,3,5]]);
}


translate([cw/2,0,-20])
linear_extrude(height=1)
text("14");
