/*Melody Ong 47086998
|  _ \ __ _ _ __| |_(_) ___| | ___    __ _  ___ | |/ _|
| |_) / _` | '__| __| |/ __| |/ _ \  / _` |/ _ \| | |_ 
|  __/ (_| | |  | |_| | (__| |  __/ | (_| | (_) | |  _|
|_|   \__,_|_|   \__|_|\___|_|\___|  \__, |\___/|_|_|  
                                     |___/             
 _________________________________________
/ https://github.com/MyMelodyUwU/compThou \
\ sandDemo.git                            /
 -----------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

Particle golf works like this:
https://github.com/MyMelodyUwU/compThousandDemo.git
Same rules as Cooper Golf, where you are getting the ball in the hole, BUT
you instead are going to create a giant particle storm behind you, the higher
the particles, it'll bench your computer and give you a score. The higher score
means your more 1337 AND as a bonus, if you can play this game without it 
crashing your a legend.

Also, thanks to my vv cool tutor Mr Jack.

*/
int i = 0;
int j = 0;
int howManySquares = 0;
int tileSize = 20;
int userX = 1250;
int userY = 0;
int moveUp = 0;

void setup() {
	background(0);
	randomSeed(420);
    size(1280,960);
    drawBackground();
	//assigns values to square
	/*
	int[] squareValues = new int[width];
	int squareColor = 0;
	for (int i = 0; i < width; i++) {
		for (int j = 0; j < height/20; j = j + 20){
			squareColor = int(random(0,255));
			println(squareColor);
			squareValues[i] = squareColor;
			fill(0,squareValues[i],0);
			square(i,j,20);
			println("Square filled\n");
		}
	}
	*/
}

void draw() {
    playerDraw();
}

void drawBackground() {
	squareBgFunction();
	/*
    for(int x = 0; x <= 3072; x++) {
        if(j <= height - 60) {
            squareBgFunction(); 
            println(howManySquares);
        }
    }
    fill(128);
    rect(0,height - 60,width,height);
	*/
}

void playerDraw() {
	fill(255,0,0);
	square(userX,userY-10,40);
	//fill(0,0,255);
	//triangle(userX - 10,userX-5,userY,userY+5,userX,userX+5);
	fill(0,0,255);
	rect(userX, userY, 40, 10);	
	/*
	fill(0,255,0);
	rect(userX+15, userY+30, 10, 30);
	*/

 	if(moveUp == 0) { 
 		userY = userY + 1; 
     	if(userY == 900){ 
              moveUp = 1; 
    	} 
 	} 

  	if(moveUp == 1) { 
 		userY = userY - 1; 
 	    if(userY == 0){ 
 			moveUp = 0; 
 		} 
 	}
} 
void squareBgFunction() {
	/*
    float greenColor = random(0,255);
    squareValues[i][j] = greenColor;
    fill(0,greenColor,0);
    square(i,j,20);
    i = i + 20;
    if(i == width) {
        j = j + 20;    
        i = 0;
    }
    howManySquares++;
	*/
  	int[][] squareValues = new int[ceil(width/20)][ceil(height/20)];
  	int squareColor = 0;
  	for (int i = 0; i < width - 60; i+=tileSize) {
    	for (int j = 0; j < height; j+=tileSize) {
      		squareColor = int(random(0, 255));
      		println(squareColor);
      		squareValues[(i)/20][(j)/20] = squareColor;
      		fill(0,squareColor,0);
      		square(i,j,20);
    }
  }
}

//int checkDepth(){


//}

//void keyPressed(){


//}
