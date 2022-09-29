import 'package:flutter/material.dart';

Widget taskItem(int index) => ListTile(
      title: Text('$index'),
      subtitle: Text('item index $index'),
      trailing: Checkbox(
        onChanged: (value) {},
        value: false,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    );
