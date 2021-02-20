// large.pov
//
// This is a file with quite many objects in the scene and can be used to
// measure the scalability of a tracer; ie how good the tracer can handle
// larger scenes (a tracer that traces a 10 object scene may not perform
// equally good on a 1000 object scene). The file consists of 488 spheres
// and 512 triangles and one plane. It has been automatically generated.
//
// Tracer options: -z 2 -w 1 -h 1 -x 120 -t

camera {
	location <-450, -850, 120>
	sky <0,0,1>
	look_at <0,0,50>
}

light_source { <-1000,-700,1200> }

//light_source { <0, 0, -48> }

plane { <0, 0, 1>, -700 
	pigment {
		color rgb <0.82,0.62,0.08>
	}
	finish { reflection 0.4 }
}

sphere { <0, 0, -300>, 250
        pigment { image_map { ppm "web.ppm" }
	}
	finish { reflection 0.7 }
}

sphere { <3500, 5500, 50>, 1100
        pigment { image_map { ppm "water.ppm" } }
}

sphere { <1000, 4500, -350>, 2000
        pigment { image_map { ppm "water.ppm" } }
	finish { reflection 0.8 }
}

sphere { <0, 0, 0>, 35
	pole <0, 0, 1>
	equator <0, 1, 0>
        pigment { color rgb <0.95, 0.90, 0.4> }
	finish { reflection 1 }
}





