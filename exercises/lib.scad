module wedge(w=[0,0],d=[0,0],h=[0,0],r=[0,0,0]) {
    rotate([r[0],r[1],r[2]])
    polyhedron(
       points=[[w[0],d[1],h[1]],
               [w[0],d[0],h[1]],
               [w[0],d[0],h[0]],
               [w[0],d[1],h[0]],
               [w[1],d[1],h[0]],
               [w[1],d[0],h[0]]
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
}

module fname(name="default", width) {
    translate([width/2,0,-20])
    linear_extrude(height=1)
    text(name);
}

