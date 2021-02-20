// basic.pov
//
// Shows the basic objects: sphere triangle and plane. 
//
// Tracer options: -q -z 1 -w 1 -h 1 -x 240

camera
{
  location <0, 3, -10>
  sky <0, 1, 0>
  look_at <0, 0, 0>
}

light_source
{
  <0, 3, -10>
}

sphere
{
  <-2, 0, 0>, 2
  pole <0, 1, 0>
  equator <0, 0, 1>
  pigment { color rgb <0.5, 0.5, 0> }
  finish { diffuse 1 reflection 0 } 
}

triangle
{
  <0, 2, 0>, <4, 2, 0>, <2, -2, 0>
  pigment { color rgb <0, 0.5, 0.5> }
  finish { diffuse 1 reflection 0 }
}

plane_point
{
  <0, 0, 0>, <0, 1, 0>
  pigment { color rgb <0.5, 0, 0.5> }
  finish { diffuse 1 reflection 0 }
}
