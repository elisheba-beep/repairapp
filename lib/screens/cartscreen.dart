import 'package:flutter/material.dart';
import 'package:repairapp/widgets/fixappliancecard.dart';
import 'package:repairapp/widgets/cartordercard.dart';
import 'package:repairapp/widgets/cartappliancecard.dart';
import 'package:repairapp/widgets/orderbutton.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: const Color(0xffF9F9F9),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const FixApplianceCard(
                  appliance: "Fix Microwave",
                  location: "Kitchen",
                  url: "assets/images/microwave.png",
                ),
              ),
            ),
            Column(
              children: const [
                CartOrderCard(
                  order: "Set up Microwave",
                  price: "\$22",
                ),
                SizedBox(
                  height: 2,
                ),
                CartOrderCard(
                  order: "Repair Microwave",
                  price: "\$80",
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const CartApplianceCard(
              price: "\$70",
              appliance: "Fix Fridge",
              location: "2 Service",
              url: "assets/images/fridge.png",
            ),
            const SizedBox(
              height: 15,
            ),
            const CartApplianceCard(
              price: "\$135",
              appliance: "Fix Washer",
              location: "1 Service",
              url: "assets/images/washer.png",
            ),
            const SizedBox(
              height: 15,
            ),
            const CartApplianceCard(
              price: "\$30",
              appliance: "Fix Computer",
              location: "1 Service",
              url: "assets/images/computer.png",
            ),
            const SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Total price",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7B7B7B),
                    ),
                  ),
                  Text(
                    "\$302",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            OrderButton(
              backgroundcolor: Colors.black,
              textcolor: Colors.white,
              width: 410,
              title: "Make an order",
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
