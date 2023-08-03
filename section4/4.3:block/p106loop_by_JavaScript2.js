// forEachメソッドを用いた繰り返し処理

const numbers = [1, 2, 3, 4];
let sum = 0;

numbers.forEach(function(n) {
  sum += n;
});

console.log(sum) //=> 10