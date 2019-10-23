 //declare bacteria variables here 
 Bacteria [] bob;  
 void setup()   
 {     
 	//initialize bacteria variables here
 	background(0, 14, 48);
 	frameRate(0.5);
 	size(600,600);
	bob = new Bacteria[400];   
	for(int i = 0; i < bob.length; i++){
		bob[i] = new Bacteria();
	}
	
	noStroke();
	fill(100);
 	rect(0,450,600,270);

 	fill(170);
 	rect(60, 50, 150, 400);
 	fill(255, 230, 43);
 	for(int f = 60; f < 400; f = f + 15){
 		for(int i = 65; i < 205; i = i + 13){
 			rect(i,f,8,13);
 		}
 	}
 		
 	fill(170);
 	rect(400, 110, 150, 340);
 	fill(255, 230, 43);
 	for(int f = 120; f < 400; f = f + 15){
 		for(int i = 405; i < 545; i = i + 13){
 			rect(i,f,8,13);
 		}
 	}
 		


	noStroke();
 	fill(50);
  	ellipse(300, 420, 60,60);
  	fill(255);
	rect(298, 375, 3, 15);
 	fill(233,23,25);
 	ellipse(299, 372, 5, 9);

 }   
	

 void draw()   
 {  
 	for(int i = 0; i < bob.length; i++){
 		bob[i].show();    
 		bob[i].move();
 	}	
 }  
 
 void mousePressed(){
 	fill(0, 14, 48);
 	rect(0, 0, 600, 600);
 	
 	fill(100);
 	rect(0,450,600,270);

 	fill(170);
 	rect(60, 50, 150, 400);
 	fill(255, 230, 43);
 	for(int f = 60; f < 400; f = f + 15){
 		for(int i = 65; i < 205; i = i + 13){
 			rect(i,f,8,13);
 		}
 	}
 		
 	fill(170);
 	rect(400, 110, 150, 340);
 	fill(255, 230, 43);
 	for(int f = 120; f < 400; f = f + 15){
 		for(int i = 405; i < 545; i = i + 13){
 			rect(i,f,8,13);
 		}
 	}

 	frameRate(800);
 }


 class Bacteria    
 {     
 	int myX;
 	int myY;
 	int col;

 	Bacteria(){
 		myX = 300;
 		myY = 420;
 		colorPicker();
 	}
 	void move(){

			myX = myX + (int) (Math.random()*3)-1;
			myY = myY + (int) (Math.random()*3)-1;
 	}
 	void colorPicker(){
 		col = (int)((Math.random()*6)+1);
 	}
 	void show(){
 		if(col == 6){
 			fill(255,0,0);
 		}
 		if(col == 5){
 			fill(255,77,0);
 		}
 		if(col == 4){
 			fill(255, 148, 18);
 		}
 		if(col == 3){
 			fill(255, 214, 31);
 		}
 		if(col == 2){
 			fill(255, 145, 0);
 		}
 		if(col == 1){
 			fill(255, 0, 0);
 		}
 		noStroke();
 		ellipse(myX, myY, 10,10);
 	}

 }      
