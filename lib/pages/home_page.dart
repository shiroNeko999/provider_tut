import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tut/components/grocery_item_tile.dart';
import 'package:provider_tut/model/cart_model.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 48,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Good morning", style: TextStyle(


              ),),
            ),
            const SizedBox(height: 4,),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Let's order fresh items for you",style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),),
            ),
            const SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(),
            ),
            const SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Fresh items",style: TextStyle(

              ),),
            ),
            Expanded(child:Consumer<CartModel>(
              builder: (context,value,child){
                return  GridView.builder(
                  itemCount: value.shopItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2
                ),
                  itemBuilder:(context,index){
                    return GroceryItemTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],

                    );
                  },
                );
              },
            )
            )
          ],
        ),
      ),
    );
  }
}
