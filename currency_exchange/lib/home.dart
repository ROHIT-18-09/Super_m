import 'package:flutter/material.dart';
import 'product_list_page.dart';
import 'category_page.dart';
import 'all_product_page.dart';
import 'product_detail_page.dart';
import 'search_page.dart';
import 'cart_page.dart';
import 'order_page.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ✅ Fixed AppBar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Supermarket",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              borderRadius: BorderRadius.circular(18), // ripple effect shape
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey[300],
                child: const Icon(Icons.person, color: Colors.black),
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),

      // ✅ Scrollable Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Categories Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CategoryPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "See all",
                      style: TextStyle(color: Colors.green, fontSize: 14),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // 🔹 Categories (horizontal scroll)
              SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildCategory(
                      "Dry Fruit",
                      "assets/category/Dry_fruite/main_logo.png",
                      context,
                    ),
                    buildCategory(
                      "Bakery",
                      "assets/category/Bakery/main_logo.jpg",
                      context,
                    ),
                    buildCategory(
                      "Milk Product",
                      "assets/category/Dairy/main_logo.jpg",
                      context,
                    ),
                    buildCategory(
                      "Beverages",
                      "assets/category/Beverages/main_logo.png",
                      context,
                    ),
                    buildCategory(
                      "Snacks",
                      "assets/category/Snakes/main_logo.png",
                      context,
                    ),
                    buildCategory(
                      "Grains & Pulses",
                      "assets/category/Grains_Pulses/main_logo.webp",
                      context,
                    ),
                    buildCategory(
                      "Vegetables",
                      "assets/category/Vegetables/main_logo.jpg",
                      context,
                    ),
                    buildCategory(
                      "Fruits",
                      "assets/category/Fruite/main_logo.jpg",
                      context,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 Popular Products Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Products",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AllProductPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "See all",
                      style: TextStyle(color: Colors.green, fontSize: 14),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // 🔹 Popular Products Grid
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.75,
                children: [
                  buildProduct(
                    "Milk (500 ml)",
                    "₹40",
                    "assets/category/Dairy/milk.jpg",
                    "Fresh milk which provide you pure nutrition and health benefits.",
                    context,
                  ),
                  buildProduct(
                    "Khari (1 pkt)",
                    "₹10",
                    "assets/category/Bakery/Khari.jpg",
                    "Crispy, flaky, and light snack to enjoy with your morning/evening tea.",
                    context,
                  ),
                  buildProduct(
                    "Almond (500 g)",
                    "₹480",
                    "assets/category/Dry_fruite/Almond.jpg",
                    "Premium quality almonds, rich in protein and nutrients.",
                    context,
                  ),
                  buildProduct(
                    "Orange (1 kg)",
                    "₹80",
                    "assets/category/Fruite/Orange.webp",
                    "Juicy and fresh oranges packed with Vitamin C.",
                    context,
                  ),
                  buildProduct(
                    "Coke (250 ml)",
                    "₹30",
                    "assets/category/Beverages/Coke_250ml.jpg",
                    "Refreshing Coca-Cola to energize your day.",
                    context,
                  ),
                  buildProduct(
                    "Banana Chips (500 g)",
                    "₹80",
                    "assets/category/Snakes/Banana_Chips.jpg",
                    "Crispy and crunchy banana chips for a tasty snack.",
                    context,
                  ),
                ],
              ),
            ],
          ),
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
    );
  }

  // 🔹 Category Card
  static Widget buildCategory(
    String title,
    String imagePath,
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductListPage(
              categoryName: title,
              products: _getProductsForCategory(title),
            ),
          ),
        );
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              imagePath,
              height: 80,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 6),
          Text(title),
        ],
      ),
    );
  }

  // 🔹 Product Card with Detail Navigation
  static Widget buildProduct(
    String name,
    String price,
    String imagePath,
    String description,
    BuildContext context,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              name: name,
              price: price,
              image: imagePath,
              description: description,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(8),
              ),
              child: Image.asset(
                imagePath,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name, style: const TextStyle(fontSize: 14)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                price,
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () => _showAddedPopup(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 35),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Add to Cart",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Added to Cart Popup
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

  // 🔹 Category-wise Products
  static List<Map<String, String>> _getProductsForCategory(String category) {
    switch (category) {
      case "Dry Fruit":
        return [
          {
            "name": "Cashew (500 g)",
            "price": "₹570",
            "image": "assets/category/Dry_fruite/Kaju.webp",
            "description": "Crunchy cashews rich in protein and healthy fats.",
          },
          {
            "name": "Dried Grapes (500 g)",
            "price": "₹250",
            "image": "assets/category/Dry_fruite/kismis.jpg",
            "description": "Sweet raisins perfect for desserts and snacking.",
          },
          {
            "name": "Almond (500 g)",
            "price": "₹480",
            "image": "assets/category/Dry_fruite/Almond.jpg",
            "description": "Premium almonds packed with vitamin E and protein.",
          },
          {
            "name": "Walnuts (500 g)",
            "price": "₹540",
            "image": "assets/category/Dry_fruite/Walnuts.jpg",
            "description": "Walnuts full of omega-3, great for brain health.",
          },
          {
            "name": "Hazelnuts (500 g)",
            "price": "₹640",
            "image": "assets/category/Dry_fruite/HazelNuts.jpg",
            "description": "Hazelnuts, perfect for baking and snacking.",
          },
          {
            "name": "Dates (500 g)",
            "price": "₹490",
            "image": "assets/category/Dry_fruite/dates.jpg",
            "description": "Chewy dates, natural energy booster.",
          },
        ];
      case "Bakery":
        return [
          {
            "name": "Khari (1 pkt)",
            "price": "₹10",
            "image": "assets/category/Bakery/Khari.jpg",
            "description": "Crispy khari biscuits, light and flaky.",
          },
          {
            "name": "Sandwich Bread (1 pkt)",
            "price": "₹30",
            "image": "assets/category/Bakery/Sandwich_Bread.jpg",
            "description": "Soft bread ideal for sandwiches.",
          },
          {
            "name": "CreamRoll (1 piece)",
            "price": "₹15",
            "image": "assets/category/Bakery/Cream_Roll.jpg",
            "description": "Delicious sweet cream roll.",
          },
          {
            "name": "Nankhatai (1 pkt)",
            "price": "₹50",
            "image": "assets/category/Bakery/Nankhatai.jpg",
            "description": "Traditional Indian cookies, rich and buttery.",
          },
          {
            "name": "Pav (1 pkt)",
            "price": "₹35",
            "image": "assets/category/Bakery/Pav.jpg",
            "description": "Fresh pav buns, perfect for vada pav.",
          },
          {
            "name": "Toast (1 pkt)",
            "price": "₹20",
            "image": "assets/category/Bakery/tost.jpg",
            "description": "Crispy toasts, great with tea.",
          },
        ];
      case "Milk Product":
        return [
          {
            "name": "Milk (500 ml)",
            "price": "₹40",
            "image": "assets/category/Dairy/milk.jpg",
            "description": "Fresh buffalo milk for daily use.",
          },
          {
            "name": "Butter (500 g)",
            "price": "₹300",
            "image": "assets/category/Dairy/Butter.jpg",
            "description": "Creamy butter, perfect for bread and cooking.",
          },
          {
            "name": "Cheese (500 g)",
            "price": "₹150",
            "image": "assets/category/Dairy/Cheese.jpg",
            "description": "Rich cheese, adds taste to every dish.",
          },
          {
            "name": "Dahi (500 ml)",
            "price": "₹80",
            "image": "assets/category/Dairy/Curd.webp",
            "description": "Fresh curd, probiotic and healthy.",
          },
          {
            "name": "Ghee (500 g)",
            "price": "₹420",
            "image": "assets/category/Dairy/Ghee.webp",
            "description": "Pure ghee with rich aroma.",
          },
          {
            "name": "Paneer (500 g)",
            "price": "₹220",
            "image": "assets/category/Dairy/Paneer.jpg",
            "description": "Soft paneer, rich in protein.",
          },
          {
            "name": "Makhan (500 ml)",
            "price": "₹600",
            "image": "assets/category/Dairy/Makhan.jpg",
            "description": "Rich and creamy makhan.",
          },
          {
            "name": "Malai (500 ml)",
            "price": "₹700",
            "image": "assets/category/Dairy/Malai.jpg",
            "description": "Thick and creamy malai.",
          },
        ];
      case "Beverages":
        return [
          {
            "name": "Coke (250 ml)",
            "price": "₹40",
            "image": "assets/category/Beverages/Coke_250ml.jpg",
            "description": "Refreshing Coca-Cola drink.",
          },
          {
            "name": "Sprite (250 ml)",
            "price": "₹40",
            "image": "assets/category/Beverages/Sprite_250ml.jpg",
            "description": "Refreshing lime drink.",
          },
          {
            "name": "Coolberg (250 ml)",
            "price": "₹110",
            "image": "assets/category/Beverages/Coolberg.jpg",
            "description": "Non-alcoholic beer with a refreshing taste.",
          },
          {
            "name": "Fanta (250 ml)",
            "price": "₹40",
            "image": "assets/category/Beverages/Fanta.jpg",
            "description": "Fruity orange soft drink.",
          },
          {
            "name": "Redbull (250 ml)",
            "price": "₹130",
            "image": "assets/category/Beverages/Redbull.webp",
            "description": "Energy drink for instant boost.",
          },
          {
            "name": "Hell (250 ml)",
            "price": "₹40",
            "image": "assets/category/Beverages/Hell.jpeg",
            "description": "Spicy energy drink.",
          },
          {
            "name": "Kingfisher (250 ml)",
            "price": "₹60",
            "image": "assets/category/Beverages/Kingfisher.jpg",
            "description": "Amazing and mind refreshing fruit beer.",
          },
        ];
      case "Snacks":
        return [
          {
            "name": "Banana Chips (500 g)",
            "price": "₹80",
            "image": "assets/category/Snakes/Banana_Chips.jpg",
            "description": "Crispy banana chips for snacking.",
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
            "description": "Gujarati gathiya, crunchy snack.",
          },
          {
            "name": "Farali Chevado (500 g)",
            "price": "₹60",
            "image": "assets/category/Snakes/Farali_chevado.webp",
            "description": "Spicy and tangy farali chevado.",
          },
          {
            "name": "Chvanu (500 g)",
            "price": "₹50",
            "image": "assets/category/Snakes/Chvanu.jpg",
            "description": "Savory chvanu snack.",
          },
          {
            "name": "Chatpuri (500 g)",
            "price": "₹70",
            "image": "assets/category/Snakes/Chatpuri.webp",
            "description": "Spicy crispy chatpuri mix.",
          },
          {
            "name": "Bhakharvadi (500 g)",
            "price": "₹65",
            "image": "assets/category/Snakes/Bhakharvadi.jpg",
            "description": "Spicy, crispy snack roll.",
          },
        ];
      case "Grains & Pulses":
        return [
          {
            "name": "Masur Dal (500 g)",
            "price": "₹40",
            "image": "assets/category/Grains_Pulses/Masur_dal.webp",
            "description": "Protein rich masur dal.",
          },
          {
            "name": "Tuver Dal (500 g)",
            "price": "₹50",
            "image": "assets/category/Grains_Pulses/Tuver_dal.jpg",
            "description": "Popular tuver dal for Indian cooking.",
          },
          {
            "name": "Chana Dal (500 g)",
            "price": "₹45",
            "image": "assets/category/Grains_Pulses/Chana_dal.jpg",
            "description": "Nutritious chana dal.",
          },
          {
            "name": "Mug (500 g)",
            "price": "₹60",
            "image": "assets/category/Grains_Pulses/Mug.jpg",
            "description": "High quality mug dal.",
          },
          {
            "name": "Mogar Dal (500 g)",
            "price": "₹55",
            "image": "assets/category/Grains_Pulses/Mogar_dal.jpg",
            "description": "Healthy mogar dal.",
          },
          {
            "name": "Rice (1 kg)",
            "price": "₹50",
            "image": "assets/category/Grains_Pulses/Rice.webp",
            "description": "Premium quality rice.",
          },
          {
            "name": "Wheat (1 kg)",
            "price": "₹60",
            "image": "assets/category/Grains_Pulses/Wheat.webp",
            "description": "High quality wheat.",
          },
          {
            "name": "Bajara (1 kg)",
            "price": "₹65",
            "image": "assets/category/Grains_Pulses/Bajara.jpg",
            "description": "Nutritious bajra grain.",
          },
        ];
      case "Vegetables":
        return [
          {
            "name": "Cabbage (1 kg)",
            "price": "₹30",
            "image": "assets/category/Vegetables/Cabbag.jpg",
            "description": "Fresh green cabbage.",
          },
          {
            "name": "Cauliflower (1 kg)",
            "price": "₹46",
            "image": "assets/category/Vegetables/Cauliflower.webp",
            "description": "Farm fresh cauliflower.",
          },
          {
            "name": "Eggplant (1 kg)",
            "price": "₹50",
            "image": "assets/category/Vegetables/Eggplant.jpg",
            "description": "Fresh and firm eggplants.",
          },
          {
            "name": "Potato (1 kg)",
            "price": "₹30",
            "image": "assets/category/Vegetables/Poteto.jpg",
            "description": "Daily use potatoes.",
          },
          {
            "name": "Tomato (1 kg)",
            "price": "₹80",
            "image": "assets/category/Vegetables/Tameto.jpg",
            "description": "Juicy tomatoes full of flavor.",
          },
        ];
      case "Fruits":
        return [
          {
            "name": "Apple (1 kg)",
            "price": "₹80",
            "image": "assets/category/Fruite/apple.jpeg",
            "description": "Crisp and sweet apples.",
          },
          {
            "name": "Banana (1 dozen)",
            "price": "₹40",
            "image": "assets/category/Fruite/banana.jpg",
            "description": "Fresh bananas, rich in potassium.",
          },
          {
            "name": "Dragon Fruit (1 kg)",
            "price": "₹210",
            "image": "assets/category/Fruite/Dregon_fruit.jpg",
            "description": "Exotic dragon fruit, high in antioxidants.",
          },
          {
            "name": "Grapes (1 kg)",
            "price": "₹60",
            "image": "assets/category/Fruite/Grapes.jpg",
            "description": "Sweet and juicy grapes.",
          },
          {
            "name": "Guava (1 kg)",
            "price": "₹60",
            "image": "assets/category/Fruite/Guava.jpg",
            "description": "Fresh guavas rich in vitamin C.",
          },
          {
            "name": "Orange (1 kg)",
            "price": "₹60",
            "image": "assets/category/Fruite/Orange.webp",
            "description": "Fresh oranges rich in vitamin C.",
          },
          {
            "name": "Stawberry (500 g)",
            "price": "₹110",
            "image": "assets/category/Fruite/Straw_barry.jpg",
            "description": "Sweet and tangy strawberries.",
          },
        ];
      default:
        return [];
    }
  }
}
