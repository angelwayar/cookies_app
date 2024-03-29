class Cookie {
  final String name;
  final String price;
  final String image;

  const Cookie({
    required this.name,
    required this.price,
    required this.image,
  });
}

const cookies = [
  Cookie(
    name: "Chocolate chips",
    price: "20 USD",
    image: "assets/1.png",
  ),
  Cookie(
    name: "Oatmeal with raisins",
    price: "16 USD",
    image: "assets/2.png",
  ),
];
