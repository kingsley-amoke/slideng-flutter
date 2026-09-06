import 'package:flutter/material.dart';

class SlideCard extends StatelessWidget {
  const SlideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16),
              ),
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                Chip(label: Text("AI")),
                const SizedBox(width: 8),
                Chip(label: Text("24 Slides")),
              ],
            ),

            const SizedBox(height: 12),

            const Text(
              "Future of AI Interfaces",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Row(
              children: const [
                CircleAvatar(radius: 12),
                SizedBox(width: 8),
                Text("Alex Rivera"),
              ],
            ),

            const SizedBox(height: 12),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("👁 14k"), Text("❤ 2k"), Text("⬇ 700")],
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                child: Text("Open Presentation"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
