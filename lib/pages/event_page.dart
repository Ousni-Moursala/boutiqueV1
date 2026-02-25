import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final products = [
    {
      "name": "Shop One",
      "phone": "655 251 579",
      "rating": 4.5,
      "distance": 1.2,
      "image": "logo",
    },
    {
      "name": "Shop Two",
      "phone": "699 123 456",
      "rating": 4.0,
      "distance": 0.8,
      "image": "logo",
    },
    {
      "name": "Shop Three",
      "phone": "677 888 999",
      "rating": 5.0,
      "distance": 2.5,
      "image": "logo",
    },
    {
      "name": "Shop Four",
      "phone": "699 123 456",
      "rating": 4.0,
      "distance": 4.8,
      "image": "logo",
    },
    {
      "name": "Shop Five",
      "phone": "699 123 456",
      "rating": 4.4,
      "distance": 0.2,
      "image": "logo",
    },
    {
      "name": "Shop Six",
      "phone": "699 123 456",
      "rating": 4.2,
      "distance": 2.8,
      "image": "logo",
    },
    {
      "name": "Shop Seven",
      "phone": "699 123 456",
      "rating": 4.0,
      "distance": 1.8,
      "image": "logo",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mes boutiques"),
        backgroundColor: Colors.white60,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  // Image du produit
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      "assets/images/${product['image']}.jfif",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(width: 12),

                  // colum 2
                  // Infos du produit
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                         " ${product['name']} !",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text("Tel: ${product['phone']}"),
                        SizedBox(height: 4),

                        // Row 2
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            SizedBox(width: 4),
                            Text("${product['rating']}"),
                            SizedBox(width: 12),
                            //
                            Icon(Icons.location_on, size: 16, color: Colors.grey),
                            SizedBox(width: 4),
                            Text("${product['distance']} km"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Bouton suivant
                  IconButton(
                    icon: Icon(Icons.arrow_forward, color: Colors.indigo),
                    onPressed: () {
                      // ici tu peux naviguer vers la page détaillée du produit
                      print("detail");
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}