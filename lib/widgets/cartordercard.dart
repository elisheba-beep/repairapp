import 'package:flutter/material.dart';

class CartOrderCard extends StatelessWidget {
  final String order;
  final String price;
  const CartOrderCard({Key? key, required this.order, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 410,
      height: 60,
      decoration: const BoxDecoration(
        color: Color(0xffd6e3ff),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.remove_circle,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 40,
                ),
                Text(
                  order,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              price,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF7B7B7B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
