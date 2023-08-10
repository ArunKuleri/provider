import 'package:flutter/material.dart';

import 'listWidget/list_item.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> example = ['exmple', 'list', 'with', 'strings'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
            itemBuilder: (contex, index) {
              return ListItem(
                title: example[index],
                index: index,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: example.length),
      ),
    );
  }
}
