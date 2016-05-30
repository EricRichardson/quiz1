var isPrime = function(n){
  prime = true;
  for(var i = 3; i < n; i++){
    if(n % i == 0){
      prime = false
    };
  };
  return prime
}

// Tests
console.log("Is 2 prime?" + isPrime(2));
console.log("Is 7 prime?" + isPrime(7));
console.log("Is 20 prime?" + isPrime(20));
console.log("Is 100 prime?" + isPrime(100));
console.log("Is 97 prime?" + isPrime(97));
