import 'package:prototipo/src/models/cart_item_model.dart';
import 'package:prototipo/src/models/item_model.dart';
import 'package:prototipo/src/models/user_model.dart';
import 'package:prototipo/src/pages/orders/order_model.dart';

ItemModel apple = ItemModel(
  description:
      'A melhor maçã da região e que conta com o melhor preço de qualquer quitanda.',
  imgUrl: 'assets/fruits/apple.png',
  itemName: 'Maçã',
  price: 5.5,
  unit: 'kg',
);

ItemModel grape = ItemModel(
  description:
      'A melhor uva da região e que conta com o melhor preço de qualquer quitanda.',
  imgUrl: 'assets/fruits/grape.png',
  itemName: 'Uva',
  price: 7.4,
  unit: 'kg',
);

ItemModel guava = ItemModel(
  description:
      'A melhor maçã da região e que conta com o melhor preço de qualquer quitanda.',
  imgUrl: 'assets/fruits/guava.png',
  itemName: 'Goiaba',
  price: 11.5,
  unit: 'kg',
);

ItemModel kiwi = ItemModel(
  description:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda.',
  imgUrl: 'assets/fruits/kiwi.png',
  itemName: 'Kiwi',
  price: 2.5,
  unit: 'un',
);

ItemModel mango = ItemModel(
  description:
      'A melhor manga da região e que conta com o melhor preço de qualquer quitanda.',
  imgUrl: 'assets/fruits/mango.png',
  itemName: 'Manga',
  price: 2.5,
  unit: 'un',
);

ItemModel papaya = ItemModel(
  description:
      'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda.',
  imgUrl: 'assets/fruits/papaya.png',
  itemName: 'Mamão papaya',
  price: 8,
  unit: 'kg',
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais',
];

List<CartItemModel> cartItems = [
  CartItemModel(
    item: apple,
    quantity: 1,
  ),
  CartItemModel(
    item: mango,
    quantity: 1,
  ),
  CartItemModel(
    item: guava,
    quantity: 3,
  ),
];

UserModel user = UserModel(
  phone: "99 9 9999-9999",
  cpf: '999.999.99-99',
  email: 'joao@email.com',
  name: "João Pedro",
  password: '',
);

List<OrderModel> orders = [
  // Pedido 01

  OrderModel(
      CopyAndPaste: 'sadasdas',
      createdDateTime: DateTime.parse(
        '2025-06-08 10:00:10.458',
      ),
      overdueDateTime: DateTime.parse(
        '2025-06-08 10:00:10.458',
      ),
      id: 'asd6a54da6sd2d1',
      status: 'pending_payment',
      total: 11,
      items: [
        CartItemModel(
          item: apple,
          quantity: 2,
        ),
        CartItemModel(
          item: mango,
          quantity: 2,
        )
      ]),

  // Pedido 02

  OrderModel(
      CopyAndPaste: 'sadasdas',
      createdDateTime: DateTime.parse(
        '2025-06-08 10:00:10.458',
      ),
      overdueDateTime: DateTime.parse(
        '2025-06-08 10:00:10.458',
      ),
      id: 'asd6a54da6sd2d1',
      status: 'delivered',
      total: 11.5,
      items: [
        CartItemModel(
          item: guava,
          quantity: 1,
        ),
      ])
];
