lives -= 1;
score -= 2;

instance_destroy();

repeat(10){
	instance_create_layer(x,y,"Instances",obj_debris);
}








