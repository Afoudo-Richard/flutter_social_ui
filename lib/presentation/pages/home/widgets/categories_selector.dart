import 'package:flutter/material.dart';
import 'package:social_ui/data/models/categories.dart';

class CategoriesSelector extends StatefulWidget {
  const CategoriesSelector({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoriesSelector> createState() => _CategoriesSelectorState();
}

class _CategoriesSelectorState extends State<CategoriesSelector> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (_, int index) {

          final String item = categories[index];
          bool isSelected = _selectedIndex == index;
          return GestureDetector(
            onTap: (){
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(right: 15.0),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:isSelected? Colors.black : Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              child: Text(item, style: TextStyle(
                color: isSelected? Colors.white : Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500

              ),),
            ),
          );
        },
      ),
    );
  }
}
