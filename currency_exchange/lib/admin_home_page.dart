import 'package:flutter/material.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int selectedTab = 0; // 0 = Product, 1 = Category, 2 = Seller

  // Dummy product data
  final List<Map<String, String>> products = [
    {"name": "Fresh Apple", "price": "₹150", "stock": "30 kg"},
    {"name": "Khari", "price": "₹10", "stock": "200 pkt"},
    {"name": "Cashew", "price": "₹570", "stock": "20 kg"},
    {"name": "Buffalo Milk", "price": "₹40", "stock": "50 L"},
    {"name": "Banana", "price": "₹40", "stock": "32 Dozen"},
    {"name": "Pav", "price": "₹40", "stock": "150 pkt"},
    {"name": "Almond", "price": "₹480", "stock": "36 kg"},
    {"name": "Mango", "price": "₹120", "stock": "25 kg"},
    {"name": "Orange", "price": "₹90", "stock": "40 kg"},
    {"name": "Sugar", "price": "₹45", "stock": "100 kg"},
    {"name": "Rice", "price": "₹70", "stock": "80 kg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Admin Management",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                "assets/profile.png",
              ), // ✅ replace with your asset
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            // Tabs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTab("Product", 0),
                _buildTab("Category", 1),
                _buildTab("Seller", 2),
              ],
            ),
            const SizedBox(height: 20),

            // Product List Table
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                ),
                child: SingleChildScrollView(
                  child: Table(
                    columnWidths: const {
                      0: FlexColumnWidth(3),
                      1: FlexColumnWidth(2),
                      2: FlexColumnWidth(2),
                      3: FlexColumnWidth(2),
                    },
                    border: TableBorder.all(
                      color: Colors.grey.shade400,
                      width: 1,
                    ),
                    children: [
                      // Header Row
                      TableRow(
                        decoration: BoxDecoration(color: Colors.grey[400]),
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Name",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Price",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Stock",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Actions",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),

                      // Product Rows
                      for (var product in products)
                        TableRow(
                          decoration: const BoxDecoration(color: Colors.white),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(product["name"]!),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(product["price"]!),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(product["stock"]!),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      // TODO: Edit functionality
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        products.remove(product);
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Tab builder
  Widget _buildTab(String text, int index) {
    final isSelected = selectedTab == index;
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.green : Colors.white,
          foregroundColor: isSelected ? Colors.white : Colors.black,
          side: const BorderSide(color: Colors.green),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        onPressed: () {
          setState(() {
            selectedTab = index;
          });
        },
        child: Text(text),
      ),
    );
  }
}
