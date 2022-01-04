import 'package:flutter/material.dart';

import '../../theme.dart';

// there is a problem with the ListGeneratae...
//builting the cont 3 times in each time...
class ListGenerate extends StatelessWidget {
  const ListGenerate({
    Key? key,
    required this.image,
    required this.name,
    required this.rating,
    this.deserts = '',
    this.delivery = '',
    this.prics = 0,
    required this.datasize,
  }) : super(key: key);

  final String? image;
  final String name, rating, deserts, delivery;
  final double prics;
  final int datasize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        datasize,
        (index) => Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    color: Colors.amber
                    //    image: DecorationImage(
                    //      image: AssetImage(image!), fit: BoxFit.fitWidth),
                    ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01),
                          child: Text(
                            rating,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w400,
                                color: mainColor),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01),
                        Icon(
                          Icons.star_border_outlined,
                          color: mainColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
