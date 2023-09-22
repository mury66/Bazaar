import 'package:flutter/material.dart%20';

class DropdownItem {
  final String categoryName;
  final String categoryImage;

  DropdownItem({required this.categoryName, required this.categoryImage});
}

class DropdownWithImage extends StatefulWidget {
  const DropdownWithImage({super.key});

  @override
  _DropdownWithImageState createState() => _DropdownWithImageState();
}

class _DropdownWithImageState extends State<DropdownWithImage> {
  DropdownItem? _selectedItem;

  final List<DropdownItem> _dropdownItems = [
    DropdownItem(
        categoryName: 'Craft', categoryImage: 'assets/images/craft.png'),
    DropdownItem(
        categoryName: 'Painting', categoryImage: 'assets/images/painting.png'),
    DropdownItem(
        categoryName: 'Accessories',
        categoryImage: 'assets/images/accessories.png'),
    DropdownItem(
        categoryName: 'Sculpture',
        categoryImage: 'assets/images/sculpture.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<DropdownItem>(
      hint: const Text('Product category'),
      itemHeight: 70,
      borderRadius: BorderRadius.circular(15),
      value: _selectedItem,
      onChanged: (DropdownItem? newValue) {
        setState(() {
          _selectedItem = newValue;
        });
      },
      items: _dropdownItems.map((DropdownItem item) {
        return DropdownMenuItem<DropdownItem>(
          value: item,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Image.asset(
                  item.categoryImage,
                  width: 120,
                  height: 95,
                ),
              ),
              const SizedBox(width: 8),
              Text(item.categoryName),
            ],
          ),
        );
      }).toList(),
    );
  }
}
