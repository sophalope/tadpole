Tadpole tad;

void setup(){
size(900,900);
tad = new Tadpole();
}

void draw(){
background(#CBA8EA);
tad.display();
tad.move();
tad.wiggle();
}
