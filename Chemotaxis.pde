 //declare bacteria variables here 
 Bacteria [] bob;  
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(600,600);
	bob = new Bacteria[200];   
	for(int i = 0; i < bob.length; i++){
		bob[i] = new Bacteria();
	}
 }   
 void draw()   
 {  
 	background(0);
 	for(int i = 0; i < bob.length; i++){
 		bob[i].show();    
 		bob[i].move();
 	}	
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
 		myX = myX + (int) ((Math.random()*4)-2);
 		myY = myY + (int) ((Math.random()*4)-2);
 	}
 	void colorPicker(){
 		col = (int)((Math.random()*6)+1);
 	}
 	void show(){
 		if(col == 6){
 			fill(255,0,0);
 		}
 		if(col == 5){
 			fill(0,255,0);
 		}
 		if(col == 4){
 			fill(0,0,255);
 		}
 		if(col == 3){
 			fill(124,0,234);
 		}
 		if(col == 2){
 			fill(174,123,0);
 		}
 		if(col == 1){
 			fill(54,170,20);
 		}
 		noStroke();
 		ellipse(myX, myY, 5,5);
 	}

 }      
