// import 'package:flutter/material.dart';

// class CategoryScreen extends StatefulWidget {
//   @override
//   _CategoryScreenState createState() => _CategoryScreenState();
// }

// class _CategoryScreenState extends State<CategoryScreen> {
//   int selectedCategoryIndex = 0;
//   int selectedFilterIndex = 0;

//   final List<String> categories = [
//     'Morning Meals',
//     'Fruits & Vegetables',
//     'Dal & Pulses',
//     'Instant Food',
//     'Dry Fruits'
//   ];

//   final List<String> filters = ['Cereals', 'Lorem', 'Lorem', 'Lorem'];

//   final List<Map<String, String>> products = [
//     {
//       'image': 'assets/kelloggs_cornflakes.png',
//       'name': "Kellogg's Cornflakes",
//       'weight': '650g',
//       'price': '80',
//       'originalPrice': '280',
//       'cashback': '10%'
//     },
//     {
//       'image': 'assets/kelloggs_oats.png',
//       'name': "Kellogg's Oats",
//       'weight': '500g',
//       'price': '80',
//       'originalPrice': '280',
//       'cashback': '10%'
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text('Store Detail'),
//         leading:
//             IconButton(onPressed: () {}, icon: Icon(Icons.back_hand_rounded)),
//       ),
//       body: Column(
//         children: [
//           // Store details section
//           Container(
//             height: 220,
//             // decoration: BoxDecoration(
//             //   image: DecorationImage(
//             //     image: AssetImage('assets/store_banner.png'),
//             //     fit: BoxFit.cover,
//             //   ),
//             // ),
//             child: Stack(
//               children: [
//                 Positioned(
//                   bottom: 10,
//                   left: 10,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'FreshMart',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         'Opens at 10:00 am',
//                         style: TextStyle(color: Colors.black),
//                       ),
//                       Text(
//                         'Blue Ridge, Lane 4, Pune, Maharashtra',
//                         style: TextStyle(color: Colors.black),
//                       ),
//                       Row(
//                         children: [
//                           Icon(Icons.location_on,
//                               color: Colors.black, size: 16),
//                           SizedBox(width: 5),
//                           Text(
//                             '3.2 km',
//                             style: TextStyle(color: Colors.black),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),

//           // Category filter
//           Expanded(
//             child: Row(
//               children: [
//                 // Vertical categories list
//                 Container(
//                   width: 100,
//                   color: Colors.grey[200],
//                   child: ListView.builder(
//                     itemCount: categories.length,
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             selectedCategoryIndex = index;
//                           });
//                         },
//                         child: Container(
//                           color: selectedCategoryIndex == index
//                               ? Colors.white
//                               : Colors.grey[200],
//                           padding: EdgeInsets.all(10),
//                           child: Column(
//                             children: [
//                               // Image.asset('assets/category_${index + 1}.png',
//                               //     height: 40),
//                               SizedBox(height: 10),
//                               Text(
//                                 categories[index],
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(fontSize: 12),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),

//                 // Main content area
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Horizontal filter list
//                       Container(
//                         height: 50,
//                         child: ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           itemCount: filters.length,
//                           itemBuilder: (context, index) {
//                             return GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   selectedFilterIndex = index;
//                                 });
//                               },
//                               child: Container(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: 15, vertical: 10),
//                                 margin: EdgeInsets.symmetric(horizontal: 5),
//                                 decoration: BoxDecoration(
//                                   color: selectedFilterIndex == index
//                                       ? Colors.blue
//                                       : Colors.grey[200],
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     filters[index],
//                                     style: TextStyle(
//                                       color: selectedFilterIndex == index
//                                           ? Colors.white
//                                           : Colors.black,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       ),

