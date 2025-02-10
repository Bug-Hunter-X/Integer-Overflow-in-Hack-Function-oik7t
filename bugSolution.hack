```hack
function foo(x: int): int {
  if (x > 2147483646) { // Check for potential overflow
    throw new Exception("Integer overflow in foo");
  }
  return x + 1;
}

function bar(x: int): int {
  var temp = foo(x);
  if (temp > 1073741823) { //Check for potential overflow
    throw new Exception("Integer overflow in bar");
  }
  return temp * 2;
}

function main(): void {
  echo bar(5);
}
```