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

void setup() {
    //int[] squareValues = new int[3072]
    size(1280,960);
    drawBackground();
}

void draw() {
    playerDraw();
}

void drawBackground() {
    for(int x = 0; x <= 3072; x++) {
        if(j <= height - 60) {
            squareBgFunction(); 
            println(howManySquares);
        }
    }
    fill(128);
    rect(0,height - 60,width,height);
}

void playerDraw() {
   stroke(255);
   for(int y = 1; y < mouseY; y++){
        circle(width/2, y, 20);
   }
}

void squareBgFunction() {
    float greenColor = random(0,255);
    fill(0,greenColor,0);
    square(i,j,20);
    i = i + 20;
    if(i == width) {
        j = j + 20;    
        i = 0;
    }
    howManySquares++;
}

//int checkDepth(){


//}

//void keyPressed(){


//}
