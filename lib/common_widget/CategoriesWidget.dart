import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'icon': 'assets/images/guitar.png', 'text': 'GUITARS'},
      {'icon': 'assets/images/merch.png', 'text': 'MERCHS'},
      {'icon': 'assets/images/plugins.png', 'text': 'PLUGINS'},
      {'icon': 'assets/images/more.png', 'text': 'MORE'},
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoryCard(
                icon: categories[index]['icon'],
                text: categories[index]['text'],
                press: () {}),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                // padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ]),

                child: Image.asset(icon),
              ),
            ),
            const SizedBox(height: 5),
            Text(text, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
