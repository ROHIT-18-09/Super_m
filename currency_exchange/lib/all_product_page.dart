import 'package:flutter/material.dart';
import 'product_detail_page.dart'; // ✅ Import your detail page
import 'search_page.dart';
import 'cart_page.dart'; // ✅ Import your cart page
import 'order_page.dart'; // ✅ Import your order page
import 'profile_page.dart'; // ✅ Import your profile page

class AllProductPage extends StatelessWidget {
  const AllProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> allProducts = [
      {
        "name": "Khari (1 pkt)",
        "price": "₹10",
        "image": "assets/category/Bakery/Khari.jpg",
        "description": "Crispy and flaky baked puff snack, perfect with tea.",
      },
      {
        "name": "Pav (1 pkt)",
        "price": "₹40",
        "image": "assets/category/Bakery/Pav.jpg",
        "description":
            "Soft and fluffy pav bread, ideal for pav bhaji and vada pav.",
      },
      {
        "name": "Sandwich Bread (1 pkt)",
        "price": "₹30",
        "image": "assets/category/Bakery/Sandwich_Bread.jpg",
        "description":
            "Fresh and soft sandwich bread, perfect for breakfast and snacks.",
      },
      {
        "name": "Bakery Cone",
        "price": "₹15",
        "image": "assets/category/Bakery/Cream_Roll.jpg",
        "description": "Delicious cream-filled cone, a sweet bakery delight.",
      },
      {
        "name": "Toast (1 pkt)",
        "price": "₹20",
        "image": "assets/category/Bakery/tost.jpg",
        "description": "Crispy golden toast, best enjoyed with butter or jam.",
      },
      {
        "name": "Nankhatai (1 pkt)",
        "price": "₹50",
        "image": "assets/category/Bakery/Nankhatai.jpg",
        "description": "Traditional Indian shortbread cookies, rich in flavor.",
      },
      {
        "name": "Cashew (500 g)",
        "price": "₹570",
        "image": "assets/category/Dry_fruite/Kaju.webp",
        "description": "Premium cashews packed with nutrition and crunch.",
      },
      {
        "name": "Dried Grapes (500 g)",
        "price": "₹250",
        "image": "assets/category/Dry_fruite/kismis.jpg",
        "description":
            "Sweet dried grapes (raisins), great for snacking and desserts.",
      },
      {
        "name": "Almond (500 g)",
        "price": "₹480",
        "image": "assets/category/Dry_fruite/Almond.jpg",
        "description":
            "Crunchy and healthy almonds, rich in protein and vitamins.",
      },
      {
        "name": "Walnuts (500 g)",
        "price": "₹540",
        "image": "assets/category/Dry_fruite/Walnuts.jpg",
        "description": "Fresh walnuts, a powerhouse of nutrition and omega-3.",
      },
      {
        "name": "Hazelnuts (500 g)",
        "price": "₹640",
        "image": "assets/category/Dry_fruite/HazelNuts.jpg",
        "description": "Delicious hazelnuts, perfect for snacking or baking.",
      },
      {
        "name": "Dates (500 g)",
        "price": "₹490",
        "image": "assets/category/Dry_fruite/dates.jpg",
        "description": "Naturally sweet and energy-rich dates.",
      },
      {
        "name": "Milk (500 ml)",
        "price": "₹40",
        "image": "assets/category/Dairy/milk.jpg",
        "description": "Fresh and pure milk, full of nutrition and taste.",
      },
      {
        "name": "Butter (500 g)",
        "price": "₹300",
        "image": "assets/category/Dairy/Butter.jpg",
        "description": "Rich, creamy butter for cooking and baking.",
      },
      {
        "name": "Cheese (500 g)",
        "price": "₹150",
        "image": "assets/category/Dairy/Cheese.jpg",
        "description":
            "Delicious processed cheese, great for sandwiches and pizzas.",
      },
      {
        "name": "Dahi (500 ml)",
        "price": "₹80",
        "image": "assets/category/Dairy/Curd.webp",
        "description": "Fresh curd, rich in probiotics and taste.",
      },
      {
        "name": "Ghee (500 g)",
        "price": "₹420",
        "image": "assets/category/Dairy/Ghee.webp",
        "description": "Pure cow ghee, perfect for cooking and health.",
      },
      {
        "name": "Paneer (500 g)",
        "price": "₹220",
        "image": "assets/category/Dairy/Paneer.jpg",
        "description": "Soft and fresh paneer, great for curries and snacks.",
      },
      {
        "name": "Makhan (500 ml)",
        "price": "₹600",
        "image": "assets/category/Dairy/Makhan.jpg",
        "description": "Traditional white butter with authentic taste.",
      },
      {
        "name": "Malai (500 ml)",
        "price": "₹700",
        "image": "assets/category/Dairy/Malai.jpg",
        "description":
            "Thick and creamy malai, perfect for desserts and gravies.",
      },
      {
        "name": "Coke (250 ml)",
        "price": "₹40",
        "image": "assets/category/Beverages/Coke_250ml.jpg",
        "description": "Refreshing Coca-Cola soft drink.",
      },
      {
        "name": "Sprite (250 ml)",
        "price": "₹40",
        "image": "assets/category/Beverages/Sprite_250ml.jpg",
        "description": "Cool and crisp lemon-lime flavored drink.",
      },
      {
        "name": "Coolberg (250 ml)",
        "price": "₹110",
        "image": "assets/category/Beverages/Coolberg.jpg",
        "description": "Non-alcoholic beer, refreshing and unique taste.",
      },
      {
        "name": "Fanta (250 ml)",
        "price": "₹40",
        "image": "assets/category/Beverages/Fanta.jpg",
        "description": "Fruity and refreshing orange-flavored drink.",
      },
      {
        "name": "Redbull (250 ml)",
        "price": "₹130",
        "image": "assets/category/Beverages/Redbull.webp",
        "description": "Energy drink that revitalizes body and mind.",
      },
      {
        "name": "Hell (250 ml)",
        "price": "₹40",
        "image": "assets/category/Beverages/Hell.jpeg",
        "description": "Strong energy drink with bold taste.",
      },
      {
        "name": "Kingfisher (250 ml)",
        "price": "₹60",
        "image": "assets/category/Beverages/Kingfisher.jpg",
        "description": "Refreshing beverage with crisp taste.",
      },
      {
        "name": "Banana Chips (500 g)",
        "price": "₹80",
        "image": "assets/category/Snakes/Banana_Chips.jpg",
        "description": "Crispy and crunchy banana chips.",
      },
      {
        "name": "Potato Chips (500 g)",
        "price": "₹70",
        "image": "assets/category/Snakes/Poteto_chips.jpg",
        "description": "Classic salted potato chips.",
      },
      {
        "name": "Gathiya (500 g)",
        "price": "₹50",
        "image": "assets/category/Snakes/Ganthiya.webp",
        "description": "Traditional Gujarati snack made from gram flour.",
      },
      {
        "name": "Farali Chevado (500 g)",
        "price": "₹60",
        "image": "assets/category/Snakes/Farali_chevado.webp",
        "description": "Crunchy and tasty chevdo, ideal for fasting.",
      },
      {
        "name": "Chvanu (500 g)",
        "price": "₹50",
        "image": "assets/category/Snakes/Chvanu.jpg",
        "description": "Spicy and crunchy traditional Indian mixture.",
      },
      {
        "name": "Chatpuri (500 g)",
        "price": "₹70",
        "image": "assets/category/Snakes/Chatpuri.webp",
        "description": "Tangy and spicy snack, full of flavor.",
      },
      {
        "name": "Bhakharvadi (500 g)",
        "price": "₹65",
        "image": "assets/category/Snakes/Bhakharvadi.jpg",
        "description": "Spicy and crunchy rolled snack with masala filling.",
      },
      {
        "name": "Masur Dal (500 g)",
        "price": "₹40",
        "image": "assets/category/Grains_Pulses/Masur_dal.webp",
        "description": "Protein-rich masoor dal, cooks quickly.",
      },
      {
        "name": "Tuver Dal (500 g)",
        "price": "₹50",
        "image": "assets/category/Grains_Pulses/Tuver_dal.jpg",
        "description": "Nutritious tuvar dal, perfect for Gujarati dal.",
      },
      {
        "name": "Chana Dal (500 g)",
        "price": "₹45",
        "image": "assets/category/Grains_Pulses/Chana_dal.jpg",
        "description": "Healthy chana dal, widely used in Indian curries.",
      },
      {
        "name": "Mug (500 g)",
        "price": "₹60",
        "image": "assets/category/Grains_Pulses/Mug.jpg",
        "description": "Green gram packed with nutrients and protein.",
      },
      {
        "name": "Mogar Dal (500 g)",
        "price": "₹55",
        "image": "assets/category/Grains_Pulses/Mogar_dal.jpg",
        "description": "Split moong dal, light and easy to digest.",
      },
      {
        "name": "Rice (1 kg)",
        "price": "₹50",
        "image": "assets/category/Grains_Pulses/Rice.webp",
        "description": "Premium quality rice, fluffy and aromatic.",
      },
      {
        "name": "Wheat (1 kg)",
        "price": "₹60",
        "image": "assets/category/Grains_Pulses/Wheat.webp",
        "description": "Fresh whole wheat, perfect for rotis and bread.",
      },
      {
        "name": "Bajara (1 kg)",
        "price": "₹65",
        "image": "assets/category/Grains_Pulses/Bajara.jpg",
        "description": "Nutritious millet, high in fiber and minerals.",
      },
      {
        "name": "Cabbage (1 kg)",
        "price": "₹30",
        "image": "assets/category/Vegetables/Cabbag.jpg",
        "description": "Fresh green cabbage, rich in vitamins.",
      },
      {
        "name": "Cauliflower (1 kg)",
        "price": "₹46",
        "image": "assets/category/Vegetables/Cauliflower.webp",
        "description": "Farm-fresh cauliflower, full of nutrition.",
      },
      {
        "name": "Eggplant (1 kg)",
        "price": "₹50",
        "image": "assets/category/Vegetables/Eggplant.jpg",
        "description": "Fresh brinjals, soft and delicious when cooked.",
      },
      {
        "name": "Potato (1 kg)",
        "price": "₹30",
        "image": "assets/category/Vegetables/Poteto.jpg",
        "description": "Farm-fresh potatoes, versatile in every dish.",
      },
      {
        "name": "Tomato (1 kg)",
        "price": "₹80",
        "image": "assets/category/Vegetables/Tameto.jpg",
        "description": "Fresh and juicy tomatoes, rich in vitamin C.",
      },
      {
        "name": "Apple (1 kg)",
        "price": "₹80",
        "image": "assets/category/Fruite/apple.jpeg",
        "description": "Crisp and juicy apples, full of vitamins.",
      },
      {
        "name": "Banana (1 dozen)",
        "price": "₹40",
        "image": "assets/category/Fruite/banana.jpg",
        "description": "Fresh bananas, full of energy and nutrition.",
      },
      {
        "name": "Dragon Fruit (1 kg)",
        "price": "₹210",
        "image": "assets/category/Fruite/Dregon_fruit.jpg",
        "description": "Exotic dragon fruit, sweet and refreshing.",
      },
      {
        "name": "Grapes (1 kg)",
        "price": "₹60",
        "image": "assets/category/Fruite/Grapes.jpg",
        "description": "Fresh grapes, sweet and juicy.",
      },
      {
        "name": "Guava (1 kg)",
        "price": "₹60",
        "image": "assets/category/Fruite/Guava.jpg",
        "description": "Fresh guavas, crunchy and full of vitamin C.",
      },
      {
        "name": "Orange (1 kg)",
        "price": "₹60",
        "image": "assets/category/Fruite/Orange.webp",
        "description": "Juicy oranges, rich in vitamin C and flavor.",
      },
      {
        "name": "Strawberry (500 g)",
        "price": "₹110",
        "image": "assets/category/Fruite/Straw_barry.jpg",
        "description": "Sweet and tangy strawberries, great for desserts.",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "All Product",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      // 🔹 Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: 0, // ✅ Home is selected by default
        onTap: (index) {
          if (index == 0) {
            // Already on Home
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyOrderPage()),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: allProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final product = allProducts[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailPage(
                      name: product["name"]!,
                      price: product["price"]!,
                      image: product["image"]!,
                      description: product["description"]!,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                      child: Image.asset(
                        product["image"]!,
                        height: 100,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                      child: Text(
                        product["name"]!,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        product["price"]!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _showAddedPopup(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          minimumSize: const Size(double.infinity, 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          "Add to Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // ✅ Popup message
  static void _showAddedPopup(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent closing by tapping outside
      builder: (BuildContext context) {
        // Auto-close after 1.5 seconds
        Future.delayed(const Duration(milliseconds: 1500), () {
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
          }
        });

        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          contentPadding: EdgeInsets.zero, // remove default padding
          content: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),

                    // Checkmark Icon
                    const Image(
                      image: AssetImage('assets/Check_mark.png'),
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(height: 15),

                    // Text
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Item ",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "added to the cart",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // View Cart Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CartPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "View Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Close button (top-right corner)
              Positioned(
                right: 0,
                top: 0,
                child: IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black54,
                    size: 22,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(); // Close popup immediately
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
