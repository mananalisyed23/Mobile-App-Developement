import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  final String title, image, price;
  const ItemProduct({
    super.key,
    required this.title,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/$image',
              fit: BoxFit.cover,
              height: 150, // ADD THIS
              width: double.infinity, // ADD THIS
            ),
          ),
          Flexible(
            // USE THIS INSTEAD
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Rs: $price',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