//                       // Products grid
//                       ListView.builder(
//                         padding: EdgeInsets.all(10),
//                         itemCount: products.length,
//                         itemBuilder: (context, index) {
//                           final product = products[index];
//                           return Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Colors.grey[300]!),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Stack(
//                                   children: [
//                                     // Image.asset(
//                                     //   product['image']!,
//                                     //   height: 100,
//                                     //   width: double.infinity,
//                                     //   fit: BoxFit.cover,
//                                     // ),
//                                     Positioned(
//                                       top: 5,
//                                       right: 5,
//                                       child: IconButton(
//                                         icon: Icon(Icons.favorite_border),
//                                         onPressed: () {},
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         product['name']!,
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       Text(product['weight']!),
//                                       SizedBox(height: 5),
//                                       Row(
//                                         children: [
//                                           Text(
//                                             '₹${product['price']}',
//                                             style: TextStyle(
//                                               fontWeight: FontWeight.bold,
//                                               color: Colors.green,
//                                             ),
//                                           ),
//                                           SizedBox(width: 10),
//                                           Text(
//                                             '₹${product['originalPrice']}',
//                                             style: TextStyle(
//                                               decoration:
//                                                   TextDecoration.lineThrough,
//                                               color: Colors.grey,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                       SizedBox(height: 5),
//                                       Text(
//                                         'Cashback: ${product['cashback']}',
//                                         style: TextStyle(color: Colors.blue),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 Container(
//                                   width: double.infinity,
//                                   height: 40,
//                                   decoration: BoxDecoration(
//                                     color: Colors.blue,
//                                     borderRadius: BorderRadius.only(
//                                       bottomLeft: Radius.circular(10),
//                                       bottomRight: Radius.circular(10),
//                                     ),
//                                   ),
//                                   child: Center(
//                                     child: Text(
//                                       '+',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'models_classes.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int selectedIndex = 0;
  int selectedIndexFliter = 0;
  int categoryId = 1;
  int selectedIndexFliterId = 1;

  bool isLoading = true;
  bool isLoadingProducts = true;
  bool isInCart = false;

  final List<CategoryModel> categoriesList = [
    CategoryModel(
        name: 'Morning Meals',
        imagePath:
            'https://media.istockphoto.com/id/146807105/photo/food-pyramid-pie-chart.jpg?s=612x612&w=0&k=20&c=SX0hFBaED3Wwi0G2pLfhsYN1GRjlyK8wzqHf-qUyJOk='),
    CategoryModel(
        name: 'Fruits & Vegetables',
        imagePath:
            'https://rukminim2.flixcart.com/image/850/1000/xif0q/cereal-flake/6/n/d/-original-imagvsh6nue5yyhf.jpeg?q=90'),
    CategoryModel(
        name: 'Dal & Pulses',
        imagePath:
            'https://assets.clevelandclinic.org/transform/fcbf56b3-c6d6-47a3-b0ee-d5169c1facdf/high-energy-foods-1457889068'),
    CategoryModel(
        name: 'Instant Food',
        imagePath:
            'https://media.istockphoto.com/id/146807105/photo/food-pyramid-pie-chart.jpg?s=612x612&w=0&k=20&c=SX0hFBaED3Wwi0G2pLfhsYN1GRjlyK8wzqHf-qUyJOk='),
    CategoryModel(
        name: 'Dry Fruits',
        imagePath:
            'https://media.istockphoto.com/id/146807105/photo/food-pyramid-pie-chart.jpg?s=612x612&w=0&k=20&c=SX0hFBaED3Wwi0G2pLfhsYN1GRjlyK8wzqHf-qUyJOk='),
  ];

  final List<FilterModel> filters = [
    FilterModel(name: 'Cereals'),
    FilterModel(name: 'Lorem'),
    FilterModel(name: 'Lorem'),
    FilterModel(name: 'Lorem'),
  ];

  final List<ProductModel> products = [
    ProductModel(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQIshmC3pAP2CBQJcNpQQVicptqes-veWpuyNbKZZuXhsj_DhGgx8YIZFMhgZp7j_Pq6Y&usqp=CAU',
      name: "Kellogg's Cornflakes",
      weight: '650g',
      price: '80',
      categoryId: 1,
      filterId: 1,
      originalPrice: '280',
      cashback: '10%',
    ),
    ProductModel(
      image:
          'https://m.media-amazon.com/images/I/61k8KeYNhOL._AC_SX148_SY213_QL70_.jpg',
      name: "Kellogg's Oats",
      weight: '500g',
      price: '80',
      categoryId: 1,
      filterId: 1,
      originalPrice: '280',
      cashback: '10%',
    ),
    ProductModel(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQIshmC3pAP2CBQJcNpQQVicptqes-veWpuyNbKZZuXhsj_DhGgx8YIZFMhgZp7j_Pq6Y&usqp=CAU',
      name: "Kellogg's Cornflakes",
      weight: '650g',
      price: '80',
      categoryId: 1,
      filterId: 1,
      originalPrice: '280',
      cashback: '10%',
    ),
    ProductModel(
      image:
          'https://m.media-amazon.com/images/I/61k8KeYNhOL._AC_SX148_SY213_QL70_.jpg',
      name: "Kellogg's Oats",
      weight: '500g',
      price: '80',
      categoryId: 2,
      filterId: 1,
      originalPrice: '280',
      cashback: '10%',
    ),
    ProductModel(
      image:
          'https://m.media-amazon.com/images/I/61k8KeYNhOL._AC_SX148_SY213_QL70_.jpg',
      name: "Kellogg's Oats",
      weight: '500g',
      price: '80',
      categoryId: 2,
      filterId: 2,
      originalPrice: '280',
      cashback: '10%',
    ),
    ProductModel(
      image:
          'https://m.media-amazon.com/images/I/61k8KeYNhOL._AC_SX148_SY213_QL70_.jpg',
      name: "Kellogg's Oats",
      weight: '500g',
      price: '80',
      categoryId: 3,
      filterId: 2,
      originalPrice: '280',
      cashback: '10%',
    ),
    ProductModel(
      image:
          'https://m.media-amazon.com/images/I/61k8KeYNhOL._AC_SX148_SY213_QL70_.jpg',
      name: "Kellogg's Oats",
      weight: '500g',
      price: '80',
      categoryId: 3,
      filterId: 2,
      originalPrice: '280',
      cashback: '10%',
    ),
    ProductModel(
      image:
          'https://m.media-amazon.com/images/I/61k8KeYNhOL._AC_SX148_SY213_QL70_.jpg',
      name: "Kellogg's Oats",
      weight: '500g',
      price: '80',
      categoryId: 3,
      filterId: 2,
      originalPrice: '280',
      cashback: '10%',
    ),
    ProductModel(
      image:
          'https://m.media-amazon.com/images/I/61k8KeYNhOL._AC_SX148_SY213_QL70_.jpg',
      name: "Kellogg's Oats",
      weight: '500g',
      price: '80',
      categoryId: 4,
      filterId: 3,
      originalPrice: '280',
      cashback: '10%',
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // Call the dispose method of the superclass
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    List<ProductModel> filteredProducts = products
        .where((product) =>
            product.categoryId == categoryId &&
            product.filterId == selectedIndexFliterId)
        .toList();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 20,
                )),
            const Text(
              'Store Detail',
              // textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                baneer(),
                Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 35,
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2021/05/27/18/55/woman-6289052_640.png'),
                              backgroundColor: Color.fromARGB(
                                  255, 233, 238, 245), // Border color
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color.fromARGB(
                                        255, 222, 226, 247)),
                                child: const Text(
                                  'Open Now',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 24, 8, 167)),
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'FreshMart',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'Opens at 10:00 am',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Blue Ridge, Lane 4, Pune, Maharashtra',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text('Cashback : 10%',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromARGB(255, 223, 201, 2),
                                          fontWeight: FontWeight.bold)),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: List.generate(5, (starIndex) {
                                      return Icon(
                                        Icons.star,
                                        size: 16,
                                        color: starIndex < 2
                                            ? Colors.blue
                                            : Colors.grey,
                                      );
                                    }),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.favorite_border_rounded)),
                                const SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.green,
                                          ),
                                          Text(
                                            '3.2 km',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 18,
                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor: Colors.green,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Delivery in: 15 mins',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width * 0.25,
                  margin: const EdgeInsets.only(right: 1, top: 10),
                  padding: const EdgeInsets.only(top: 5),
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0.5,
                            color: Color.fromARGB(255, 211, 206, 206),
                            spreadRadius: 1)
                      ]),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: categoriesList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return SelectCatagories(
                        imageUrl: categoriesList[index].imagePath,
                        name: categoriesList[index].name,
                        isSelected: selectedIndex == index,
                        serverIp: '',
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                            categoryId = index + 1;
                          });
                          // getProductsByCategories(categoriesList[index]
                          //     .productCategoryId
                          //     .toString());
                        }, // Default selected position
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: width * 0.72,
                  child: Column(
                    children: [
                      Container(
                        width: width * 0.78,
                        height: 45,
                        margin: const EdgeInsets.only(right: 1, top: 5),
                        padding: const EdgeInsets.only(top: 5),
                        decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(5)),
                          //  color: Colors.white,
                          // boxShadow: [
                          //   BoxShadow(
                          //       blurRadius: 0.5,
                          //       color: Color.fromARGB(255, 211, 206, 206),
                          //       spreadRadius: 1)
                          // ]
                        ),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: filters.length,
                          shrinkWrap: true,
                          // physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return SelectFilter(
                              imageUrl: '',
                              name: filters[index].name,
                              isSelected: selectedIndexFliter == index,
                              serverIp: '',
                              onTap: () {
                                setState(() {
                                  selectedIndexFliter = index;
                                  selectedIndexFliterId = index + 1;
                                });
                                // getProductsByCategories(categoriesList[index]
                                //     .productCategoryId
                                //     .toString());
                              }, // Default selected position
                            );
                          },
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: width * 0.78,
                        // color: Colors.white,
                        child: products.isEmpty
                            ? const CircularProgressIndicator()
                            : ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: filteredProducts.length,
                                itemBuilder: (context, index) {
                                  final product = filteredProducts[index];
                                  return Stack(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        margin: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: const [
                                              BoxShadow(
                                                  blurRadius: 1,
                                                  color: Colors.grey)
                                            ]),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: const Color.fromARGB(
                                                      255, 222, 226, 247)),
                                              padding: const EdgeInsets.all(5),
                                              width: width * 0.20,
                                              child:
                                                  Image.network(product.image),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    product.name,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(product.weight),
                                                  const SizedBox(height: 5),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: List.generate(5,
                                                        (starIndex) {
                                                      return Icon(
                                                        Icons.star,
                                                        size: 16,
                                                        color: starIndex < 2
                                                            ? Colors.blue
                                                            : Colors.grey,
                                                      );
                                                    }),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '₹${product.price}',
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255, 8, 59, 148),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 10),
                                                      Text(
                                                        '₹${product.originalPrice}',
                                                        style: const TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    '20 % OFF',
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromARGB(
                                                          255, 61, 117, 213),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Text(
                                                    'Cashback: ${product.cashback}',
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 252, 188, 10)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          left: 0,
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.favorite_rounded,
                                                  color: const Color.fromARGB(
                                                      255, 7, 90, 158),
                                                )),
                                          )),
                                      Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Container(
                                              margin: EdgeInsets.all(15),
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: const Color.fromARGB(
                                                      255, 222, 226, 247)),
                                              child: Icon(
                                                Icons.add,
                                                color: const Color.fromARGB(
                                                    255, 7, 90, 158),
                                              )))
                                    ],
                                  );
                                },
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget baneer() {
    return Column(
      children: [
        Container(
          height: 213,
          width: MediaQuery.of(context).size.width,
          // margin: const EdgeInsets.symmetric(vertical: 5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: CarouselSlider.builder(
            itemBuilder: (context, index, realIndex) {
              return InkWell(
                onTap: () {
                  // Get.to(DonationWebScreen());
                },
                child: Stack(children: [
                  Container(
                    height: 213,
                    // margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        //  borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 222, 218, 218),
                        border: Border.all(color: Colors.white12),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://content.jdmagicbox.com/comp/pune/s6/020pxx20.xx20.180831185013.g2s6/catalogue/d-mart-satara-road-pune-supermarkets-tx4d0clx29.jpg'),
                            fit: BoxFit.fill)),
                  ),
                ]),
              );
            },
            options: CarouselOptions(
              height: 196,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 8),
              autoPlayAnimationDuration: const Duration(seconds: 2),
              onPageChanged: (index, reason) {
                setState(() {
                  // _currentIndex = index;
                });
              },
            ),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}

