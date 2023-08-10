import 'package:flutter/material.dart';

class RowExapanded extends StatelessWidget {
  const RowExapanded({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Expanded(
          child: Text(
            '@run -App developer in flutter - living in India',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.blue,
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.green,
        ),
        const SizedBox(
          width: 8,
        )
      ],
    );
  }
}