sphere { <434.00, 600.00, -250.00>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <462.00, 600.00, -250.00>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <378.00, 600.00, -250.00>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <462.00, 600.00, -194.00>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <362.18, 602.91, -247.82>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <423.54, 646.71, -246.95>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <399.86, 683.82, -246.51>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <570.25, 609.96, -139.20>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <400.99, 608.71, -243.47>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <337.95, 698.24, -240.85>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <405.99, 694.70, -239.55>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <667.48, 628.56, -87.97>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <406.44, 617.40, -236.95>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <435.19, 708.36, -231.73>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <393.70, 612.28, -229.12>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <747.19, 653.40, -42.49>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <358.31, 628.95, -228.29>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <454.00, 668.00, -219.60>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <368.38, 590.72, -215.26>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <804.03, 681.21, -4.73>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <435.17, 643.33, -217.51>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <343.85, 613.36, -204.51>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <341.14, 670.33, -198.01>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <834.18, 708.36, 23.69>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <351.87, 660.49, -204.63>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <400.68, 593.45, -186.48>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <323.93, 702.23, -177.41>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <835.64, 731.31, 41.54>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <417.45, 680.40, -189.70>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <471.81, 626.13, -165.58>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <324.29, 626.75, -153.52>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <808.29, 747.05, 48.07>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <388.61, 703.00, -172.75>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <366.12, 682.09, -141.85>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <342.07, 585.07, -126.40>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <753.98, 753.53, 42.99>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <372.35, 728.23, -153.83>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <367.58, 711.13, -115.36>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <369.47, 655.14, -96.12>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <676.34, 749.91, 26.52>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <428.99, 756.02, -132.98>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <472.26, 687.21, -86.18>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <394.47, 705.91, -62.77>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <580.58, 736.65, -0.64>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <348.39, 786.30, -110.28>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <398.92, 631.78, -54.39>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <406.10, 642.43, -26.44>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <473.12, 715.49, -37.31>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <429.58, 818.98, -85.77>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <344.60, 594.56, -20.07>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <399.27, 583.42, 12.77>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <361.15, 689.19, -81.92>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <371.35, 853.97, -59.52>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <455.25, 608.93, 16.67>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <376.96, 639.24, 54.77>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <252.20, 661.19, -132.56>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <389.74, 891.19, -31.61>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <433.58, 662.01, 55.75>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <348.97, 705.50, 99.43>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <153.55, 635.15, -187.04>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <416.52, 930.53, -2.10>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <337.82, 706.18, 97.06>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <327.57, 658.26, 146.64>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <71.83, 614.48, -243.02>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <352.33, 971.89, 28.92>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <425.25, 701.82, 140.48>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <322.15, 585.88, 196.27>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <12.50, 601.86, -298.09>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <435.31, 1015.15, 61.36>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <460.96, 652.85, 185.91>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <335.09, 623.73, 248.18>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-20.44, 598.96, -349.90>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <357.60, 1060.20, 95.15>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <349.00, 603.18, 233.20>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <360.71, 701.02, 302.23>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-24.80, 606.15, -396.21>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <407.51, 1106.91, 130.18>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <390.18, 597.38, 282.25>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <387.77, 673.20, 358.29>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-0.29, 622.49, -435.03>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <399.88, 1155.16, 166.37>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <473.86, 640.64, 332.92>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <404.41, 592.30, 416.19>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <51.47, 645.84, -464.69>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <363.02, 1204.82, 203.62>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <375.22, 694.16, 385.07>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <403.32, 609.62, 475.79>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <126.98, 673.17, -483.92>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <433.68, 1255.76, 241.82>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <359.28, 709.94, 438.55>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <384.98, 692.77, 536.92>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <221.20, 700.88, -491.89>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <349.71, 1307.84, 280.88>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <468.87, 673.82, 493.23>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <357.44, 686.23, 599.41>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <327.81, 725.37, -488.26>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <422.64, 1360.92, 320.69>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <409.55, 618.20, 548.97>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <332.78, 602.24, 663.10>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <439.66, 743.43, -473.18>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <381.90, 1414.85, 361.14>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <340.69, 592.97, 605.59>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <321.81, 597.88, 727.82>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <549.25, 752.70, -447.30>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <378.63, 1469.49, 402.12>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <447.30, 620.76, 662.97>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <329.35, 681.31, 793.39>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <649.24, 751.97, -411.74>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <424.96, 1524.70, 443.52>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <442.94, 676.64, 720.93>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <352.09, 696.49, 859.64>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <732.93, 741.34, -368.02>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <349.01, 1580.32, 485.24>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <339.33, 710.49, 779.33>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <380.05, 615.03, 926.38>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <794.70, 722.20, -318.03>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <432.56, 1636.20, 527.15>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <414.85, 691.95, 838.01>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <400.97, 589.28, 993.44>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <830.41, 697.04, -263.91>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <365.64, 1692.19, 569.14>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <466.60, 637.64, 896.80>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <405.68, 667.40, 1060.63>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <837.68, 669.15, -207.98>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <396.52, 1748.15, 611.11>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <355.54, 596.29, 955.56>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <392.10, 703.28, 1127.78>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <816.00, 642.19, -152.66>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <410.63, 1803.92, 652.94>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <380.06, 604.97, 1014.12>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <366.19, 629.82, 1194.70>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <766.85, 619.66, -100.32>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <355.62, 1859.35, 694.51>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <474.28, 655.91, 1072.32>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <339.33, 584.41, 1261.22>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <693.50, 604.52, -53.21>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <435.58, 1914.29, 735.72>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <385.05, 703.41, 1130.01>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <323.28, 651.98, 1327.15>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <600.89, 598.75, -13.35>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <353.86, 1968.60, 776.45>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <352.11, 704.87, 1187.03>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <325.10, 706.16, 1392.32>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <495.21, 603.09, 17.53>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <413.64, 2022.12, 816.59>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <463.96, 658.97, 1243.22>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <343.98, 645.62, 1456.54>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <383.55, 616.99, 38.12>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <393.13, 2074.71, 856.04>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <420.09, 606.89, 1298.45>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <371.64, 583.58, 1519.66>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <273.39, 638.62, 47.52>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <368.42, 2126.24, 894.68>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <338.37, 595.35, 1352.55>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <395.95, 636.08, 1581.49>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <172.13, 665.16, 45.34>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <431.19, 2176.56, 932.42>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <438.36, 634.69, 1405.39>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <406.24, 704.92, 1641.87>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <86.54, 693.14, 31.67>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <348.57, 2225.53, 969.15>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <451.41, 689.63, 1456.81>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <398.01, 661.36, 1700.64>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <22.36, 718.90, 7.09>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <427.08, 2273.03, 1004.77>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <342.46, 710.89, 1506.68>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <374.85, 586.86, 1757.64>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-16.10, 739.08, -27.33>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <375.44, 2318.93, 1039.20>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <404.23, 679.40, 1554.87>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <346.94, 620.76, 1812.71>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-26.26, 751.04, -70.13>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <385.23, 2363.10, 1072.32>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <470.76, 623.41, 1601.25>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <326.51, 699.65, 1865.72>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-7.45, 753.22, -119.45>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <420.13, 2405.42, 1104.06>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <363.30, 593.13, 1645.69>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <322.52, 675.99, 1916.50>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <39.08, 745.33, -173.18>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <350.67, 2445.78, 1134.33>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <370.56, 615.73, 1688.07>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <336.73, 594.03, 1964.94>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <110.20, 728.41, -229.01>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <434.55, 2484.07, 1163.05>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <473.04, 670.93, 1728.28>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <362.90, 607.06, 2010.89>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <201.15, 704.66, -284.54>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <360.57, 2520.19, 1190.14>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <395.40, 709.23, 1766.20>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <389.55, 690.71, 2054.23>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <305.83, 677.19, -337.38>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <403.20, 2554.04, 1215.53>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <346.24, 696.26, 1801.74>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <405.00, 688.53, 2094.85>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <417.23, 649.58, -385.26>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <404.29, 2585.53, 1239.15>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <457.64, 643.66, 1834.81>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <402.46, 604.60, 2132.64>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <527.87, 625.46, -426.12>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <359.79, 2614.57, 1260.93>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <430.29, 598.62, 1865.30>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <383.05, 595.89, 2167.49>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <630.35, 607.96, -458.21>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <434.79, 2641.09, 1280.82>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <337.68, 601.52, 1893.15>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <355.28, 678.69, 2199.31>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <717.78, 599.38, -480.14>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <351.04, 2665.01, 1298.76>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <428.63, 649.78, 1918.26>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <331.34, 698.14, 2228.02>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <784.32, 600.83, -490.98>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <419.25, 2686.28, 1314.71>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <458.78, 700.10, 1940.59>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <321.73, 617.86, 2253.53>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <825.50, 612.13, -490.25>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <386.35, 2704.82, 1328.62>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <347.12, 707.34, 1960.06>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <330.66, 588.00, 2275.78>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <838.55, 631.80, -477.99>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <374.40, 2720.60, 1340.45>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <393.65, 665.02, 1976.63>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <354.21, 664.40, 2294.72>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <822.61, 657.27, -454.73>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <427.74, 2733.56, 1350.17>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <473.36, 611.09, 1990.24>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <382.06, 704.18, 2310.28>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <778.75, 685.21, -421.46>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <348.48, 2743.69, 1357.76>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <372.09, 593.92, 2000.87>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <401.99, 632.93, 2322.42>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <709.89, 711.97, -379.62>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <430.68, 2750.94, 1363.20>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <361.93, 628.92, 2008.48>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <405.25, 583.91, 2331.12>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <620.67, 734.06, -331.00>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <369.38, 2755.29, 1366.47>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <470.17, 684.69, 2013.06>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <390.42, 648.80, 2336.35>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <517.06, 748.58, -277.70>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <392.00, 2756.75, 1367.56>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <406.00, 711.21, 2014.58>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <364.00, 706.24, 2338.10>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <406.00, 753.64, -222.00>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <414.62, 2755.29, 1366.47>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <341.83, 684.69, 2013.06>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <337.58, 648.80, 2336.35>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <294.94, 748.58, -166.30>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <353.32, 2750.94, 1363.20>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <450.07, 628.92, 2008.48>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <322.75, 583.91, 2331.12>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <191.33, 734.06, -113.00>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <435.52, 2743.69, 1357.76>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <439.91, 593.92, 2000.87>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <326.01, 632.93, 2322.42>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <102.11, 711.97, -64.38>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <356.26, 2733.56, 1350.17>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <338.64, 611.09, 1990.24>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <345.94, 704.18, 2310.28>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <33.25, 685.21, -22.54>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <409.60, 2720.60, 1340.45>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <418.35, 665.02, 1976.63>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <373.79, 664.40, 2294.72>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-10.61, 657.27, 10.73>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <397.65, 2704.82, 1328.62>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <464.88, 707.34, 1960.06>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <397.34, 588.00, 2275.78>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-26.55, 631.80, 33.99>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <364.75, 2686.28, 1314.71>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <353.22, 700.10, 1940.59>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <406.27, 617.86, 2253.53>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-13.50, 612.13, 46.25>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <432.96, 2665.01, 1298.76>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <383.37, 649.78, 1918.26>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <396.66, 698.14, 2228.02>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <27.68, 600.83, 46.98>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <349.21, 2641.09, 1280.82>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <474.32, 601.52, 1893.15>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <372.72, 678.69, 2199.31>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <94.22, 599.38, 36.14>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <424.21, 2614.57, 1260.93>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <381.71, 598.62, 1865.30>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <344.95, 595.89, 2167.49>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <181.65, 607.96, 14.21>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <379.71, 2585.53, 1239.15>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <354.36, 643.66, 1834.81>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <325.54, 604.60, 2132.64>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <284.13, 625.46, -17.88>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <380.80, 2554.04, 1215.53>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <465.76, 696.26, 1801.74>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <323.00, 688.53, 2094.85>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <394.77, 649.58, -58.74>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <423.43, 2520.19, 1190.14>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <416.60, 709.23, 1766.20>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <338.45, 690.71, 2054.23>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <506.17, 677.19, -106.62>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <349.45, 2484.07, 1163.05>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <338.96, 670.93, 1728.28>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <365.10, 607.06, 2010.89>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <610.85, 704.66, -159.46>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <433.33, 2445.78, 1134.33>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <441.44, 615.73, 1688.07>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <391.27, 594.03, 1964.94>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <701.80, 728.41, -214.99>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <363.87, 2405.42, 1104.06>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <448.70, 593.13, 1645.69>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <405.48, 675.99, 1916.50>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <772.92, 745.33, -270.82>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <398.77, 2363.10, 1072.32>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <341.24, 623.41, 1601.25>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <401.49, 699.65, 1865.72>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <819.45, 753.22, -324.55>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <408.56, 2318.93, 1039.20>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <407.77, 679.40, 1554.87>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <381.06, 620.76, 1812.71>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <838.26, 751.04, -373.87>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <356.92, 2273.03, 1004.77>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <469.54, 710.89, 1506.68>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <353.15, 586.86, 1757.64>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <828.10, 739.08, -416.67>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <435.43, 2225.53, 969.15>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <360.59, 689.63, 1456.81>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <329.99, 661.36, 1700.64>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <789.64, 718.90, -451.09>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <352.81, 2176.56, 932.42>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <373.64, 634.69, 1405.39>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <321.76, 704.92, 1641.87>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <725.46, 693.14, -475.67>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <415.58, 2126.24, 894.68>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <473.63, 595.35, 1352.55>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <332.05, 636.08, 1581.49>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <639.87, 665.16, -489.34>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <390.87, 2074.71, 856.04>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <391.91, 606.89, 1298.45>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <356.36, 583.58, 1519.66>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <538.61, 638.62, -491.52>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <370.36, 2022.12, 816.59>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <348.04, 658.97, 1243.22>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <384.02, 645.62, 1456.54>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <428.45, 616.99, -482.12>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <430.14, 1968.60, 776.45>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <459.89, 704.87, 1187.03>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <402.90, 706.16, 1392.32>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <316.79, 603.09, -461.53>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <348.42, 1914.29, 735.72>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <426.95, 703.41, 1130.01>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <404.72, 651.98, 1327.15>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <211.11, 598.75, -430.65>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <428.38, 1859.35, 694.51>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <337.72, 655.91, 1072.32>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <388.67, 584.41, 1261.22>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <118.50, 604.52, -390.79>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <373.37, 1803.92, 652.94>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <431.94, 604.97, 1014.12>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <361.81, 629.82, 1194.70>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <45.15, 619.66, -343.68>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <387.48, 1748.15, 611.11>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <456.46, 596.29, 955.56>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <335.90, 703.28, 1127.78>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-4.00, 642.19, -291.34>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <418.36, 1692.19, 569.14>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <345.40, 637.64, 896.80>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <322.32, 667.40, 1060.63>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-25.68, 669.15, -236.02>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <351.44, 1636.20, 527.15>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <397.15, 691.95, 838.01>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <327.03, 589.28, 993.44>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-18.41, 697.04, -180.09>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <434.99, 1580.32, 485.24>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <472.67, 710.49, 779.33>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <347.95, 615.03, 926.38>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <17.30, 722.20, -125.97>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <359.04, 1524.70, 443.52>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <369.06, 676.64, 720.93>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <375.91, 696.49, 859.64>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <79.07, 741.34, -75.98>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <405.37, 1469.49, 402.12>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <364.70, 620.76, 662.97>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <398.65, 681.31, 793.39>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <162.76, 751.97, -32.26>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <402.10, 1414.85, 361.14>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <471.31, 592.97, 605.59>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <406.19, 597.88, 727.82>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <262.75, 752.70, 3.30>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <361.36, 1360.92, 320.69>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <402.45, 618.20, 548.97>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <395.22, 602.24, 663.10>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <372.34, 743.43, 29.18>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <434.29, 1307.84, 280.88>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <343.13, 673.82, 493.23>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <370.56, 686.23, 599.41>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <484.19, 725.37, 44.26>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <350.32, 1255.76, 241.82>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <452.72, 709.94, 438.55>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <343.02, 692.77, 536.92>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <590.80, 700.88, 47.89>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <420.98, 1204.82, 203.62>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <436.78, 694.16, 385.07>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <324.68, 609.62, 475.79>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <685.02, 673.17, 39.92>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <384.12, 1155.16, 166.37>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <338.14, 640.64, 332.92>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <323.59, 592.30, 416.19>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <760.53, 645.84, 20.69>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <376.49, 1106.91, 130.18>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <421.82, 597.38, 282.25>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <340.23, 673.20, 358.29>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <812.29, 622.49, -8.97>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <426.40, 1060.20, 95.15>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <463.00, 603.18, 233.20>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <367.29, 701.02, 302.23>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <836.80, 606.15, -47.79>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <348.69, 1015.15, 61.36>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <351.04, 652.85, 185.91>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <392.91, 623.73, 248.18>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <832.44, 598.96, -94.10>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <431.67, 971.89, 28.92>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <386.75, 701.82, 140.48>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <405.85, 585.88, 196.27>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <799.50, 601.86, -145.91>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <367.48, 930.53, -2.10>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <474.18, 706.18, 97.06>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <400.43, 658.26, 146.64>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <740.17, 614.48, -200.98>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <394.26, 891.19, -31.61>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <378.42, 662.01, 55.75>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <379.03, 705.50, 99.43>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <658.45, 635.15, -256.96>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <412.65, 853.97, -59.52>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <356.75, 608.93, 16.67>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <351.04, 639.24, 54.77>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <559.80, 661.19, -311.44>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <354.42, 818.98, -85.77>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <467.40, 594.56, -20.07>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <328.73, 583.42, 12.77>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <450.85, 689.19, -362.08>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <435.61, 786.30, -110.28>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <413.08, 631.78, -54.39>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <321.90, 642.43, -26.44>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <338.88, 715.49, -406.69>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <355.01, 756.02, -132.98>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <339.74, 687.21, -86.18>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <333.53, 705.91, -62.77>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <231.42, 736.65, -443.36>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <411.65, 728.23, -153.83>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <444.42, 711.13, -115.36>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <358.53, 655.14, -96.12>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <135.66, 749.91, -470.52>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <395.39, 703.00, -172.75>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <445.88, 682.09, -141.85>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <385.93, 585.07, -126.40>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <58.02, 753.53, -486.99>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <366.55, 680.40, -189.70>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <340.19, 626.13, -165.58>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <403.71, 626.75, -153.52>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <3.71, 747.05, -492.07>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <432.13, 660.49, -204.63>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <411.32, 593.45, -186.48>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <404.07, 702.23, -177.41>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-23.64, 731.31, -485.54>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <348.83, 643.33, -217.51>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <468.15, 613.36, -204.51>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <386.86, 670.33, -198.01>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <-22.18, 708.36, -467.69>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <425.69, 628.95, -228.29>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <358.00, 668.00, -219.60>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <359.62, 590.72, -215.26>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <7.97, 681.21, -439.27>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <377.56, 617.40, -236.95>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <376.81, 708.36, -231.73>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <334.30, 612.28, -229.12>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <64.81, 653.40, -401.51>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <383.01, 608.71, -243.47>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <474.05, 698.24, -240.85>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <322.01, 694.70, -239.55>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <144.52, 628.56, -356.03>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <421.82, 602.91, -247.82>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <388.46, 646.71, -246.95>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <328.14, 683.82, -246.51>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <241.75, 609.96, -304.80>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <350.00, 600.00, -250.00>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <350.00, 600.00, -250.00>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <350.00, 600.00, -250.00>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

sphere { <350.00, 600.00, -250.00>, 19
	pigment { color rgb <0.6, 0.8, 0.6> } finish { reflection 0.6} }

triangle{<7.73221, 0.000203369, -7.73221>,<7.73221, 36.4502, -7.73125>,<10.9349, 36.45, 0.000958691> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<10.9349, 36.45, 0.000958691>,<10.9349, 0, 0>,<7.73221, 0.000203369, -7.73221> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<10.9349, 0, 0>,<10.9349, 36.45, 0.000958691>,<7.73221, 36.4498, 7.73317> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.73221, 36.4498, 7.73317>,<7.73221, -0.000203369, 7.73221>,<10.9349, 0, 0> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.73221, -0.000203369, 7.73221>,<7.73221, 36.4498, 7.73317>,<0, 36.4497, 10.9359> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0, 36.4497, 10.9359>,<0, -0.000287605, 10.9349>,<7.73221, -0.000203369, 7.73221> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0, -0.000287605, 10.9349>,<0, 36.4497, 10.9359>,<-7.73221, 36.4498, 7.73317> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.73221, 36.4498, 7.73317>,<-7.73221, -0.000203369, 7.73221>,<0, -0.000287605, 10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.73221, -0.000203369, 7.73221>,<-7.73221, 36.4498, 7.73317>,<-10.9349, 36.45, 0.000958691> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-10.9349, 36.45, 0.000958691>,<-10.9349, 0, 0>,<-7.73221, -0.000203369, 7.73221> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-10.9349, 0, 0>,<-10.9349, 36.45, 0.000958691>,<-7.73221, 36.4502, -7.73125> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.73221, 36.4502, -7.73125>,<-7.73221, 0.000203369, -7.73221>,<-10.9349, 0, 0> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.73221, 0.000203369, -7.73221>,<-7.73221, 36.4502, -7.73125>,<0, 36.4503, -10.9339> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0, 36.4503, -10.9339>,<0, 0.000287605, -10.9349>,<-7.73221, 0.000203369, -7.73221> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0, 0.000287605, -10.9349>,<0, 36.4503, -10.9339>,<7.73221, 36.4502, -7.73125> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.73221, 36.4502, -7.73125>,<7.73221, 0.000203369, -7.73221>,<0, 0.000287605, -10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.73221, 36.4502, -7.73125>,<5.35816, 65.3553, -17.5717>,<8.25551, 67.7949, -11.061> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<8.25551, 67.7949, -11.061>,<10.9349, 36.45, 0.000958691>,<7.73221, 36.4502, -7.73125> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<10.9349, 36.45, 0.000958691>,<8.25551, 67.7949, -11.061>,<5.3947, 69.9785, -4.44406> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<5.3947, 69.9785, -4.44406>,<7.73221, 36.4498, 7.73317>,<10.9349, 36.45, 0.000958691> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.73221, 36.4498, 7.73317>,<5.3947, 69.9785, -4.44406>,<-1.54868, 70.627, -1.59717> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-1.54868, 70.627, -1.59717>,<0, 36.4497, 10.9359>,<7.73221, 36.4498, 7.73317> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0, 36.4497, 10.9359>,<-1.54868, 70.627, -1.59717>,<-8.5072, 69.3606, -4.18774> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.5072, 69.3606, -4.18774>,<-7.73221, 36.4498, 7.73317>,<0, 36.4497, 10.9359> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.73221, 36.4498, 7.73317>,<-8.5072, 69.3606, -4.18774>,<-11.4045, 66.921, -10.6985> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-11.4045, 66.921, -10.6985>,<-10.9349, 36.45, 0.000958691>,<-7.73221, 36.4498, 7.73317> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-10.9349, 36.45, 0.000958691>,<-11.4045, 66.921, -10.6985>,<-8.54374, 64.7373, -17.3154> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.54374, 64.7373, -17.3154>,<-7.73221, 36.4502, -7.73125>,<-10.9349, 36.45, 0.000958691> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.73221, 36.4502, -7.73125>,<-8.54374, 64.7373, -17.3154>,<-1.60036, 64.0888, -20.1623> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-1.60036, 64.0888, -20.1623>,<0, 36.4503, -10.9339>,<-7.73221, 36.4502, -7.73125> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0, 36.4503, -10.9339>,<-1.60036, 64.0888, -20.1623>,<5.35816, 65.3553, -17.5717> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<5.35816, 65.3553, -17.5717>,<7.73221, 36.4502, -7.73125>,<0, 36.4503, -10.9339> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<5.35816, 65.3553, -17.5717>,<4.45359, 87.8144, -33.136>,<7.36376, 91.3058, -28.1063> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.36376, 91.3058, -28.1063>,<8.25551, 67.7949, -11.061>,<5.35816, 65.3553, -17.5717> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<8.25551, 67.7949, -11.061>,<7.36376, 91.3058, -28.1063>,<5.09235, 94.9616, -22.8688> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<5.09235, 94.9616, -22.8688>,<5.3947, 69.9785, -4.44406>,<8.25551, 67.7949, -11.061> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<5.3947, 69.9785, -4.44406>,<5.09235, 94.9616, -22.8688>,<-1.03027, 96.6404, -20.4916> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-1.03027, 96.6404, -20.4916>,<-1.54868, 70.627, -1.59717>,<5.3947, 69.9785, -4.44406> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-1.54868, 70.627, -1.59717>,<-1.03027, 96.6404, -20.4916>,<-7.41747, 95.3588, -22.367> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.41747, 95.3588, -22.367>,<-8.5072, 69.3606, -4.18774>,<-1.54868, 70.627, -1.59717> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.5072, 69.3606, -4.18774>,<-7.41747, 95.3588, -22.367>,<-10.3276, 91.8675, -27.3967> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-10.3276, 91.8675, -27.3967>,<-11.4045, 66.921, -10.6985>,<-8.5072, 69.3606, -4.18774> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-11.4045, 66.921, -10.6985>,<-10.3276, 91.8675, -27.3967>,<-8.05623, 88.2117, -32.6342> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.05623, 88.2117, -32.6342>,<-8.54374, 64.7373, -17.3154>,<-11.4045, 66.921, -10.6985> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.54374, 64.7373, -17.3154>,<-8.05623, 88.2117, -32.6342>,<-1.93361, 86.5329, -35.0114> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-1.93361, 86.5329, -35.0114>,<-1.60036, 64.0888, -20.1623>,<-8.54374, 64.7373, -17.3154> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-1.60036, 64.0888, -20.1623>,<-1.93361, 86.5329, -35.0114>,<4.45359, 87.8144, -33.136> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<4.45359, 87.8144, -33.136>,<5.35816, 65.3553, -17.5717>,<-1.60036, 64.0888, -20.1623> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<4.45359, 87.8144, -33.136>,<4.90653, 104.06, -51.6935>,<7.92295, 107.947, -48.086> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.92295, 107.947, -48.086>,<7.36376, 91.3058, -28.1063>,<4.45359, 87.8144, -33.136> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.36376, 91.3058, -28.1063>,<7.92295, 107.947, -48.086>,<6.31399, 112.448, -44.2938> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<6.31399, 112.448, -44.2938>,<5.09235, 94.9616, -22.8688>,<7.36376, 91.3058, -28.1063> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<5.09235, 94.9616, -22.8688>,<6.31399, 112.448, -44.2938>,<1.02195, 114.925, -42.5384> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<1.02195, 114.925, -42.5384>,<-1.03027, 96.6404, -20.4916>,<5.09235, 94.9616, -22.8688> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-1.03027, 96.6404, -20.4916>,<1.02195, 114.925, -42.5384>,<-4.85305, 113.929, -43.848> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-4.85305, 113.929, -43.848>,<-7.41747, 95.3588, -22.367>,<-1.03027, 96.6404, -20.4916> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.41747, 95.3588, -22.367>,<-4.85305, 113.929, -43.848>,<-7.86947, 110.041, -47.4555> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.86947, 110.041, -47.4555>,<-10.3276, 91.8675, -27.3967>,<-7.41747, 95.3588, -22.367> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-10.3276, 91.8675, -27.3967>,<-7.86947, 110.041, -47.4555>,<-6.26051, 105.541, -51.2477> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-6.26051, 105.541, -51.2477>,<-8.05623, 88.2117, -32.6342>,<-10.3276, 91.8675, -27.3967> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.05623, 88.2117, -32.6342>,<-6.26051, 105.541, -51.2477>,<-0.968473, 103.063, -53.0031> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-0.968473, 103.063, -53.0031>,<-1.93361, 86.5329, -35.0114>,<-8.05623, 88.2117, -32.6342> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-1.93361, 86.5329, -35.0114>,<-0.968473, 103.063, -53.0031>,<4.90653, 104.06, -51.6935> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<4.90653, 104.06, -51.6935>,<4.45359, 87.8144, -33.136>,<-1.93361, 86.5329, -35.0114> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<4.90653, 104.06, -51.6935>,<2.5861, 114.068, -72.0832>,<5.72553, 118.193, -70.2717> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<5.72553, 118.193, -70.2717>,<7.92295, 107.947, -48.086>,<4.90653, 104.06, -51.6935> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.92295, 107.947, -48.086>,<5.72553, 118.193, -70.2717>,<4.76697, 123.035, -67.8652> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<4.76697, 123.035, -67.8652>,<6.31399, 112.448, -44.2938>,<7.92295, 107.947, -48.086> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<6.31399, 112.448, -44.2938>,<4.76697, 123.035, -67.8652>,<0.271742, 125.757, -66.2732> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.271742, 125.757, -66.2732>,<1.02195, 114.925, -42.5384>,<6.31399, 112.448, -44.2938> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<1.02195, 114.925, -42.5384>,<0.271742, 125.757, -66.2732>,<-5.1268, 124.765, -66.4284> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.1268, 124.765, -66.4284>,<-4.85305, 113.929, -43.848>,<1.02195, 114.925, -42.5384> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-4.85305, 113.929, -43.848>,<-5.1268, 124.765, -66.4284>,<-8.26623, 120.641, -68.2399> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.26623, 120.641, -68.2399>,<-7.86947, 110.041, -47.4555>,<-4.85305, 113.929, -43.848> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.86947, 110.041, -47.4555>,<-8.26623, 120.641, -68.2399>,<-7.30766, 115.799, -70.6464> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.30766, 115.799, -70.6464>,<-6.26051, 105.541, -51.2477>,<-7.86947, 110.041, -47.4555> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-6.26051, 105.541, -51.2477>,<-7.30766, 115.799, -70.6464>,<-2.81244, 113.077, -72.2384> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-2.81244, 113.077, -72.2384>,<-0.968473, 103.063, -53.0031>,<-6.26051, 105.541, -51.2477> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-0.968473, 103.063, -53.0031>,<-2.81244, 113.077, -72.2384>,<2.5861, 114.068, -72.0832> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<2.5861, 114.068, -72.0832>,<4.90653, 104.06, -51.6935>,<-0.968473, 103.063, -53.0031> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<2.5861, 114.068, -72.0832>,<-1.70772, 113.317, -90.8786>,<0.984138, 117.411, -91.5233> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.984138, 117.411, -91.5233>,<5.72553, 118.193, -70.2717>,<2.5861, 114.068, -72.0832> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<5.72553, 118.193, -70.2717>,<0.984138, 117.411, -91.5233>,<0.0289025, 122.26, -91.5084> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.0289025, 122.26, -91.5084>,<4.76697, 123.035, -67.8652>,<5.72553, 118.193, -70.2717> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<4.76697, 123.035, -67.8652>,<0.0289025, 122.26, -91.5084>,<-4.01402, 125.023, -90.8427> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-4.01402, 125.023, -90.8427>,<0.271742, 125.757, -66.2732>,<4.76697, 123.035, -67.8652> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.271742, 125.757, -66.2732>,<-4.01402, 125.023, -90.8427>,<-8.77625, 124.082, -89.9162> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.77625, 124.082, -89.9162>,<-5.1268, 124.765, -66.4284>,<0.271742, 125.757, -66.2732> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.1268, 124.765, -66.4284>,<-8.77625, 124.082, -89.9162>,<-11.4681, 119.987, -89.2715> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-11.4681, 119.987, -89.2715>,<-8.26623, 120.641, -68.2399>,<-5.1268, 124.765, -66.4284> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.26623, 120.641, -68.2399>,<-11.4681, 119.987, -89.2715>,<-10.5129, 115.139, -89.2863> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-10.5129, 115.139, -89.2863>,<-7.30766, 115.799, -70.6464>,<-8.26623, 120.641, -68.2399> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.30766, 115.799, -70.6464>,<-10.5129, 115.139, -89.2863>,<-6.46995, 112.376, -89.952> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-6.46995, 112.376, -89.952>,<-2.81244, 113.077, -72.2384>,<-7.30766, 115.799, -70.6464> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-2.81244, 113.077, -72.2384>,<-6.46995, 112.376, -89.952>,<-1.70772, 113.317, -90.8786> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-1.70772, 113.317, -90.8786>,<2.5861, 114.068, -72.0832>,<-2.81244, 113.077, -72.2384> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-1.70772, 113.317, -90.8786>,<-8.98759, 107.009, -106.47>,<-6.78839, 110.184, -108.676> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-6.78839, 110.184, -108.676>,<0.984138, 117.411, -91.5233>,<-1.70772, 113.317, -90.8786> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.984138, 117.411, -91.5233>,<-6.78839, 110.184, -108.676>,<-7.72664, 114.329, -109.987> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.72664, 114.329, -109.987>,<0.0289025, 122.26, -91.5084>,<0.984138, 117.411, -91.5233> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.0289025, 122.26, -91.5084>,<-7.72664, 114.329, -109.987>,<-11.2529, 117.017, -109.634> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-11.2529, 117.017, -109.634>,<-4.01402, 125.023, -90.8427>,<0.0289025, 122.26, -91.5084> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-4.01402, 125.023, -90.8427>,<-11.2529, 117.017, -109.634>,<-15.3014, 116.673, -107.825> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-15.3014, 116.673, -107.825>,<-8.77625, 124.082, -89.9162>,<-4.01402, 125.023, -90.8427> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.77625, 124.082, -89.9162>,<-15.3014, 116.673, -107.825>,<-17.5006, 113.498, -105.618> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-17.5006, 113.498, -105.618>,<-11.4681, 119.987, -89.2715>,<-8.77625, 124.082, -89.9162> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-11.4681, 119.987, -89.2715>,<-17.5006, 113.498, -105.618>,<-16.5623, 109.353, -104.308> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-16.5623, 109.353, -104.308>,<-10.5129, 115.139, -89.2863>,<-11.4681, 119.987, -89.2715> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-10.5129, 115.139, -89.2863>,<-16.5623, 109.353, -104.308>,<-13.0361, 106.665, -104.66> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-13.0361, 106.665, -104.66>,<-6.46995, 112.376, -89.952>,<-10.5129, 115.139, -89.2863> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-6.46995, 112.376, -89.952>,<-13.0361, 106.665, -104.66>,<-8.98759, 107.009, -106.47> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.98759, 107.009, -106.47>,<-1.70772, 113.317, -90.8786>,<-6.46995, 112.376, -89.952> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.98759, 107.009, -106.47>,<-16.4165, 95.9646, -114.957>,<-15.1255, 97.7626, -118.292> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-15.1255, 97.7626, -118.292>,<-6.78839, 110.184, -108.676>,<-8.98759, 107.009, -106.47> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-6.78839, 110.184, -108.676>,<-15.1255, 97.7626, -118.292>,<-16.5844, 100.576, -120.737> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-16.5844, 100.576, -120.737>,<-7.72664, 114.329, -109.987>,<-6.78839, 110.184, -108.676> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.72664, 114.329, -109.987>,<-16.5844, 100.576, -120.737>,<-19.9387, 102.757, -120.86> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-19.9387, 102.757, -120.86>,<-11.2529, 117.017, -109.634>,<-7.72664, 114.329, -109.987> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-11.2529, 117.017, -109.634>,<-19.9387, 102.757, -120.86>,<-23.2234, 103.029, -118.588> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-23.2234, 103.029, -118.588>,<-15.3014, 116.673, -107.825>,<-11.2529, 117.017, -109.634> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-15.3014, 116.673, -107.825>,<-23.2234, 103.029, -118.588>,<-24.5144, 101.231, -115.253> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-24.5144, 101.231, -115.253>,<-17.5006, 113.498, -105.618>,<-15.3014, 116.673, -107.825> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-17.5006, 113.498, -105.618>,<-24.5144, 101.231, -115.253>,<-23.0555, 98.4169, -112.808> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-23.0555, 98.4169, -112.808>,<-16.5623, 109.353, -104.308>,<-17.5006, 113.498, -105.618> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-16.5623, 109.353, -104.308>,<-23.0555, 98.4169, -112.808>,<-19.7012, 96.2357, -112.685> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-19.7012, 96.2357, -112.685>,<-13.0361, 106.665, -104.66>,<-16.5623, 109.353, -104.308> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-13.0361, 106.665, -104.66>,<-19.7012, 96.2357, -112.685>,<-16.4165, 95.9646, -114.957> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-16.4165, 95.9646, -114.957>,<-8.98759, 107.009, -106.47>,<-13.0361, 106.665, -104.66> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.000203369, -7.73201, -7.73242>,<36.4502, -7.73105, -7.73242>,<36.4503, -10.9339, -0.000287984> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.4503, -10.9339, -0.000287984>,<0.000287605, -10.9349, -0.00028801>,<0.000203369, -7.73201, -7.73242> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.000287605, -10.9349, -0.00028801>,<36.4503, -10.9339, -0.000287984>,<36.4502, -7.73146, 7.73201> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.4502, -7.73146, 7.73201>,<0.000203369, -7.73242, 7.73201>,<0.000287605, -10.9349, -0.00028801> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.000203369, -7.73242, 7.73201>,<36.4502, -7.73146, 7.73201>,<36.45, 0.000670682, 10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.45, 0.000670682, 10.9349>,<0, -0.00028801, 10.9349>,<0.000203369, -7.73242, 7.73201> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0, -0.00028801, 10.9349>,<36.45, 0.000670682, 10.9349>,<36.4498, 7.73297, 7.73242> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.4498, 7.73297, 7.73242>,<-0.000203369, 7.73201, 7.73242>,<0, -0.00028801, 10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-0.000203369, 7.73201, 7.73242>,<36.4498, 7.73297, 7.73242>,<36.4497, 10.9359, 0.000288035> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.4497, 10.9359, 0.000288035>,<-0.000287605, 10.9349, 0.00028801>,<-0.000203369, 7.73201, 7.73242> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-0.000287605, 10.9349, 0.00028801>,<36.4497, 10.9359, 0.000288035>,<36.4498, 7.73338, -7.73201> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.4498, 7.73338, -7.73201>,<-0.000203369, 7.73242, -7.73201>,<-0.000287605, 10.9349, 0.00028801> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-0.000203369, 7.73242, -7.73201>,<36.4498, 7.73338, -7.73201>,<36.45, 0.0012467, -10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.45, 0.0012467, -10.9349>,<0, 0.00028801, -10.9349>,<-0.000203369, 7.73242, -7.73201> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0, 0.00028801, -10.9349>,<36.45, 0.0012467, -10.9349>,<36.4502, -7.73105, -7.73242> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.4502, -7.73105, -7.73242>,<0.000203369, -7.73201, -7.73242>,<0, 0.00028801, -10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.4502, -7.73105, -7.73242>,<66.6463, -8.80376, -13.5529>,<67.7584, -12.0724, -6.85853> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<67.7584, -12.0724, -6.85853>,<36.4503, -10.9339, -0.000287984>,<36.4502, -7.73105, -7.73242> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.4503, -10.9339, -0.000287984>,<67.7584, -12.0724, -6.85853>,<69.3262, -9.59955, 0.0814037> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<69.3262, -9.59955, 0.0814037>,<36.4502, -7.73146, 7.73201>,<36.4503, -10.9339, -0.000287984> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.4502, -7.73146, 7.73201>,<69.3262, -9.59955, 0.0814037>,<70.4314, -2.83349, 3.20146> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<70.4314, -2.83349, 3.20146>,<36.45, 0.000670682, 10.9349>,<36.4502, -7.73146, 7.73201> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.45, 0.000670682, 10.9349>,<70.4314, -2.83349, 3.20146>,<70.4266, 4.26219, 0.674178> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<70.4266, 4.26219, 0.674178>,<36.4498, 7.73297, 7.73242>,<36.45, 0.000670682, 10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.4498, 7.73297, 7.73242>,<70.4266, 4.26219, 0.674178>,<69.3145, 7.53086, -6.02023> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<69.3145, 7.53086, -6.02023>,<36.4497, 10.9359, 0.000288035>,<36.4498, 7.73297, 7.73242> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.4497, 10.9359, 0.000288035>,<69.3145, 7.53086, -6.02023>,<67.7467, 5.05798, -12.9602> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<67.7467, 5.05798, -12.9602>,<36.4498, 7.73338, -7.73201>,<36.4497, 10.9359, 0.000288035> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.4498, 7.73338, -7.73201>,<67.7467, 5.05798, -12.9602>,<66.6415, -1.70808, -16.0802> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<66.6415, -1.70808, -16.0802>,<36.45, 0.0012467, -10.9349>,<36.4498, 7.73338, -7.73201> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<36.45, 0.0012467, -10.9349>,<66.6415, -1.70808, -16.0802>,<66.6463, -8.80376, -13.5529> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<66.6463, -8.80376, -13.5529>,<36.4502, -7.73105, -7.73242>,<36.45, 0.0012467, -10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<66.6463, -8.80376, -13.5529>,<91.5992, -11.2369, -24.8205>,<93.7916, -14.4348, -19.2597> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<93.7916, -14.4348, -19.2597>,<67.7584, -12.0724, -6.85853>,<66.6463, -8.80376, -13.5529> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<67.7584, -12.0724, -6.85853>,<93.7916, -14.4348, -19.2597>,<96.7486, -12.506, -13.4725> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<96.7486, -12.506, -13.4725>,<69.3262, -9.59955, 0.0814037>,<67.7584, -12.0724, -6.85853> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<69.3262, -9.59955, 0.0814037>,<96.7486, -12.506, -13.4725>,<98.738, -6.58011, -10.849> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<98.738, -6.58011, -10.849>,<70.4314, -2.83349, 3.20146>,<69.3262, -9.59955, 0.0814037> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<70.4314, -2.83349, 3.20146>,<98.738, -6.58011, -10.849>,<98.5945, -0.128603, -12.9259> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<98.5945, -0.128603, -12.9259>,<70.4266, 4.26219, 0.674178>,<70.4314, -2.83349, 3.20146> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<70.4266, 4.26219, 0.674178>,<98.5945, -0.128603, -12.9259>,<96.4021, 3.06928, -18.4867> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<96.4021, 3.06928, -18.4867>,<69.3145, 7.53086, -6.02023>,<70.4266, 4.26219, 0.674178> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<69.3145, 7.53086, -6.02023>,<96.4021, 3.06928, -18.4867>,<93.4451, 1.14046, -24.274> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<93.4451, 1.14046, -24.274>,<67.7467, 5.05798, -12.9602>,<69.3145, 7.53086, -6.02023> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<67.7467, 5.05798, -12.9602>,<93.4451, 1.14046, -24.274>,<91.4557, -4.78541, -26.8974> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<91.4557, -4.78541, -26.8974>,<66.6415, -1.70808, -16.0802>,<67.7467, 5.05798, -12.9602> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<66.6415, -1.70808, -16.0802>,<91.4557, -4.78541, -26.8974>,<91.5992, -11.2369, -24.8205> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<91.5992, -11.2369, -24.8205>,<66.6463, -8.80376, -13.5529>,<66.6415, -1.70808, -16.0802> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<91.5992, -11.2369, -24.8205>,<112.875, -13.5325, -38.6708>,<115.869, -16.1077, -34.0205> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<115.869, -16.1077, -34.0205>,<93.7916, -14.4348, -19.2597>,<91.5992, -11.2369, -24.8205> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<93.7916, -14.4348, -19.2597>,<115.869, -16.1077, -34.0205>,<119.343, -14.0387, -29.4516> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<119.343, -14.0387, -29.4516>,<96.7486, -12.506, -13.4725>,<93.7916, -14.4348, -19.2597> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<96.7486, -12.506, -13.4725>,<119.343, -14.0387, -29.4516>,<121.262, -8.53746, -27.6405> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<121.262, -8.53746, -27.6405>,<98.738, -6.58011, -10.849>,<96.7486, -12.506, -13.4725> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<98.738, -6.58011, -10.849>,<121.262, -8.53746, -27.6405>,<120.501, -2.82648, -29.648> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<120.501, -2.82648, -29.648>,<98.5945, -0.128603, -12.9259>,<98.738, -6.58011, -10.849> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<98.5945, -0.128603, -12.9259>,<120.501, -2.82648, -29.648>,<117.506, -0.251284, -34.2983> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<117.506, -0.251284, -34.2983>,<96.4021, 3.06928, -18.4867>,<98.5945, -0.128603, -12.9259> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<96.4021, 3.06928, -18.4867>,<117.506, -0.251284, -34.2983>,<114.032, -2.32021, -38.8673> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<114.032, -2.32021, -38.8673>,<93.4451, 1.14046, -24.274>,<96.4021, 3.06928, -18.4867> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<93.4451, 1.14046, -24.274>,<114.032, -2.32021, -38.8673>,<112.114, -7.8215, -40.6784> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<112.114, -7.8215, -40.6784>,<91.4557, -4.78541, -26.8974>,<93.4451, 1.14046, -24.274> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<91.4557, -4.78541, -26.8974>,<112.114, -7.8215, -40.6784>,<112.875, -13.5325, -38.6708> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<112.875, -13.5325, -38.6708>,<91.5992, -11.2369, -24.8205>,<91.4557, -4.78541, -26.8974> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<112.875, -13.5325, -38.6708>,<126.941, -15.855, -55.592>,<130.786, -17.9695, -52.2917> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<130.786, -17.9695, -52.2917>,<115.869, -16.1077, -34.0205>,<112.875, -13.5325, -38.6708> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<115.869, -16.1077, -34.0205>,<130.786, -17.9695, -52.2917>,<134.937, -15.9075, -49.3464> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<134.937, -15.9075, -49.3464>,<119.343, -14.0387, -29.4516>,<115.869, -16.1077, -34.0205> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<119.343, -14.0387, -29.4516>,<134.937, -15.9075, -49.3464>,<136.961, -10.8768, -48.4817> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<136.961, -10.8768, -48.4817>,<121.262, -8.53746, -27.6405>,<119.343, -14.0387, -29.4516> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<121.262, -8.53746, -27.6405>,<136.961, -10.8768, -48.4817>,<135.673, -5.8244, -50.2038> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<135.673, -5.8244, -50.2038>,<120.501, -2.82648, -29.648>,<121.262, -8.53746, -27.6405> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<120.501, -2.82648, -29.648>,<135.673, -5.8244, -50.2038>,<131.827, -3.70995, -53.5042> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<131.827, -3.70995, -53.5042>,<117.506, -0.251284, -34.2983>,<120.501, -2.82648, -29.648> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<117.506, -0.251284, -34.2983>,<131.827, -3.70995, -53.5042>,<127.677, -5.77193, -56.4494> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<127.677, -5.77193, -56.4494>,<114.032, -2.32021, -38.8673>,<117.506, -0.251284, -34.2983> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<114.032, -2.32021, -38.8673>,<127.677, -5.77193, -56.4494>,<125.653, -10.8026, -57.3141> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<125.653, -10.8026, -57.3141>,<112.114, -7.8215, -40.6784>,<114.032, -2.32021, -38.8673> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<112.114, -7.8215, -40.6784>,<125.653, -10.8026, -57.3141>,<126.941, -15.855, -55.592> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<126.941, -15.855, -55.592>,<112.875, -13.5325, -38.6708>,<112.114, -7.8215, -40.6784> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<126.941, -15.855, -55.592>,<126.463, -13.1798, -74.7156>,<130.75, -15.6353, -74.8442> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<130.75, -15.6353, -74.8442>,<130.786, -17.9695, -52.2917>,<126.941, -15.855, -55.592> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<130.786, -17.9695, -52.2917>,<130.75, -15.6353, -74.8442>,<135.52, -14.3502, -74.6896> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<135.52, -14.3502, -74.6896>,<134.937, -15.9075, -49.3464>,<130.786, -17.9695, -52.2917> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<134.937, -15.9075, -49.3464>,<135.52, -14.3502, -74.6896>,<137.978, -10.077, -74.3423> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<137.978, -10.077, -74.3423>,<136.961, -10.8768, -48.4817>,<134.937, -15.9075, -49.3464> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<136.961, -10.8768, -48.4817>,<137.978, -10.077, -74.3423>,<136.685, -5.3191, -74.0059> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<136.685, -5.3191, -74.0059>,<135.673, -5.8244, -50.2038>,<136.961, -10.8768, -48.4817> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<135.673, -5.8244, -50.2038>,<136.685, -5.3191, -74.0059>,<132.398, -2.86355, -73.8774> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<132.398, -2.86355, -73.8774>,<131.827, -3.70995, -53.5042>,<135.673, -5.8244, -50.2038> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<131.827, -3.70995, -53.5042>,<132.398, -2.86355, -73.8774>,<127.629, -4.14868, -74.032> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<127.629, -4.14868, -74.032>,<127.677, -5.77193, -56.4494>,<131.827, -3.70995, -53.5042> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<127.677, -5.77193, -56.4494>,<127.629, -4.14868, -74.032>,<125.17, -8.42183, -74.3792> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<125.17, -8.42183, -74.3792>,<125.653, -10.8026, -57.3141>,<127.677, -5.77193, -56.4494> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<125.653, -10.8026, -57.3141>,<125.17, -8.42183, -74.3792>,<126.463, -13.1798, -74.7156> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<126.463, -13.1798, -74.7156>,<126.941, -15.855, -55.592>,<125.653, -10.8026, -57.3141> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<126.463, -13.1798, -74.7156>,<115.728, -10.1997, -86.8905>,<118.638, -12.1432, -89.635> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<118.638, -12.1432, -89.635>,<130.75, -15.6353, -74.8442>,<126.463, -13.1798, -74.7156> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<130.75, -15.6353, -74.8442>,<118.638, -12.1432, -89.635>,<122.035, -10.7266, -92.1326> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<122.035, -10.7266, -92.1326>,<135.52, -14.3502, -74.6896>,<130.75, -15.6353, -74.8442> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<135.52, -14.3502, -74.6896>,<122.035, -10.7266, -92.1326>,<123.928, -6.77953, -92.92> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<123.928, -6.77953, -92.92>,<137.978, -10.077, -74.3423>,<135.52, -14.3502, -74.6896> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<137.978, -10.077, -74.3423>,<123.928, -6.77953, -92.92>,<123.208, -2.61422, -91.5363> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<123.208, -2.61422, -91.5363>,<136.685, -5.3191, -74.0059>,<137.978, -10.077, -74.3423> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<136.685, -5.3191, -74.0059>,<123.208, -2.61422, -91.5363>,<120.298, -0.670708, -88.7918> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<120.298, -0.670708, -88.7918>,<132.398, -2.86355, -73.8774>,<136.685, -5.3191, -74.0059> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<132.398, -2.86355, -73.8774>,<120.298, -0.670708, -88.7918>,<116.901, -2.08734, -86.2942> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<116.901, -2.08734, -86.2942>,<127.629, -4.14868, -74.032>,<132.398, -2.86355, -73.8774> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<127.629, -4.14868, -74.032>,<116.901, -2.08734, -86.2942>,<115.008, -6.03441, -85.5068> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<115.008, -6.03441, -85.5068>,<125.17, -8.42183, -74.3792>,<127.629, -4.14868, -74.032> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<125.17, -8.42183, -74.3792>,<115.008, -6.03441, -85.5068>,<115.728, -10.1997, -86.8905> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<115.728, -10.1997, -86.8905>,<126.463, -13.1798, -74.7156>,<125.17, -8.42183, -74.3792> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<115.728, -10.1997, -86.8905>,<101.366, -6.8261, -91.0633>,<102.214, -8.19562, -94.7277> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<102.214, -8.19562, -94.7277>,<118.638, -12.1432, -89.635>,<115.728, -10.1997, -86.8905> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<118.638, -12.1432, -89.635>,<102.214, -8.19562, -94.7277>,<103.591, -6.56027, -98.1122> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<103.591, -6.56027, -98.1122>,<122.035, -10.7266, -92.1326>,<118.638, -12.1432, -89.635> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<122.035, -10.7266, -92.1326>,<103.591, -6.56027, -98.1122>,<104.689, -2.8779, -99.2341> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<104.689, -2.8779, -99.2341>,<123.928, -6.77953, -92.92>,<122.035, -10.7266, -92.1326> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<123.928, -6.77953, -92.92>,<104.689, -2.8779, -99.2341>,<104.865, 0.694351, -97.4364> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<104.865, 0.694351, -97.4364>,<123.208, -2.61422, -91.5363>,<123.928, -6.77953, -92.92> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<123.208, -2.61422, -91.5363>,<104.865, 0.694351, -97.4364>,<104.016, 2.06387, -93.7719> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<104.016, 2.06387, -93.7719>,<120.298, -0.670708, -88.7918>,<123.208, -2.61422, -91.5363> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<120.298, -0.670708, -88.7918>,<104.016, 2.06387, -93.7719>,<102.64, 0.428519, -90.3875> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<102.64, 0.428519, -90.3875>,<116.901, -2.08734, -86.2942>,<120.298, -0.670708, -88.7918> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<116.901, -2.08734, -86.2942>,<102.64, 0.428519, -90.3875>,<101.542, -3.25384, -89.2655> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<101.542, -3.25384, -89.2655>,<115.008, -6.03441, -85.5068>,<116.901, -2.08734, -86.2942> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<115.008, -6.03441, -85.5068>,<101.542, -3.25384, -89.2655>,<101.366, -6.8261, -91.0633> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<101.366, -6.8261, -91.0633>,<115.728, -10.1997, -86.8905>,<115.008, -6.03441, -85.5068> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.73221, -0.000203369, -7.73221>,<-7.7303, -36.4502, -7.73317>,<-10.933, -36.4506, -0.000958691> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-10.933, -36.4506, -0.000958691>,<-10.9349, -0.000575209, 0>,<-7.73221, -0.000203369, -7.73221> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-10.9349, -0.000575209, 0>,<-10.933, -36.4506, -0.000958691>,<-7.7303, -36.4506, 7.73125> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.7303, -36.4506, 7.73125>,<-7.73221, -0.000610107, 7.73221>,<-10.9349, -0.000575209, 0> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.73221, -0.000610107, 7.73221>,<-7.7303, -36.4506, 7.73125>,<0.00191738, -36.4503, 10.9339> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.00191738, -36.4503, 10.9339>,<0, -0.000287605, 10.9349>,<-7.73221, -0.000610107, 7.73221> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0, -0.000287605, 10.9349>,<0.00191738, -36.4503, 10.9339>,<7.73413, -36.4498, 7.73125> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.73413, -36.4498, 7.73125>,<7.73221, 0.000203369, 7.73221>,<0, -0.000287605, 10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.73221, 0.000203369, 7.73221>,<7.73413, -36.4498, 7.73125>,<10.9368, -36.4494, -0.000958691> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<10.9368, -36.4494, -0.000958691>,<10.9349, 0.000575209, 0>,<7.73221, 0.000203369, 7.73221> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<10.9349, 0.000575209, 0>,<10.9368, -36.4494, -0.000958691>,<7.73413, -36.4494, -7.73317> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.73413, -36.4494, -7.73317>,<7.73221, 0.000610107, -7.73221>,<10.9349, 0.000575209, 0> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.73221, 0.000610107, -7.73221>,<7.73413, -36.4494, -7.73317>,<0.00191738, -36.4497, -10.9359> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.00191738, -36.4497, -10.9359>,<0, 0.000287605, -10.9349>,<7.73221, 0.000610107, -7.73221> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0, 0.000287605, -10.9349>,<0.00191738, -36.4497, -10.9359>,<-7.7303, -36.4502, -7.73317> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.7303, -36.4502, -7.73317>,<-7.73221, -0.000203369, -7.73221>,<0, 0.000287605, -10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.7303, -36.4502, -7.73317>,<-5.29886, -66.1694, -16.1776>,<-8.28876, -68.2672, -9.59003> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.28876, -68.2672, -9.59003>,<-10.933, -36.4506, -0.000958691>,<-7.7303, -36.4502, -7.73317> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-10.933, -36.4506, -0.000958691>,<-8.28876, -68.2672, -9.59003>,<-5.5209, -70.132, -2.83744> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.5209, -70.132, -2.83744>,<-7.7303, -36.4506, 7.73125>,<-10.933, -36.4506, -0.000958691> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.7303, -36.4506, 7.73125>,<-5.5209, -70.132, -2.83744>,<1.38356, -70.6713, 0.124565> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<1.38356, -70.6713, 0.124565>,<0.00191738, -36.4503, 10.9339>,<-7.7303, -36.4506, 7.73125> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.00191738, -36.4503, 10.9339>,<1.38356, -70.6713, 0.124565>,<8.37999, -69.5693, -2.43891> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<8.37999, -69.5693, -2.43891>,<7.73413, -36.4498, 7.73125>,<0.00191738, -36.4503, 10.9339> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.73413, -36.4498, 7.73125>,<8.37999, -69.5693, -2.43891>,<11.3699, -67.4715, -9.02644> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<11.3699, -67.4715, -9.02644>,<10.9368, -36.4494, -0.000958691>,<7.73413, -36.4498, 7.73125> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<10.9368, -36.4494, -0.000958691>,<11.3699, -67.4715, -9.02644>,<8.60203, -65.6067, -15.779> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<8.60203, -65.6067, -15.779>,<7.73413, -36.4494, -7.73317>,<10.9368, -36.4494, -0.000958691> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.73413, -36.4494, -7.73317>,<8.60203, -65.6067, -15.779>,<1.69757, -65.0674, -18.741> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<1.69757, -65.0674, -18.741>,<0.00191738, -36.4497, -10.9359>,<7.73413, -36.4494, -7.73317> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.00191738, -36.4497, -10.9359>,<1.69757, -65.0674, -18.741>,<-5.29886, -66.1694, -16.1776> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.29886, -66.1694, -16.1776>,<-7.7303, -36.4502, -7.73317>,<0.00191738, -36.4497, -10.9359> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.29886, -66.1694, -16.1776>,<-5.91519, -88.7799, -30.693>,<-8.31135, -92.2529, -25.3871> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.31135, -92.2529, -25.3871>,<-8.28876, -68.2672, -9.59003>,<-5.29886, -66.1694, -16.1776> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.28876, -68.2672, -9.59003>,<-8.31135, -92.2529, -25.3871>,<-5.52469, -95.7818, -20.3139> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.52469, -95.7818, -20.3139>,<-5.5209, -70.132, -2.83744>,<-8.28876, -68.2672, -9.59003> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.5209, -70.132, -2.83744>,<-5.52469, -95.7818, -20.3139>,<0.812607, -97.2995, -18.4453> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.812607, -97.2995, -18.4453>,<1.38356, -70.6713, 0.124565>,<-5.5209, -70.132, -2.83744> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<1.38356, -70.6713, 0.124565>,<0.812607, -97.2995, -18.4453>,<6.98816, -95.9169, -20.8758> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<6.98816, -95.9169, -20.8758>,<8.37999, -69.5693, -2.43891>,<1.38356, -70.6713, 0.124565> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<8.37999, -69.5693, -2.43891>,<6.98816, -95.9169, -20.8758>,<9.38432, -92.4439, -26.1817> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<9.38432, -92.4439, -26.1817>,<11.3699, -67.4715, -9.02644>,<8.37999, -69.5693, -2.43891> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<11.3699, -67.4715, -9.02644>,<9.38432, -92.4439, -26.1817>,<6.59766, -88.915, -31.2549> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<6.59766, -88.915, -31.2549>,<8.60203, -65.6067, -15.779>,<11.3699, -67.4715, -9.02644> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<8.60203, -65.6067, -15.779>,<6.59766, -88.915, -31.2549>,<0.260359, -87.3974, -33.1235> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.260359, -87.3974, -33.1235>,<1.69757, -65.0674, -18.741>,<8.60203, -65.6067, -15.779> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<1.69757, -65.0674, -18.741>,<0.260359, -87.3974, -33.1235>,<-5.91519, -88.7799, -30.693> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.91519, -88.7799, -30.693>,<-5.29886, -66.1694, -16.1776>,<1.69757, -65.0674, -18.741> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.91519, -88.7799, -30.693>,<-5.0885, -105.729, -49.4263>,<-6.9068, -110.19, -45.6819> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-6.9068, -110.19, -45.6819>,<-8.31135, -92.2529, -25.3871>,<-5.91519, -88.7799, -30.693> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.31135, -92.2529, -25.3871>,<-6.9068, -110.19, -45.6819>,<-4.0753, -114.274, -42.1432> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-4.0753, -114.274, -42.1432>,<-5.52469, -95.7818, -20.3139>,<-8.31135, -92.2529, -25.3871> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.52469, -95.7818, -20.3139>,<-4.0753, -114.274, -42.1432>,<1.74753, -115.59, -40.8832> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<1.74753, -115.59, -40.8832>,<0.812607, -97.2995, -18.4453>,<-5.52469, -95.7818, -20.3139> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.812607, -97.2995, -18.4453>,<1.74753, -115.59, -40.8832>,<7.15069, -113.367, -42.6399> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.15069, -113.367, -42.6399>,<6.98816, -95.9169, -20.8758>,<0.812607, -97.2995, -18.4453> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<6.98816, -95.9169, -20.8758>,<7.15069, -113.367, -42.6399>,<8.96899, -108.906, -46.3844> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<8.96899, -108.906, -46.3844>,<9.38432, -92.4439, -26.1817>,<6.98816, -95.9169, -20.8758> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<9.38432, -92.4439, -26.1817>,<8.96899, -108.906, -46.3844>,<6.13748, -104.821, -49.9231> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<6.13748, -104.821, -49.9231>,<6.59766, -88.915, -31.2549>,<9.38432, -92.4439, -26.1817> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<6.59766, -88.915, -31.2549>,<6.13748, -104.821, -49.9231>,<0.31466, -103.505, -51.1831> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.31466, -103.505, -51.1831>,<0.260359, -87.3974, -33.1235>,<6.59766, -88.915, -31.2549> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.260359, -87.3974, -33.1235>,<0.31466, -103.505, -51.1831>,<-5.0885, -105.729, -49.4263> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.0885, -105.729, -49.4263>,<-5.91519, -88.7799, -30.693>,<0.260359, -87.3974, -33.1235> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.0885, -105.729, -49.4263>,<-4.5463, -115.308, -69.6784>,<-6.34791, -120.003, -67.4721> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-6.34791, -120.003, -67.4721>,<-6.9068, -110.19, -45.6819>,<-5.0885, -105.729, -49.4263> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-6.9068, -110.19, -45.6819>,<-6.34791, -120.003, -67.4721>,<-3.95429, -124.491, -65.404> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-3.95429, -124.491, -65.404>,<-4.0753, -114.274, -42.1432>,<-6.9068, -110.19, -45.6819> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-4.0753, -114.274, -42.1432>,<-3.95429, -124.491, -65.404>,<1.23257, -126.144, -64.6855> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<1.23257, -126.144, -64.6855>,<1.74753, -115.59, -40.8832>,<-4.0753, -114.274, -42.1432> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<1.74753, -115.59, -40.8832>,<1.23257, -126.144, -64.6855>,<6.17422, -123.994, -65.7374> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<6.17422, -123.994, -65.7374>,<7.15069, -113.367, -42.6399>,<1.74753, -115.59, -40.8832> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.15069, -113.367, -42.6399>,<6.17422, -123.994, -65.7374>,<7.97583, -119.299, -67.9437> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.97583, -119.299, -67.9437>,<8.96899, -108.906, -46.3844>,<7.15069, -113.367, -42.6399> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<8.96899, -108.906, -46.3844>,<7.97583, -119.299, -67.9437>,<5.58221, -114.811, -70.0119> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<5.58221, -114.811, -70.0119>,<6.13748, -104.821, -49.9231>,<8.96899, -108.906, -46.3844> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<6.13748, -104.821, -49.9231>,<5.58221, -114.811, -70.0119>,<0.395347, -113.158, -70.7304> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.395347, -113.158, -70.7304>,<0.31466, -103.505, -51.1831>,<6.13748, -104.821, -49.9231> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.31466, -103.505, -51.1831>,<0.395347, -113.158, -70.7304>,<-4.5463, -115.308, -69.6784> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-4.5463, -115.308, -69.6784>,<-5.0885, -105.729, -49.4263>,<0.31466, -103.505, -51.1831> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-4.5463, -115.308, -69.6784>,<-7.98745, -114.488, -87.7287>,<-9.70563, -119.119, -87.5574> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-9.70563, -119.119, -87.5574>,<-6.34791, -120.003, -67.4721>,<-4.5463, -115.308, -69.6784> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-6.34791, -120.003, -67.4721>,<-9.70563, -119.119, -87.5574>,<-7.71555, -123.608, -88.1172> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.71555, -123.608, -88.1172>,<-3.95429, -124.491, -65.404>,<-6.34791, -120.003, -67.4721> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-3.95429, -124.491, -65.404>,<-7.71555, -123.608, -88.1172>,<-3.18282, -125.325, -89.0802> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-3.18282, -125.325, -89.0802>,<1.23257, -126.144, -64.6855>,<-3.95429, -124.491, -65.404> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<1.23257, -126.144, -64.6855>,<-3.18282, -125.325, -89.0802>,<1.23729, -123.266, -89.8823> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<1.23729, -123.266, -89.8823>,<6.17422, -123.994, -65.7374>,<1.23257, -126.144, -64.6855> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<6.17422, -123.994, -65.7374>,<1.23729, -123.266, -89.8823>,<2.95547, -118.635, -90.0536> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<2.95547, -118.635, -90.0536>,<7.97583, -119.299, -67.9437>,<6.17422, -123.994, -65.7374> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<7.97583, -119.299, -67.9437>,<2.95547, -118.635, -90.0536>,<0.965392, -114.146, -89.4938> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.965392, -114.146, -89.4938>,<5.58221, -114.811, -70.0119>,<7.97583, -119.299, -67.9437> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<5.58221, -114.811, -70.0119>,<0.965392, -114.146, -89.4938>,<-3.56734, -112.429, -88.5308> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-3.56734, -112.429, -88.5308>,<0.395347, -113.158, -70.7304>,<5.58221, -114.811, -70.0119> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.395347, -113.158, -70.7304>,<-3.56734, -112.429, -88.5308>,<-7.98745, -114.488, -87.7287> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.98745, -114.488, -87.7287>,<-4.5463, -115.308, -69.6784>,<0.395347, -113.158, -70.7304> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.98745, -114.488, -87.7287>,<-13.8018, -108.789, -102.896>,<-14.9115, -112.865, -104.29> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-14.9115, -112.865, -104.29>,<-9.70563, -119.119, -87.5574>,<-7.98745, -114.488, -87.7287> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-9.70563, -119.119, -87.5574>,<-14.9115, -112.865, -104.29>,<-12.814, -116.12, -106.478> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-12.814, -116.12, -106.478>,<-7.71555, -123.608, -88.1172>,<-9.70563, -119.119, -87.5574> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-7.71555, -123.608, -88.1172>,<-12.814, -116.12, -106.478>,<-8.73789, -116.648, -108.178> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.73789, -116.648, -108.178>,<-3.18282, -125.325, -89.0802>,<-7.71555, -123.608, -88.1172> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-3.18282, -125.325, -89.0802>,<-8.73789, -116.648, -108.178>,<-5.07098, -114.14, -108.394> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.07098, -114.14, -108.394>,<1.23729, -123.266, -89.8823>,<-3.18282, -125.325, -89.0802> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<1.23729, -123.266, -89.8823>,<-5.07098, -114.14, -108.394>,<-3.96134, -110.065, -106.999> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-3.96134, -110.065, -106.999>,<2.95547, -118.635, -90.0536>,<1.23729, -123.266, -89.8823> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<2.95547, -118.635, -90.0536>,<-3.96134, -110.065, -106.999>,<-6.05884, -106.81, -104.811> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-6.05884, -106.81, -104.811>,<0.965392, -114.146, -89.4938>,<2.95547, -118.635, -90.0536> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.965392, -114.146, -89.4938>,<-6.05884, -106.81, -104.811>,<-10.1349, -106.281, -103.111> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-10.1349, -106.281, -103.111>,<-3.56734, -112.429, -88.5308>,<0.965392, -114.146, -89.4938> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-3.56734, -112.429, -88.5308>,<-10.1349, -106.281, -103.111>,<-13.8018, -108.789, -102.896> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-13.8018, -108.789, -102.896>,<-7.98745, -114.488, -87.7287>,<-3.56734, -112.429, -88.5308> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-13.8018, -108.789, -102.896>,<-18.1309, -97.2867, -113.04>,<-19.4401, -100.019, -115.656> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-19.4401, -100.019, -115.656>,<-14.9115, -112.865, -104.29>,<-13.8018, -108.789, -102.896> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-14.9115, -112.865, -104.29>,<-19.4401, -100.019, -115.656>,<-17.8172, -101.995, -118.736> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-17.8172, -101.995, -118.736>,<-12.814, -116.12, -106.478>,<-14.9115, -112.865, -104.29> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-12.814, -116.12, -106.478>,<-17.8172, -101.995, -118.736>,<-14.2126, -102.056, -120.476> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-14.2126, -102.056, -120.476>,<-8.73789, -116.648, -108.178>,<-12.814, -116.12, -106.478> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-8.73789, -116.648, -108.178>,<-14.2126, -102.056, -120.476>,<-10.738, -100.167, -119.856> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-10.738, -100.167, -119.856>,<-5.07098, -114.14, -108.394>,<-8.73789, -116.648, -108.178> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-5.07098, -114.14, -108.394>,<-10.738, -100.167, -119.856>,<-9.42876, -97.4349, -117.24> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-9.42876, -97.4349, -117.24>,<-3.96134, -110.065, -106.999>,<-5.07098, -114.14, -108.394> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-3.96134, -110.065, -106.999>,<-9.42876, -97.4349, -117.24>,<-11.0517, -95.4593, -114.16> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-11.0517, -95.4593, -114.16>,<-6.05884, -106.81, -104.811>,<-3.96134, -110.065, -106.999> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-6.05884, -106.81, -104.811>,<-11.0517, -95.4593, -114.16>,<-14.6563, -95.398, -112.42> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-14.6563, -95.398, -112.42>,<-10.1349, -106.281, -103.111>,<-6.05884, -106.81, -104.811> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-10.1349, -106.281, -103.111>,<-14.6563, -95.398, -112.42>,<-18.1309, -97.2867, -113.04> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-18.1309, -97.2867, -113.04>,<-13.8018, -108.789, -102.896>,<-10.1349, -106.281, -103.111> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-0.000610107, 7.73242, -7.73201>,<-36.4506, 7.72954, -7.73201>,<-36.4509, 10.932, 0.000287934> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.4509, 10.932, 0.000287934>,<-0.000862814, 10.9349, 0.00028801>,<-0.000610107, 7.73242, -7.73201> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-0.000862814, 10.9349, 0.00028801>,<-36.4509, 10.932, 0.000287934>,<-36.4506, 7.72913, 7.73242> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.4506, 7.72913, 7.73242>,<-0.000610107, 7.73201, 7.73242>,<-0.000862814, 10.9349, 0.00028801> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-0.000610107, 7.73201, 7.73242>,<-36.4506, 7.72913, 7.73242>,<-36.45, -0.00316408, 10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.45, -0.00316408, 10.9349>,<0, -0.00028801, 10.9349>,<-0.000610107, 7.73201, 7.73242> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0, -0.00028801, 10.9349>,<-36.45, -0.00316408, 10.9349>,<-36.4494, -7.73529, 7.73201> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.4494, -7.73529, 7.73201>,<0.000610107, -7.73242, 7.73201>,<0, -0.00028801, 10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.000610107, -7.73242, 7.73201>,<-36.4494, -7.73529, 7.73201>,<-36.4491, -10.9378, -0.000288085> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.4491, -10.9378, -0.000288085>,<0.000862814, -10.9349, -0.00028801>,<0.000610107, -7.73242, 7.73201> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.000862814, -10.9349, -0.00028801>,<-36.4491, -10.9378, -0.000288085>,<-36.4494, -7.73489, -7.73242> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.4494, -7.73489, -7.73242>,<0.000610107, -7.73201, -7.73242>,<0.000862814, -10.9349, -0.00028801> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0.000610107, -7.73201, -7.73242>,<-36.4494, -7.73489, -7.73242>,<-36.45, -0.00258806, -10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.45, -0.00258806, -10.9349>,<0, 0.00028801, -10.9349>,<0.000610107, -7.73201, -7.73242> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<0, 0.00028801, -10.9349>,<-36.45, -0.00258806, -10.9349>,<-36.4506, 7.72954, -7.73201> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.4506, 7.72954, -7.73201>,<-0.000610107, 7.73242, -7.73201>,<0, 0.00028801, -10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.4506, 7.72954, -7.73201>,<-67.2802, 5.44062, -13.8885>,<-68.7602, 8.72476, -7.27337> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-68.7602, 8.72476, -7.27337>,<-36.4509, 10.932, 0.000287934>,<-36.4506, 7.72954, -7.73201> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.4509, 10.932, 0.000287934>,<-68.7602, 8.72476, -7.27337>,<-70.1212, 6.25721, -0.288055> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-70.1212, 6.25721, -0.288055>,<-36.4506, 7.72913, 7.73242>,<-36.4509, 10.932, 0.000287934> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.4506, 7.72913, 7.73242>,<-70.1212, 6.25721, -0.288055>,<-70.566, -0.51682, 2.97546> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-70.566, -0.51682, 2.97546>,<-36.45, -0.00316408, 10.9349>,<-36.4506, 7.72913, 7.73242> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.45, -0.00316408, 10.9349>,<-70.566, -0.51682, 2.97546>,<-69.8341, -7.62908, 0.605676> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-69.8341, -7.62908, 0.605676>,<-36.4494, -7.73529, 7.73201>,<-36.45, -0.00316408, 10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.4494, -7.73529, 7.73201>,<-69.8341, -7.62908, 0.605676>,<-68.3541, -10.9132, -6.00945> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-68.3541, -10.9132, -6.00945>,<-36.4491, -10.9378, -0.000288085>,<-36.4494, -7.73529, 7.73201> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.4491, -10.9378, -0.000288085>,<-68.3541, -10.9132, -6.00945>,<-66.9931, -8.44567, -12.9948> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-66.9931, -8.44567, -12.9948>,<-36.4494, -7.73489, -7.73242>,<-36.4491, -10.9378, -0.000288085> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.4494, -7.73489, -7.73242>,<-66.9931, -8.44567, -12.9948>,<-66.5482, -1.67164, -16.2583> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-66.5482, -1.67164, -16.2583>,<-36.45, -0.00258806, -10.9349>,<-36.4494, -7.73489, -7.73242> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-36.45, -0.00258806, -10.9349>,<-66.5482, -1.67164, -16.2583>,<-67.2802, 5.44062, -13.8885> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-67.2802, 5.44062, -13.8885>,<-36.4506, 7.72954, -7.73201>,<-36.45, -0.00258806, -10.9349> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-67.2802, 5.44062, -13.8885>,<-91.5526, 4.24596, -26.4616>,<-94.3919, 7.38046, -21.1635> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-94.3919, 7.38046, -21.1635>,<-68.7602, 8.72476, -7.27337>,<-67.2802, 5.44062, -13.8885> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-68.7602, 8.72476, -7.27337>,<-94.3919, 7.38046, -21.1635>,<-97.3904, 5.34706, -15.4337> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-97.3904, 5.34706, -15.4337>,<-70.1212, 6.25721, -0.288055>,<-68.7602, 8.72476, -7.27337> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-70.1212, 6.25721, -0.288055>,<-97.3904, 5.34706, -15.4337>,<-98.7915, -0.663313, -12.6286> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-98.7915, -0.663313, -12.6286>,<-70.566, -0.51682, 2.97546>,<-70.1212, 6.25721, -0.288055> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-70.566, -0.51682, 2.97546>,<-98.7915, -0.663313, -12.6286>,<-97.7746, -7.12976, -14.3913> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-97.7746, -7.12976, -14.3913>,<-69.8341, -7.62908, 0.605676>,<-70.566, -0.51682, 2.97546> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-69.8341, -7.62908, 0.605676>,<-97.7746, -7.12976, -14.3913>,<-94.9353, -10.2643, -19.6894> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-94.9353, -10.2643, -19.6894>,<-68.3541, -10.9132, -6.00945>,<-69.8341, -7.62908, 0.605676> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-68.3541, -10.9132, -6.00945>,<-94.9353, -10.2643, -19.6894>,<-91.9369, -8.23087, -25.4192> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-91.9369, -8.23087, -25.4192>,<-66.9931, -8.44567, -12.9948>,<-68.3541, -10.9132, -6.00945> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-66.9931, -8.44567, -12.9948>,<-91.9369, -8.23087, -25.4192>,<-90.5358, -2.2205, -28.2243> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-90.5358, -2.2205, -28.2243>,<-66.5482, -1.67164, -16.2583>,<-66.9931, -8.44567, -12.9948> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-66.5482, -1.67164, -16.2583>,<-90.5358, -2.2205, -28.2243>,<-91.5526, 4.24596, -26.4616> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-91.5526, 4.24596, -26.4616>,<-67.2802, 5.44062, -13.8885>,<-66.5482, -1.67164, -16.2583> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-91.5526, 4.24596, -26.4616>,<-109.56, 3.00057, -43.4042>,<-113.333, 5.90232, -39.5871> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-113.333, 5.90232, -39.5871>,<-94.3919, 7.38046, -21.1635>,<-91.5526, 4.24596, -26.4616> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-94.3919, 7.38046, -21.1635>,<-113.333, 5.90232, -39.5871>,<-117.366, 4.16048, -35.3536> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-117.366, 4.16048, -35.3536>,<-97.3904, 5.34706, -15.4337>,<-94.3919, 7.38046, -21.1635> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-97.3904, 5.34706, -15.4337>,<-117.366, 4.16048, -35.3536>,<-119.297, -1.20481, -33.1835> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-119.297, -1.20481, -33.1835>,<-98.7915, -0.663313, -12.6286>,<-97.3904, 5.34706, -15.4337> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-98.7915, -0.663313, -12.6286>,<-119.297, -1.20481, -33.1835>,<-117.995, -7.05053, -34.3479> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-117.995, -7.05053, -34.3479>,<-97.7746, -7.12976, -14.3913>,<-98.7915, -0.663313, -12.6286> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-97.7746, -7.12976, -14.3913>,<-117.995, -7.05053, -34.3479>,<-114.222, -9.95228, -38.165> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-114.222, -9.95228, -38.165>,<-94.9353, -10.2643, -19.6894>,<-97.7746, -7.12976, -14.3913> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-94.9353, -10.2643, -19.6894>,<-114.222, -9.95228, -38.165>,<-110.189, -8.21044, -42.3985> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-110.189, -8.21044, -42.3985>,<-91.9369, -8.23087, -25.4192>,<-94.9353, -10.2643, -19.6894> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-91.9369, -8.23087, -25.4192>,<-110.189, -8.21044, -42.3985>,<-108.258, -2.84515, -44.5686> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-108.258, -2.84515, -44.5686>,<-90.5358, -2.2205, -28.2243>,<-91.9369, -8.23087, -25.4192> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-90.5358, -2.2205, -28.2243>,<-108.258, -2.84515, -44.5686>,<-109.56, 3.00057, -43.4042> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-109.56, 3.00057, -43.4042>,<-91.5526, 4.24596, -26.4616>,<-90.5358, -2.2205, -28.2243> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-109.56, 3.00057, -43.4042>,<-122.088, -0.0655928, -62.3387>,<-126.271, 2.60645, -59.9913> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-126.271, 2.60645, -59.9913>,<-113.333, 5.90232, -39.5871>,<-109.56, 3.00057, -43.4042> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-113.333, 5.90232, -39.5871>,<-126.271, 2.60645, -59.9913>,<-130.642, 1.12745, -57.0154> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-130.642, 1.12745, -57.0154>,<-117.366, 4.16048, -35.3536>,<-113.333, 5.90232, -39.5871> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-117.366, 4.16048, -35.3536>,<-130.642, 1.12745, -57.0154>,<-132.641, -3.63639, -55.1542> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-132.641, -3.63639, -55.1542>,<-119.297, -1.20481, -33.1835>,<-117.366, 4.16048, -35.3536> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-119.297, -1.20481, -33.1835>,<-132.641, -3.63639, -55.1542>,<-131.096, -8.89439, -55.4979> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-131.096, -8.89439, -55.4979>,<-117.995, -7.05053, -34.3479>,<-119.297, -1.20481, -33.1835> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-117.995, -7.05053, -34.3479>,<-131.096, -8.89439, -55.4979>,<-126.912, -11.5664, -57.8453> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-126.912, -11.5664, -57.8453>,<-114.222, -9.95228, -38.165>,<-117.995, -7.05053, -34.3479> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-114.222, -9.95228, -38.165>,<-126.912, -11.5664, -57.8453>,<-122.541, -10.0874, -60.8213> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-122.541, -10.0874, -60.8213>,<-110.189, -8.21044, -42.3985>,<-114.222, -9.95228, -38.165> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-110.189, -8.21044, -42.3985>,<-122.541, -10.0874, -60.8213>,<-120.543, -5.32359, -62.6825> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-120.543, -5.32359, -62.6825>,<-108.258, -2.84515, -44.5686>,<-110.189, -8.21044, -42.3985> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-108.258, -2.84515, -44.5686>,<-120.543, -5.32359, -62.6825>,<-122.088, -0.0655928, -62.3387> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-122.088, -0.0655928, -62.3387>,<-109.56, 3.00057, -43.4042>,<-108.258, -2.84515, -44.5686> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-122.088, -0.0655928, -62.3387>,<-126.191, -4.48475, -81.3858>,<-130.545, -2.19485, -80.9205> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-130.545, -2.19485, -80.9205>,<-126.271, 2.60645, -59.9913>,<-122.088, -0.0655928, -62.3387> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-126.271, 2.60645, -59.9913>,<-130.545, -2.19485, -80.9205>,<-135.12, -3.60244, -79.6897> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-135.12, -3.60244, -79.6897>,<-130.642, 1.12745, -57.0154>,<-126.271, 2.60645, -59.9913> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-130.642, 1.12745, -57.0154>,<-135.12, -3.60244, -79.6897>,<-137.235, -7.88313, -78.4143> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-137.235, -7.88313, -78.4143>,<-132.641, -3.63639, -55.1542>,<-130.642, 1.12745, -57.0154> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-132.641, -3.63639, -55.1542>,<-137.235, -7.88313, -78.4143>,<-135.651, -12.5293, -77.8416> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-135.651, -12.5293, -77.8416>,<-131.096, -8.89439, -55.4979>,<-132.641, -3.63639, -55.1542> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-131.096, -8.89439, -55.4979>,<-135.651, -12.5293, -77.8416>,<-131.296, -14.8192, -78.3069> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-131.296, -14.8192, -78.3069>,<-126.912, -11.5664, -57.8453>,<-131.096, -8.89439, -55.4979> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-126.912, -11.5664, -57.8453>,<-131.296, -14.8192, -78.3069>,<-126.722, -13.4116, -79.5377> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-126.722, -13.4116, -79.5377>,<-122.541, -10.0874, -60.8213>,<-126.912, -11.5664, -57.8453> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-122.541, -10.0874, -60.8213>,<-126.722, -13.4116, -79.5377>,<-124.607, -9.13089, -80.813> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-124.607, -9.13089, -80.813>,<-120.543, -5.32359, -62.6825>,<-122.541, -10.0874, -60.8213> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-120.543, -5.32359, -62.6825>,<-124.607, -9.13089, -80.813>,<-126.191, -4.48475, -81.3858> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-126.191, -4.48475, -81.3858>,<-122.088, -0.0655928, -62.3387>,<-120.543, -5.32359, -62.6825> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-126.191, -4.48475, -81.3858>,<-122.139, -9.74905, -97.7892>,<-125.902, -7.83736, -99.1934> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-125.902, -7.83736, -99.1934>,<-130.545, -2.19485, -80.9205>,<-126.191, -4.48475, -81.3858> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-130.545, -2.19485, -80.9205>,<-125.902, -7.83736, -99.1934>,<-130.087, -9.20975, -99.8082> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-130.087, -9.20975, -99.8082>,<-135.12, -3.60244, -79.6897>,<-130.545, -2.19485, -80.9205> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-135.12, -3.60244, -79.6897>,<-130.087, -9.20975, -99.8082>,<-132.245, -13.0624, -99.2734> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-132.245, -13.0624, -99.2734>,<-137.235, -7.88313, -78.4143>,<-135.12, -3.60244, -79.6897> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-137.235, -7.88313, -78.4143>,<-132.245, -13.0624, -99.2734>,<-131.11, -17.1385, -97.9022> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-131.11, -17.1385, -97.9022>,<-135.651, -12.5293, -77.8416>,<-137.235, -7.88313, -78.4143> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-135.651, -12.5293, -77.8416>,<-131.11, -17.1385, -97.9022>,<-127.347, -19.0502, -96.4979> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-127.347, -19.0502, -96.4979>,<-131.296, -14.8192, -78.3069>,<-135.651, -12.5293, -77.8416> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-131.296, -14.8192, -78.3069>,<-127.347, -19.0502, -96.4979>,<-123.161, -17.6778, -95.8831> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-123.161, -17.6778, -95.8831>,<-126.722, -13.4116, -79.5377>,<-131.296, -14.8192, -78.3069> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-126.722, -13.4116, -79.5377>,<-123.161, -17.6778, -95.8831>,<-121.004, -13.8251, -96.418> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-121.004, -13.8251, -96.418>,<-124.607, -9.13089, -80.813>,<-126.722, -13.4116, -79.5377> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-124.607, -9.13089, -80.813>,<-121.004, -13.8251, -96.418>,<-122.139, -9.74905, -97.7892> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-122.139, -9.74905, -97.7892>,<-126.191, -4.48475, -81.3858>,<-124.607, -9.13089, -80.813> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-122.139, -9.74905, -97.7892>,<-110.845, -15.6155, -106.654>,<-113.066, -14.8884, -109.903> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-113.066, -14.8884, -109.903>,<-125.902, -7.83736, -99.1934>,<-122.139, -9.74905, -97.7892> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-125.902, -7.83736, -99.1934>,<-113.066, -14.8884, -109.903>,<-115.757, -16.9671, -112.015> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-115.757, -16.9671, -112.015>,<-130.087, -9.20975, -99.8082>,<-125.902, -7.83736, -99.1934> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-130.087, -9.20975, -99.8082>,<-115.757, -16.9671, -112.015>,<-117.341, -20.634, -111.753> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-117.341, -20.634, -111.753>,<-132.245, -13.0624, -99.2734>,<-130.087, -9.20975, -99.8082> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-132.245, -13.0624, -99.2734>,<-117.341, -20.634, -111.753>,<-116.89, -23.741, -109.27> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-116.89, -23.741, -109.27>,<-131.11, -17.1385, -97.9022>,<-132.245, -13.0624, -99.2734> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-131.11, -17.1385, -97.9022>,<-116.89, -23.741, -109.27>,<-114.669, -24.4681, -106.02> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-114.669, -24.4681, -106.02>,<-127.347, -19.0502, -96.4979>,<-131.11, -17.1385, -97.9022> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-127.347, -19.0502, -96.4979>,<-114.669, -24.4681, -106.02>,<-111.978, -22.3895, -103.908> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-111.978, -22.3895, -103.908>,<-123.161, -17.6778, -95.8831>,<-127.347, -19.0502, -96.4979> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-123.161, -17.6778, -95.8831>,<-111.978, -22.3895, -103.908>,<-110.394, -18.7226, -104.17> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-110.394, -18.7226, -104.17>,<-121.004, -13.8251, -96.418>,<-123.161, -17.6778, -95.8831> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-121.004, -13.8251, -96.418>,<-110.394, -18.7226, -104.17>,<-110.845, -15.6155, -106.654> pigment{color rgb <0.8, 0.2, 0.2>
	}}
triangle{<-110.845, -15.6155, -106.654>,<-122.139, -9.74905, -97.7892>,<-121.004, -13.8251, -96.418> pigment{color rgb <0.8, 0.2, 0.2>
	}}
