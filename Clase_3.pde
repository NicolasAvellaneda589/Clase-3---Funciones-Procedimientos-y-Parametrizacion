void setup(){
  size(800,600); 


}

void draw(){
  
  
  //centro del personaje
  int posicionBaseX = width / 2; 
  int posicionBaseY = height / 2;
  
  
  //ancho y largo del personaje
  int w = width / 16 + 10;
  int h = height / 5;
     
     if (mousePressed) {
       
         stickman(mouseX, mouseY, w, h);
 
     }
     
}


void cabezaStickman(int posicionBaseX, int posicionBaseY, int w, int h){
 
   strokeWeight(8);
   stroke(223, 89, 32);
   
   ellipse(posicionBaseX, posicionBaseY - h / 4, w / 3, h / 3);
}

void brazosStickman(int posicionBaseX, int posicionBaseY, int w, int h){
  
  //brazo izquierdo
  line(posicionBaseX, posicionBaseY - h / 12, posicionBaseX - w / 2, posicionBaseY + h / 8);
  
  //brazo derecho
  line(posicionBaseX, posicionBaseY - h / 12, posicionBaseX + w / 2, posicionBaseY + h / 8);
 
  
}

void torsoStickman(int posicionBaseX, int posicionBaseY, int w, int h){
  
 line(posicionBaseX, posicionBaseY - h / 12, posicionBaseX, posicionBaseY + h / 4);   
 
}

void piernasStickman(int posicionBaseX, int posicionBaseY, int w, int h){
  
  
  //pierna izquierda
  line(posicionBaseX, posicionBaseY + h / 4, posicionBaseX - w / 3, posicionBaseY + h * 0.75);
  
  //pierna derecha
  line(posicionBaseX, posicionBaseY + h / 4, posicionBaseX + w / 3, posicionBaseY + h * 0.75);
}

void stickman(int posicionBaseX, int posicionBaseY, int w, int h){
  
 cabezaStickman(posicionBaseX, posicionBaseY, w, h);
 brazosStickman(posicionBaseX, posicionBaseY, w, h);
 torsoStickman(posicionBaseX, posicionBaseY, w, h);
 piernasStickman(posicionBaseX, posicionBaseY, w, h);
  
}

  




  
