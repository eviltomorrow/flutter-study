void main(){
  // print(fetchUserOrder());

  print(fetchUserOrder2());
}

String createOrderMessage(){
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() => Future.delayed(const Duration(seconds: 2), () {
  print('Future function run');
  return 'Large Latte';
});

Future<void> fetchUserOrder2() => Future.delayed(const Duration(seconds: 2), () => throw Exception('Logout failed'));

