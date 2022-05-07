import 'package:flutter/material.dart';

class CartApplianceCard extends StatelessWidget {
  final String appliance;
  final String location;
  final String url;
  final String price;
  const CartApplianceCard(
      {Key? key,
      required this.appliance,
      required this.location,
      required this.url,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 410,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xffd6e3ff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFC7D9FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(url),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appliance,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        location,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    color: Color(0xFF7B7B7B),
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