Widget _buildCustomIconButton({
  required IconData icon,
  required VoidCallback onPressed,
}) {
  return InkWell(
    onTap: onPressed,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: Colors.black,
        size: 24.0,
      ),
    ),
  );
}

Widget _buildCircularImage(String imagePath, String label) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        ClipOval(
          child: Image.asset(
            imagePath,
            width: 67,
            height: 67,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Column(
          children: [
            Text(
              label.split(' ')[0],
              textAlign: TextAlign.center,
            ),
            Text(
              label.split(' ')[1],
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    ),
  );
}

class SelectCatagories extends StatelessWidget {
  final String imageUrl;
  final String name;
  final bool isSelected;
  final VoidCallback onTap;
  final String serverIp;

  const SelectCatagories({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.isSelected,
    required this.onTap,
    required this.serverIp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),

          // gradient: isSelected
          //     ? const LinearGradient(
          //         begin: Alignment.topCenter,
          //         end: Alignment.bottomCenter,
          //         colors: [
          //             Colors.white,
          //             Color.fromARGB(255, 230, 190, 188),
          //             Color.fromARGB(255, 233, 96, 86)
          //           ])
          //     : null,
        ),
        child: Column(
          children: [
            const SizedBox(height: 5),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                        imageUrl,
                      ),
                      fit: BoxFit.fill),
                  border: isSelected
                      ? Border.all(
                          color: const Color.fromARGB(255, 4, 112, 201),
                          width: 4)
                      : null),
              // child:
              //  CircleAvatar(
              //   radius: 30,
              //   backgroundImage: NetworkImage(imageUrl),
              //   backgroundColor: isSelected
              //       ? Colors.red[100]
              //       : Color.fromARGB(255, 219, 214, 214), // Border color
              // ),
            ),
            const SizedBox(height: 5),
            Text(
              name,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: isSelected ? Colors.black : Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectFilter extends StatelessWidget {
  final String imageUrl;
  final String name;
  final bool isSelected;
  final VoidCallback onTap;
  final String serverIp;

  const SelectFilter({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.isSelected,
    required this.onTap,
    required this.serverIp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        //  height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color.fromARGB(255, 210, 210, 212)),
            color: isSelected
                ? const Color.fromARGB(255, 222, 226, 247)
                : Colors.white
            // gradient: isSelected
            //     ? const LinearGradient(
            //         begin: Alignment.topCenter,
            //         end: Alignment.bottomCenter,
            //         colors: [
            //             Colors.white,
            //             Color.fromARGB(255, 230, 190, 188),
            //             Color.fromARGB(255, 233, 96, 86)
            //           ])
            //     : null,
            ),
        child: Column(
          children: [
            Text(
              name,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: isSelected ? Colors.black : Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
