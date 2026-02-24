import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: BillingApp()));

class BillingApp extends StatefulWidget {
  @override
  _BillingAppState createState() => _BillingAppState();
}

class _BillingAppState extends State<BillingApp> {
  final List<Map<String, dynamic>> items = [];
  double total = 0;

  void addItem(String name, double price) {
    setState(() {
      items.add({'name': name, 'price': price});
      total += price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MAA DRESSES - DHULAURI'), backgroundColor: Colors.blue),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (ctx, i) => ListTile(
                title: Text(items[i]['name']),
                trailing: Text('${items[i]['price']} TK'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Total: $total TK', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () => addItem('New Item', 100.0), // Test Item
            child: Text('Add Item'),
          ),
          ElevatedButton(
            onPressed: () {}, // Future: RawBT Print Trigger
            child: Text('Print Receipt (Seznik 58mm)'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          ),
        ],
      ),
    );
  }
}
