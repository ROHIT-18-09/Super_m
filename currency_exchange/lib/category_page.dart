import 'package:flutter/material.dart';
import 'product_list_page.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
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
              "Grains & Pulses",
              "assets/category/Grains_Pulses/main_logo.webp",
              context,
            ),
            buildCategory(
              "Snacks",
              "assets/category/Snakes/main_logo.png",
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
    );
  }

  // ✅ Product mapping with description
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
