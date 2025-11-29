import 'package:flutter/material.dart';
import 'admin_home_page.dart'; // <-- Admin Home page
import 'seller_home_page.dart'; // <-- Seller Home page

class RoleLoginPage extends StatefulWidget {
  const RoleLoginPage({super.key});

  @override
  State<RoleLoginPage> createState() => _RoleLoginPageState();
}

class _RoleLoginPageState extends State<RoleLoginPage> {
  bool isAdmin = true; // ✅ default selection

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Close button
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.close, size: 30),
                  onPressed: () => Navigator.pop(context),
                ),
              ),

              const SizedBox(height: 100),

              // Logo
              const Image(image: AssetImage("assets/logo.png"), height: 100),

              const SizedBox(height: 50),

              // Title
              const Text(
                "SuperMarket",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),

              const SizedBox(height: 20),

              const Text(
                "Select your role and log in to manage\nSuperMart operations.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 50),

              // Role Switcher (Admin/Seller)
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isAdmin
                              ? Colors.green
                              : Colors.white,
                          foregroundColor: isAdmin
                              ? Colors.white
                              : Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          setState(() => isAdmin = true);
                        },
                        child: const Text("Admin"),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: !isAdmin
                              ? Colors.green
                              : Colors.white,
                          foregroundColor: !isAdmin
                              ? Colors.white
                              : Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          setState(() => isAdmin = false);
                        },
                        child: const Text("Seller"),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Username/Email Field
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Username/Email Id",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your Username/Email id",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Password Field
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Login Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    if (isAdmin) {
                      // Go to Admin Home Page
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminHomePage(),
                        ),
                      );
                    } else {
                      // Go to Seller Home Page (create SellerHomePage separately)
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SellerHomePage(),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
