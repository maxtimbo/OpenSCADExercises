$fn=50;

cw=70;
cd=35;
ch=35;
cy=10;

difference() {
    cube([cw,cd,ch]);
    translate([0,0,15])
    cube([cw,20,ch-15]);
    translate([0,cd-5,0])
    cube([cw,5,ch-10]);
    polyhedron(
       points=[[cw,10,10],  //0
               [cw,cd,10],  //1
               [cw,cd,ch],  //2
               [cw,10,ch],  //3
               [20,10,ch],  //4
               [20,cd,ch]   //5
               ],
        faces=[[3,2,0],
               [0,2,1],
               [5,4,0],
               [5,0,1],
               [4,2,3],
               [4,5,2],
               [4,3,0],
               [1,2,5]
               ]);
    translate([40,10,0])
    cylinder(h=15,d=cy);
    translate([15,10,0])
    cylinder(h=15,d=cy);
}

translate([cw/2,0,-20])
linear_extrude(height=1)
text("20");
