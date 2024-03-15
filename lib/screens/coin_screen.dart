import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CurrencyScreen extends StatefulWidget {
  @override
  _CurrencyScreenState createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
  List currencies = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    fetchCurrencies();
  }

  fetchCurrencies() async {
    final response = await http
        .get(Uri.parse('https://lirat.org/wp-json/alba-cur/cur/1.json'));
    if (response.statusCode == 200) {
      var result = json.decode(response.body);
      setState(() {
        currencies = result;
      });
    } else {
      throw Exception('Failed to load currencies');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Rates'),
      ),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(
                color: Color(0xffF57752),
              ),
            )
          : ListView.builder(
              itemCount: currencies.length,
              itemBuilder: (context, index) {
                var currency = currencies[index];
                return ListTile(
                  title: Text(currency['ar_name']),
                  subtitle: Text(
                      'Buy: ${currency['bid']} - Sell: ${currency['ask']}'),
                  trailing: Icon(currency['arrow'] == "1"
                      ? Icons.arrow_upward
                      : Icons.arrow_downward),
                );
              },
            ),
    );
  }
}
