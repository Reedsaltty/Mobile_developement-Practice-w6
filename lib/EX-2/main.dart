import 'package:flutter/material.dart';

enum BUTTONTYPES {
  primary(Colors.blue),
  secondary(Colors.green),
  disabled(Colors.grey);

  final Color color;
  const BUTTONTYPES(this.color);
}

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Custom Button", style: TextStyle(fontSize: 25)),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 25,
          children: [
            CustomButton(
              type: BUTTONTYPES.primary,
              text: "Submit",
              frontIcon: Icons.check,
            ),
            CustomButton(
              type: BUTTONTYPES.secondary,
              text: "Time",
              backIcon: Icons.access_time,
            ),
            CustomButton(
              type: BUTTONTYPES.disabled,
              text: "Account",
              backIcon: Icons.account_tree,
            ),
          ],
        ),
      ),
    ),
  ),
);

class CustomButton extends StatelessWidget {
  const new({
    super.key,
    this.type = BUTTONTYPES.primary,
    required this.text,
    this.frontIcon,
    this.backIcon,
  });

  final BUTTONTYPES type;
  final String text;
  final IconData? frontIcon;
  final IconData? backIcon;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: type == BUTTONTYPES.disabled ? null : () {},

      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(type.color),
        fixedSize: WidgetStatePropertyAll(const Size(double.infinity, 50)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          if (frontIcon != null) Icon(frontIcon),

          Text(text, style: TextStyle(fontSize: 18)),

          if (backIcon != null) Icon(backIcon),
        ],
      ),
    );
  }
}
