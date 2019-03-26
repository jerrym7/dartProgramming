/*
* Created by: Gerardo Martinez onn 03/25/2019
*/

void main() { //main method
  //prints to objects and concat each to string object
  print(PrintWord("Hello").toString() +
        " " + new PrintWord("World").getWord());
}
//blueprint to create a printword object 
class PrintWord{
  var word = "";//word var
  PrintWord(var word){ //constructor that accepts a word
    this.word = word; //sets a word
  }
  //returns a string, word
  String getWord(){
    return this.word;
  }
  //set word
  setWord(var word){
    this.word = word;
  }
  //returns a string, but one don't need to specify
  toString(){
    return this.word;
  }
}