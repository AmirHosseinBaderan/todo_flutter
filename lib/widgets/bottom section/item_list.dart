import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/bottom%20section/item.dart';

Widget itemList() => Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: ListView.separated(
          itemBuilder: (context, index) => taskItem(index),
          separatorBuilder: (context, index) => const Divider(
                height: 0.5,
                color: Colors.grey,
              ),
          itemCount: 26),
    );
