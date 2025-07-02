import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> sendemail(
    contex, String phone, String name, String massage, String number) async {
  final url = Uri.parse('https://formsubmit.co/mafdysaad366@gmail.com');
  final respons = await http.post(url, headers: {
    'Content-Type': 'application/x-www-form-urlencoded',
  }, body: {
    "phone": phone,
    "name": name,
    "massage": massage,
    "number": number,
  });
  if (respons.statusCode == 200) {
    ScaffoldMessenger.of(contex)
        .showSnackBar(SnackBar(content: Text('Message sent successfully!')));
  } else {
    ScaffoldMessenger.of(contex)
        .showSnackBar(SnackBar(content: Text('Failed to send message.')));
  }
}
