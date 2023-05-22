//importM
//stlessw
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message_model.dart';
import 'package:yes_no_app/presentation/providers/chat/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://album.mediaset.es/eimg/2022/12/26/jenna-ortega-novios_d986.jpg")),
        ),
        title: const Text(
          'Jenna ♥',
          style: TextStyle(fontSize: 17.0),
        ),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            //Lista de miles de elementos pero solo visible los que aparecen en pantalla
            //si se carga y hay mas pantalla iran apareciendo
            Expanded(
                child: ListView.builder(
              //Definiendo un numero maximo
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];
                return (
                  message.fromWho == FromWho.hers ?  HerMessageBubble(message: message) : MyMessageBubble(message: message));
              },
            )),

            //Caja de texto para mensajes
            MessageFieldBox(onValue: (value) => chatProvider.sendMessage(value),)
          ],
        ),
      ),
    );
  }
}
