import 'package:chatgpt_flutter/widgets/message_bubble.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    //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
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: const [
                  MessageBubble(
                    message: 'Hello',
                    isMe: false,
                  ),
                  MessageBubble(
                    message: 'Hi!',
                    isMe: true,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      // Handle send message
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}