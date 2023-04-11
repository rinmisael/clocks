import java.util.LinkedList;
int second, oldSecond;
LinkedList<String> queue = new LinkedList<String>();
String text = "";

void setup() {
  size(500, 500);
  textAlign(CENTER);
  // eliminar el primer elemento de la cola
  //String primerElemento = queue.remove();

  // obtener el primer elemento de la cola sin eliminarlo
  //String primerElemento2 = queue.peek();
  second = second();
  oldSecond = second;
}
//   --------

void draw() {

  second =  second();
  if ( oldSecond != second ) {
    oldSecond = second;
    queue.add(nf(hour(), 2) +" : " + nf(minute(), 2) + " : " + nf(second, 2) );
    println("------------   ", second);
    println(queue.size(), queue);
    if (queue.size() > 5 ) {
      queue.remove();
    }
     background(0);
    for (int i = 0; i < queue.size(); i++) {
    
      text = (" | " + queue.get(i) + " | ");
      text(text, width/2,  height - (i * (height / queue.size())));
    }
  }
}
