import 'package:flutter/material.dart';
import 'package:repairapp/widgets/servicepricecard.dart';
import 'package:repairapp/widgets/orderbutton.dart';

class MicrowaveScreen extends StatelessWidget {
  const MicrowaveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xFFF3B29E),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Fix Microwave",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: const Color(0xFFF3B29E),
            height: 350,
            child: Center(
              child: Image.asset(
                "assets/images/microwave_big.png",
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 280,
                  height: 63,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Reviews",
                      style: TextStyle(
                        color: Color(0xFF1B1B1D),
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFF3B29E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // <-- Radius
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 90,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Icon(Icons.chat_outlined),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // <-- Radius
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ServicePriceCard(
            service: "Repair",
            price: "\$52",
          ),
          const ServicePriceCard(
            service: "Setup",
            price: "\$12",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OrderButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sixth');
                  },
                  width: 180,
                  backgroundcolor: Colors.black,
                  textcolor: Colors.white,
                  title: "Order repair",
                ),
                OrderButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sixth');
                  },
                  width: 180,
                  backgroundcolor: Colors.white,
                  textcolor: Colors.black,
                  title: "Order setup",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
