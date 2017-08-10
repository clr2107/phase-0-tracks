var horses = ["Michelle", "Cat","Sea_Biscuit","Carrott"]
var colors = ["teal","burgundy","gold","salmon"]

colors.push("turquoise")
horses.push("Joe")

// Release 1: Build an Object
var object = {};
for (var i = 0; i <horses.length; i++) {
  object[horses[i]] = colors[i];
}
console.log(object)

// Release 2: Build Many Objects Using a Constructor

function Car(color,year,make,model) {
  this.color = color;
  this.year = year;
  this.make = make;
  this.model = model;
  this.sound = function() { console.log("Vroom Vroom!"); };
}


var new_car = new Car("black","2017","Ferrari","Spider");
console.log("Check out my new car, it's a: " +  new_car.year + " " + new_car.color + " " + new_car.make + " " + new_car.model)
console.log("Listen to it roar!")
new_car.sound();

var new_car2 = new Car("pink","2015","Nissan","Roque");
console.log("Check out my new car, it's a: " +  new_car2.year + " " + new_car2.color + " " + new_car2.make + " " + new_car2.model)
console.log("Listen to it roar!")
new_car.sound();