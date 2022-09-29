import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget loadingList(int itemCount) => Container(
      width: Get.width,
      child: ListView.separated(
          itemBuilder: (context, index) => loadingItem(index),
          separatorBuilder: (context, index) => const SizedBox(
                height: 4,
              ),
          itemCount: itemCount),
    );

Widget loadingItem(int index) {
  var delay = (index * 300);

  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.grey),
    child: Row(
      children: [
        FadeShimmer.round(
          size: 60,
          fadeTheme: FadeTheme.dark,
          millisecondsDelay: delay,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            FadeShimmer(
              width: 150,
              height: 7,
              fadeTheme: FadeTheme.dark,
              radius: 4,
            ),
            SizedBox(height: 4),
            FadeShimmer(
              width: 170,
              height: 5,
              fadeTheme: FadeTheme.dark,
              radius: 4,
            ),
          ],
        )
      ],
    ),
  );
}
