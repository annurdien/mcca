import 'package:flutter/material.dart';
import 'package:lexiedu/ui/views/chat/chat_model.dart';
import 'package:stacked/stacked.dart';

class ChatView extends ViewModelBuilderWidget<ChatViewModel> {
  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Konsultasi"),
        centerTitle: true,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.90),
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [Text('Testing')],
        ),
      ),
    );
  }

  @override
  viewModelBuilder(BuildContext context) {
    return ChatViewModel();
  }
}
