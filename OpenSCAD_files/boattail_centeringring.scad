/*
     Cone and Coupler generator by concretedog
All dimensions in mm
CC BY-NC-SA 3.0

*/

nose_length=55;         //Length of the nosecone (not including the shoulder)
shoulder_length=5;     //Length of the shoulder 
coupler_radius=24.1/2;	 //Radius of the coupling ring also shoulder radius of nosecone that sits inside the tube
body_ext_radius=25.3/2;	 //Radius of the outside of the body tube 
coupler_length=50;      //Length of the coupling tube
$fn = 100;              //Number of fragments modeled around the circle-  
                         //-the higher the $fn the smoother the surface but
                         //-takes longer to render. 100 is fine for most!

 
/*      
union(){
    
    
  	difference() {
		cylinder(h=shoulder_length, r1=coupler_radius, r2=coupler_radius);
     
      cylinder(60,19.5/2,19.5/2);

    }
    
	translate ([0,0,shoulder_length]) scale([1,1,nose_length/body_ext_radius]) 
    difference() {
     
		sphere(r=body_ext_radius);
           cylinder(60,19.5/2,19.5/2);
		translate ([0,0,-body_ext_radius*0.5]) cube(size=[body_ext_radius*2,body_ext_radius*2,body_ext_radius],center=true);
	}
    
}

//##### Coupler code section #######

*/
/*
translate([50,50,0]) { //translate just moves coupler away from nosecone...need to move it more if doing a big nosecone!!
    difference() {
        cylinder(h=coupler_length, r1=coupler_radius, r2=coupler_radius);
        cylinder(h=coupler_length, r1=coupler_radius-4, r2=coupler_radius-4);
    }
}
*/

difference(){
    cylinder(5,coupler_radius,coupler_radius);
    cylinder(5,19.5/2,19.5/2);
    
}