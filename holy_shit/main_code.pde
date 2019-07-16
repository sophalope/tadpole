Tadpole tad;

void setup(){
background(255);
size(900,900);
tad = new Tadpole();
}

void draw(){
tad.display();
tad.move();
if (mousePressed){
tad.wiggle();
}
}
