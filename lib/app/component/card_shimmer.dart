import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

class Card_Shimmer extends StatelessWidget {
  const Card_Shimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          FadeShimmer(
            height: 120,
            width: 120,
            radius: 4,
            highlightColor: Color.fromARGB(255, 237, 237, 238),
            baseColor: Color.fromRGBO(175, 177, 180, 1),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: FadeShimmer(
                  height: 16,
                  width: 160,
                  radius: 4,
                  highlightColor: Color.fromARGB(255, 237, 237, 238),
                  baseColor: Color.fromARGB(255, 175, 177, 180),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: FadeShimmer(
                  height: 16,
                  width: 160,
                  radius: 4,
                  highlightColor: Color.fromARGB(255, 237, 237, 238),
                  baseColor: Color.fromARGB(255, 175, 177, 180),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
