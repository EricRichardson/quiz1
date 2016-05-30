var evenNumbers = function(n){
  evens = [];
  for (i = 2; i <= n*2; i += 2){
    evens.push(i);
  }
  return evens;
};

// Tests
console.log("The first even number is: " + evenNumbers(1));
console.log("The first  4 even numbers are: " + evenNumbers(4));
console.log("The first 10 even number are: " + evenNumbers(10));
console.log("The first 100 number are: " + evenNumbers(100));
