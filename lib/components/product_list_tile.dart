import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset("images/moto.jpg"),
          ListTile(
            title: const Text("Moto"),
            subtitle: const Text("340000 Fc"),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.heart_fill),
            ),
          )
        ],
      ),
    );
  }
}
