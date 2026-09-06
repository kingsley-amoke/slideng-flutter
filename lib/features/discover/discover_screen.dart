import 'package:flutter/material.dart';
import 'package:slideng/core/widgets/slide_card.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Discover",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          TextField(
            decoration: InputDecoration(
              hintText: "Search presentations",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _chip("AI"),
                _chip("Business"),
                _chip("Flutter"),
                _chip("Design"),
                _chip("Education"),
              ],
            ),
          ),

          const SizedBox(height: 20),

          SlideCard(),

          SlideCard(),

          SlideCard(),
        ],
      ),
    );
  }

  Widget _chip(String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Chip(label: Text(title)),
    );
  }
}
