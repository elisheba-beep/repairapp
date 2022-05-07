import 'package:flutter/material.dart';
import 'package:repairapp/widgets/offercard.dart';
import 'package:repairapp/widgets/smallbutton.dart';
import 'package:repairapp/widgets/fixappliancecard.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF9F9F9),
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(
              left: 35,
            ),
            child: Icon(
              Icons.notes_rounded,
              color: Colors.black,
              size: 30,
            ),
          ),
          backgroundColor: const Color(0xffF9F9F9),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () => Navigator.pushNamed(
                  context,
                  '/sixth',
                ),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "What's broken?",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    cursorColor: const Color(0xff1B1B1D),
                    decoration: InputDecoration(
                      fillColor: const Color(0xffFFFEFE),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffD3D3D3),
                        ),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        borderSide: const BorderSide(
                          color: Color(0xffD3D3D3),
                        ),
                      ),
                      labelStyle: const TextStyle(
                        fontSize: 20,
                        color: Color(0xff1B1B1D),
                      ),
                      hintText: "Search appliances",
                      suffixIcon: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/search.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Offers",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  OfferCard(
                    bottomColor: Color(0xffF9F9F9),
                    topColor: Color(0xffCAE8F2),
                    title: "valid until June 20th",
                    offer: "with feedback get 5% off each repair",
                    image: "assets/images/person.png",
                  ),
                  OfferCard(
                    topColor: Color(0xFFEEEDF3),
                    bottomColor: Color(0xFFD1D3FA),
                    image: "assets/images/person.png",
                    offer: "sale on all appliance repairs",
                    title: "valid until July 20th",
                  ),
                  OfferCard(
                    bottomColor: Color(0xffF9F9F9),
                    topColor: Color(0xffCAE8F2),
                    title: "valid until June 20th",
                    offer: "with feedback get 5% off each repair",
                    image: "assets/images/person.png",
                  ),
                  OfferCard(
                    topColor: Color(0xffEEEDF3),
                    bottomColor: Color(0xffD1D3FA),
                    image: "assets/images/person.png",
                    offer: "sale on all appliance repairs",
                    title: "valid until July 20th",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "We can fix it",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      SmallButton(
                        elevation: 5,
                        textColor: Colors.white,
                        color: Colors.black,
                        title: "Offers",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallButton(
                        elevation: 0,
                        textColor: Color(0xFF7B7B7B),
                        title: "Kitchen",
                        color: Color(0xffF9F9F9),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallButton(
                        elevation: 0,
                        textColor: Color(0xFF7B7B7B),
                        title: "Livingroom",
                        color: Color(0xffF9F9F9),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallButton(
                        elevation: 0,
                        textColor: Color(0xFF7B7B7B),
                        title: "Bathroom",
                        color: Color(0xffF9F9F9),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/fifth');
                      },
                      child: const FixApplianceCard(
                        appliance: "Fix Microwave",
                        location: "Kitchen",
                        url: "assets/images/microwave.png",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const FixApplianceCard(
                    appliance: "Fix TV set",
                    location: "Living room",
                    url: "assets/images/tv.png",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
