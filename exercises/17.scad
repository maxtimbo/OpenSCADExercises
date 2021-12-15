$fn=50;

cw=80;
cd=35;
ch=35;
cy=10;
zhh=25;
zhl=10;

difference() {
    cube([cw,cd,ch]);
    translate([5,0,0])
    cube([25,cd,5]);
    translate([35,0,0])
    cube([15,10,ch]);
    translate([35/2,35/2,0])
    cylinder(h=ch,d=15);
    translate([cw-10,10,ch-10])
    rotate([0,90,0])
    cylinder(h=10,d=10);
    polyhedron(
        points=[ [35,0,zhl],     //0
                 [35,0,ch],     //1
                 [70,0,zhl],     //2
                 [70,0,ch],     //3
                 [70,cd,zhh],    //4
                 [70,cd,ch],    //5
                 [35,cd,ch],    //6
                 [35,cd,zhh]     //7
                 ],
        faces=[  [0,1,2],
                 [3,2,1],
                 [2,3,4],
                 [3,5,4],
                 [7,1,0],
                 [7,6,1],
                 [5,3,1],
                 [6,5,1],
                 [4,5,6],
                 [7,4,6],
                 [0,2,7],
                 [2,4,7]
                 ]);
}


translate([cw/2,0,-20])
linear_extrude(height=1)
text("17");
