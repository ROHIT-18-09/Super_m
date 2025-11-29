import 'package:flutter/material.dart';
import 'home.dart';
import 'search_page.dart';
import 'payment_done.dart';
import 'order_page.dart'; // ✅ Import your OrderPage
import 'profile_page.dart'; // ✅ Import your ProfilePage

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String selectedMethod = "Cash on Delivery"; // default selection

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Payment",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select Payment Method",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Cash on Delivery
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedMethod = "Cash on Delivery";
                });
              },
              child: Container(
                padding: const EdgeInsets.all(14),
                margin: const EdgeInsets.only(bottom: 14),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedMethod == "Cash on Delivery"
                        ? Colors.green
                        : Colors.grey.shade400,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Radio<String>(
                      value: "Cash on Delivery",
                      groupValue: selectedMethod,
                      onChanged: (value) {
                        setState(() {
                          selectedMethod = value!;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cash on Delivery",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Pay with cash upon delivery of your order. Simple and secure.",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.currency_rupee,
                      size: 30,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),

            // UPI Payment
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedMethod = "UPI Payment";
                });
              },
              child: Container(
                padding: const EdgeInsets.all(14),
                margin: const EdgeInsets.only(bottom: 14),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedMethod == "UPI Payment"
                        ? Colors.green
                        : Colors.grey.shade400,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Radio<String>(
                      value: "UPI Payment",
                      groupValue: selectedMethod,
                      onChanged: (value) {
                        setState(() {
                          selectedMethod = value!;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "UPI Payment",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Pay instantly using your preferred UPI app. Fast and convenient.",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.phone_android,
                      size: 30,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(),

            // Confirm Payment Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentDonePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Confirm Payment",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: 2, // Cart tab
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 1) {
            // Search page
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SearchPage()),
            );
          } else if (index == 2) {
            // Already on Cart
          } else if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyOrderPage()),
            );
          } else if (index == 4) {
            Navigator.pushReplacement(
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
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Product"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
