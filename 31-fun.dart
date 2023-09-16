void main() {
  // final sayHi = (name) => 'hi, $name';
  // print(sayHi('Andrea'));
  const list = [1,2,3];
  list.forEach(print);
  final doubles = list.map((value) => value * 2);
  print(doubles);
}