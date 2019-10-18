 //declare bacteria variables here 
 Bacteria [] bob;  
 void setup()   
 {     
 	//initialize bacteria variables here
 	background(0);
 	frameRate(800);
 	size(600,600);
	bob = new Bacteria[200];   
	for(int i = 0; i < bob.length; i++){
		bob[i] = new Bacteria();
	}
	noStroke();
 	fill(50);
 	ellipse(300, 300, 60,60);
 	fill(255);
 	rect(298, 255, 3, 15);
 	fill(233,23,25);
 	ellipse(300, 252, 5, 9);
 }   
	

 void draw()   
 {  
 	for(int i = 0; i < bob.length; i++){
 		// bob[i].show();    
 		// bob[i].move();
 	}	
 }  
 void mousePressed(){
 	
 }


 class Bacteria    
 {     
 	int myX;
 	int myY;
 	int col;

 	Bacteria(){
 		myX = 300;
 		myY = 300;
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
 			fill(255, 145, 0);
 		}
 		noStroke();
 		ellipse(myX, myY, 5,5);
 	}

 }      
