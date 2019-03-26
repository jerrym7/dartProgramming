/*
Created by Gerardo Martinez
*/
import 'dart:io';
void main(){
  print(new Person("Dart Programming", 29, 1000, "123-00-4567"));
  print("---------------------------------------------------");
  print(new Person("name",1,200,"123-00-9876"));
}

//blueprint for student object
class Person{
  //private variables start with '_'
  var name = "";
  var _age = 1; //start, can use int too
  var _heightcm = 10; //can use double
  var _ssn = "000-00-0000";
  Person(var name,var age, var heightcm, var ssn){
    this.name =name;
    this._age = age;
    this._heightcm = heightcm;
    this._ssn = validateSSN(ssn);
  }
  //validate ssn with '-'
String validateSSN(var ssn){
  if(ssn[3] == "-" && this._ssn.length == 11 && ssn[6] == "-"){
    return ssn;
  }
  else{
    print("Invalid SSN! Please enter it again: ");
    ssn = stdin.readLineSync();
    return validateSSN(ssn);
  }
}
//set name
setName(var name){
  this.name = name;
}
//get name, returns string
getName(){
  return this.name;
}
//set age
setAge(var age){
  this._age = age;
}
//get age for the person
getAge(){
  return this._age;
}
//set height in cm
setHeight(var cm){
  this._heightcm = cm;
}
//get the height in cm
getHeight(){
  return this._heightcm;
}
//set social security number
setSSN(var ssn){
  this._ssn = ssn;
}
//get social security number
getSSN(){
  return this._ssn;
}
//overide toString() method.
toString(){
  return "Name: " + this.name + "\n" +"Age: " + this._age.toString() + "\n" + "Height: " + this._heightcm.toString() +" cm\n" + "SSN: " + this._ssn;
}

}