import 'models/Cart.dart';

var t = 0.0;
var total = 0.0;
totalPrice() {
  demoCarts.forEach((element) {
    t = element.numOfItem * element.product.price;
    total = total + t;
  });
}
