// v2ex1.pov
//
// This is just a simple scene with a number of different objects in.
//
// Tracer options: -z 1 -w 1 -h 1 -x 240 -t

background { color rgb <0.27,0.27,0.27> } 

camera {
	location <-30,50,100>
	sky <1,0,0>
	look_at <-10,10,114>
}

sphere {
	<0,-5,116>, 12
	pigment {
		image_map { ppm "johan.ppm" }
	}
	finish { diffuse 1 }
}

sphere {
	<-10,7,118>, 8
	pigment {
		color rgb <0.59,0.01,0.08>
	}
	finish { diffuse 1 reflection 0.8 }
}

sphere	{
	<10,7,118>, 8
	pigment {
		color rgb <0.59,0.01,0.08>
	}
	finish { diffuse 1 reflection 0.8 }
}

sphere {
	<0,14,107>, 4
	pigment {
		color rgb <0.39,0.23,0.23>
	}
	finish { diffuse 1 reflection 0.8 }
}

sphere {
	<0,14,124>, 4
	pigment {
		color rgb <0.78,0,0>
	}
	finish { diffuse 1 }
}

sphere {
	<4,-2,105>, 1.5
	pigment {
		color rgb <0.15,0.15,0.15>
	}
    	finish { diffuse 1 }
}

sphere {
	<-4,-2,105>, 1.5
	pigment {
		color rgb <0.15,0.15,0.15>
	}
        finish { diffuse 1 }
}

sphere {
	<0,-5,104>, 2.5
	pigment {
		color rgb <0.35,0.15,0.15>
	}
	finish { diffuse 1 }
}

sphere {
	<-6,-9,105>, 0.5
	pigment {
		color rgb <0,0,0>
	}
}

sphere {
	<6,-9,105>, 0.5
	pigment {
		color rgb <0,0,0>
	}
}

sphere {
	<0,-11,105>, 0.5
	pigment {
		color rgb <0,0,0>
	}
}

light_source {
	<10,0,50>
}

light_source {
	<-20,70,50>
}

plane {
	<-1,0,2>, 150
	pigment {
		color rgb <0.82,0.62,0.08>
	}
}

triangle {
	<0,0,110>,
	<5,-60,100>,
	<0,60,100>
	pigment {
		image_map { ppm "johan.ppm" }
	}
	finish { diffuse 1 reflection 0 }
}
