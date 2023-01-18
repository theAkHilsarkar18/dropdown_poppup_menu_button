import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  dynamic data = "Surat";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dropdown & Popmenu"),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("Group")),
                  PopupMenuItem(child: Text("Setting")),
                  PopupMenuItem(child: Text("Profile")),
                ];
              },
            )
          ],
        ),
        body: Center(
          child: DropdownButton(
            
            onChanged: (value) {},
            items: [
              DropdownMenuItem(child: Text("Surat"),value: "Surat",),
              DropdownMenuItem(child: Text("Rajkot"),value: "Surat",),
              DropdownMenuItem(child: Text("Ahemdabad"),value: "Ahemdabad",),
              DropdownMenuItem(child: Text("Baroda"),value: "Baroda",),
            ],
          ),
        ),
      ),
    );
  }
}
