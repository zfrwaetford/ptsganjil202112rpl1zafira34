import 'package:flutter/material.dart';
import 'package:ptsganjil202112rpl1zafira34/food_model.dart';

class FoodDetail extends StatefulWidget {
  final FoodModel food;

  FoodDetail(this.food);

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.food.name),
      ),
      body: Stack(children: [
        Image.network(
          'https://restaurant-api.dicoding.dev/images/medium/${widget.food.pictureId}',
          width: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 400,
              padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.food.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            Text('Lokasi: ${widget.food.city}', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            SizedBox(width: 5),
                            Text(widget.food.rating.toString())
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Text('Deskripsi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    Text(widget.food.description)
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
