import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:chatgpt_flutter/screens/chat_page.dart';
import 'package:chatgpt_flutter/screens/favorite_page.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = <Widget>[
    const ChatPage(),
    const FavoritePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _selectedIndex == 0
            ? const Text('Chat Page')
            : const Text('Favorite Page'),
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Menu'),
              ),
              ListTile(
                title: const Text('Chat'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                  Navigator.pop(context); // Đóng menu sau khi chọn mục
                },
              ),
              ListTile(
                title: const Text('Favorite'),
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                  Navigator.pop(context); // Đóng menu sau khi chọn mục
                },
              ),
            ],
          ),
        ),
      ),
      body: _screens[_selectedIndex],
    );
  }
}
