// earth.pov
//
// A file with a the earth. This scene is ripped from a movie so it has been
// automatically generated. 
//
// Tracer options: -q -z 1 -w 1 -h 1 -x 240

camera
{
  location <630.637695, 0, 812.560913>
  sky <0, 1, 0>
  look_at <437.658844, 0, 899.141113>
}

light_source { <0, 0, 0> }

triangle_point
{
  <10000, -10000, -10000>,
  <0, 20000, 0>,
  <-20000, 0, 0>
  pigment { image_map { ppm "stars.ppm" } }
  finish { diffuse 0.500000 reflection 0 }
}

triangle_point
{
  <-10000, 10000, -10000>,
  <0, -20000, 0>,
  <20000, 0, 0>
  pigment { image_map { ppm "stars.ppm" } }
  finish { diffuse 0.500000 reflection 0 }
}

triangle_point
{
  <-10000, -10000, -10000>,
  <0, 20000, 0>,
  <0, 0, 20000>
  pigment { image_map { ppm "stars.ppm" } }
  finish { diffuse 0.500000 reflection 0 }
}

triangle_point
{
  <-10000, 10000, 10000>,
  <0, -20000, 0>,
  <0, 0, -20000>
  pigment { image_map { ppm "stars.ppm" } }
  finish { diffuse 0.500000 reflection 0 }
}

triangle_point
{
  <-10000, -10000, 10000>,
  <0, 20000, 0>,
  <20000, 0, 0>
  pigment { image_map { ppm "stars.ppm" } }
  finish { diffuse 0.500000 reflection 0 }
}

triangle_point
{
  <10000, 10000, 10000>,
  <0, -20000, 0>,
  <-20000, 0, 0>
  pigment { image_map { ppm "stars.ppm" } }
  finish { diffuse 0.500000 reflection 0 }
}

triangle_point
{
  <10000, -10000, 10000>,
  <0, 20000, 0>,
  <0, 0, -20000>
  pigment { image_map { ppm "stars.ppm" } }
  finish { diffuse 0.500000 reflection 0 }
}

triangle_point
{
  <10000, 10000, -10000>,
  <0, -20000, 0>,
  <0, 0, 20000>
  pigment { image_map { ppm "stars.ppm" } }
  finish { diffuse 0.500000 reflection 0 }
}


sphere
{
  <437.658844, 0, 899.141113>, 63.779999
  pole <0, 1, 0>
  equator <1, 0, 0>
  pigment { image_map { ppm "earthmap.ppm" } }
  finish { diffuse 0.600000 reflection 0 }
}
