import 'package:flutter/material.dart';
import 'package:flutter_application_1/Application/theme_services.dart';
import 'package:flutter_application_1/presentation/widgets/widget/first_column_child.dart';
import 'package:flutter_application_1/presentation/widgets/widget/hello_world.dart';
import 'package:flutter_application_1/presentation/widgets/widget/row_expanded.dart';
import 'package:provider/provider.dart';

class WidgetExamplesScreen extends StatelessWidget {
  const WidgetExamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Basics'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 20,
            ),
            RowExapanded(),
            SizedBox(
              height: 20,
            ),
            FirstColumnChild(),
            SizedBox(
              height: 20,
            ),
            HelloWorld(),
            SizedBox(height: 20)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ThemeService>(context, listen: false).toggleTheme();
        },
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}
