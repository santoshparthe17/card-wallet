import 'package:flutter/material.dart';

class CardAndWalletScreen extends StatefulWidget {
  const CardAndWalletScreen({super.key});

  @override
  State<CardAndWalletScreen> createState() => _CardAndWalletScreenState();
}

class _CardAndWalletScreenState extends State<CardAndWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Card & Wallets',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            weight: 50,
            size: 20,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Card Section
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    // margin: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 1,
                              color: Color.fromARGB(255, 240, 240, 240))
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white,
                              Color.fromARGB(255, 190, 201, 241)
                            ])),
                    child: Container(
                        // padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          //color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Stack(
                          alignment:
                              Alignment.center, // Ensures the icon is centered
                          children: [
                            // Background Image
                            Image.asset(
                              'assets/card_img.png', // Replace with your image path
                              fit: BoxFit
                                  .cover, // Ensures the image fits the container
                              width: double
                                  .infinity, // Optional: Make it fill the width
                              height: 200, // Adjust height as needed
                            ),
                            // Centered Icon
                            const Icon(
                              Icons.lock_outlined, // Lock icon
                              color: Colors.white, // White icon color
                              size: 50, // Icon size, adjust as needed
                            ),
                          ],
                        )),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1, // Gives this container 50% of the width
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12)),
                            color: Color.fromARGB(255, 190, 201, 241),
                          ),
                          child: const Row(
                            children: [
                              Text(
                                "Card Status :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Inactive",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex:
                            1, // Gives this container the remaining 50% of the width
                        child: Container(
                          alignment: Alignment.center,
                          //  padding: EdgeInsets.all(5),
                          padding: const EdgeInsets.all(9),
                          margin: const EdgeInsets.only(top: 3, left: 5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 190, 201, 241),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 125, 125, 125))),
                          child: const Text(
                            'Guide',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 25, 19, 119)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // Activate Card Section
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Activate your LifelineCard',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '₹ 3499/- Life Time',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 25, 19, 119)),
                          ),
                          SizedBox(height: 2),
                          Text(
                            '₹ 9999/Year',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.red,
                              decoration: TextDecoration
                                  .lineThrough, // Adds a horizontal line on the text
                              decorationColor: Colors.red, // Color of the line
                              decorationThickness: 2,
                            ),
                          ),
                          Text(
                            'Offer Ends Soon!',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          SizedBox(
                              width: 100,
                              child: Image.asset('assets/man_card_img.png'))
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 25, 19, 119),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Activate Now',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  const Text(
                    'Our Features',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex:
                            1, // Gives this container the remaining 50% of the width
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(2),
                          //  padding: EdgeInsets.all(9),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 219, 216, 216))),
                          child: const Text(
                            'Udhar Limit : ₹ 74425',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                      Expanded(
                        flex:
                            1, // Gives this container the remaining 50% of the width
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(2),
                          //  padding: EdgeInsets.all(9),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 219, 216, 216))),
                          child: const Text(
                            'CP EMI Limit : ₹ 74425',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildFeatureItem('Udhar', '₹ 74425', Icons.credit_card),
                      buildFeatureItem(
                          'CP EMI', '₹ 74425', Icons.account_balance_wallet),
                      buildFeatureItem(
                          'Business Funds', '', Icons.business_center),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                'Wallet',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            // Wallet Section
            buildWalletCard('Lifeline Card Wallet', 'Upcoming EMI/Udhar',
                '4356', '4136', false),
            buildWalletCard(
                'Lifeline Coin', 'Lifeline Magic Coin', '4356', '600', true),
            buildWalletCard(
                'Cashback Coin', 'Add Credit Coin', '4356', '', true,
                isAddCredit: true),
          ],
        ),
      ),
    );
  }

  Widget buildFeatureItem(String title, String value, IconData icon) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border:
                    Border.all(color: const Color.fromARGB(255, 215, 212, 212)),
                color: const Color.fromARGB(255, 232, 230, 230)),
            child: Icon(icon, color: Colors.black, size: 28)),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget buildWalletCard(String title, String subtitle, String amount,
      String upcommingEmi, bool showDate,
      {bool isAddCredit = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 25, 19, 119),
                      radius: 24,
                      child: Icon(Icons.wallet,
                          color: Color.fromARGB(255, 206, 204, 239)),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          subtitle,
                          style: TextStyle(
                            fontSize: 14,
                            color: isAddCredit ? Colors.red : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Text(
                          amount,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          upcommingEmi,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2, // Gives this container 50% of the width
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 0,
                          offset: const Offset(1, 3),
                        ),
                      ],
                    ),
                    child: showDate
                        ? const Text(
                            '11th Sep 2023 To 11 Oct 2023',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          )
                        : const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Withdraw",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 25, 19, 119),
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Transfer",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 25, 19, 119),
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                  ),
                ),
                Expanded(
                  flex:
                      1, // Gives this container the remaining 50% of the width
                  child: Container(
                    alignment: Alignment.center,
                    //  padding: EdgeInsets.all(5),
                    padding: const EdgeInsets.all(7),
                    margin: const EdgeInsets.only(top: 5, left: 4),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 190, 201, 241),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromARGB(255, 125, 125, 125))),
                    child: const Text(
                      'More',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 25, 19, 119)),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
