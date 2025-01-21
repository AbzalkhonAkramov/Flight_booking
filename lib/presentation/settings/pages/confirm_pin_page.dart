import 'package:flight_booking_app/core/common/constants/route_names.dart';
import 'package:flutter/material.dart';

class ConfirmPinPage extends StatefulWidget {
  final String pin;

  const ConfirmPinPage({required this.pin, Key? key}) : super(key: key);

  @override
  State<ConfirmPinPage> createState() => _ConfirmPinPageState();
}

class _ConfirmPinPageState extends State<ConfirmPinPage> {
  final TextEditingController _confirmPinController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus(); // Automatically focus on the input field
  }

  void _checkPin() {
    if (_confirmPinController.text == widget.pin) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('PIN set successfully!')),
      );
      Navigator.pushReplacementNamed(context, RouteNames.mainPage); // Go back to the previous page
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('PINs do not match! Please try again.')),
      );
      _confirmPinController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm PIN', style: TextStyle(color: Colors.black)),
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
              'Enter the same 6 digits PIN again to confirm.',
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
                    _confirmPinController.text.length > index
                        ? _confirmPinController.text[index]
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
            controller: _confirmPinController,
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
                _checkPin();
              }
            },
          ),
        ],
      ),
    );
  }
}
