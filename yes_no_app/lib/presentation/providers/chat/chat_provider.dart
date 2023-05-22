import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message_model.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAsnwer = GetYesNoAnswer();
  List<Message> messageList = [
    Message(text: 'Hola amor!!!', fromWho: FromWho.me),
    Message(text: 'Ya regresaste del trabajo', fromWho: FromWho.me)
  ];

  //Promise
  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    if (text.endsWith('?')) {
      herReply();
    }
    //redibujar el cambio
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> herReply() async {
    final herMessage = await getYesNoAsnwer.getAnswer();
    messageList.add(herMessage);
    //redibujar el cambio
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(microseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}
