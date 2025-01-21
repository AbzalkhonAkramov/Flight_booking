import 'package:flight_booking_app/presentation/settings/pages/confirm_pin_page.dart';
import 'package:flutter/material.dart';

class SetPinPage extends StatefulWidget {
  const SetPinPage({Key? key}) : super(key: key);

  @override
  State<SetPinPage> createState() => _SetPinPageState();
}

class _SetPinPageState extends State<SetPinPage> {
  final TextEditingController _pinController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus(); // Automatically focus on the input field
  }

  void _navigateToConfirmPin() {
    if (_pinController.text.length == 6) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ConfirmPinPage(pin: _pinController.text),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set PIN', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Enter 6 digits number for your PIN. Make sure the combination is not easy to guess.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () => _focusNode.requestFocus(), // Focus on the input
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return Container(
                  height: 60,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _pinController.text.length > index
                        ? _pinController.text[index]
                        : '',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 30),

          TextField(
            controller: _pinController,
            focusNode: _focusNode,
            keyboardType: TextInputType.number,
            maxLength: 6,
            style: const TextStyle(color: Colors.transparent, height: 0.01),
            cursorColor: Colors.transparent,
            decoration: const InputDecoration(
              counterText: '', // Remove the character counter
              border: InputBorder.none, // Remove input underline
            ),
            onChanged: (value) {
              setState(() {});
              if (value.length == 6) {
                _navigateToConfirmPin();
              }
            },
          ),
        ],
      ),
    );
  }
}
