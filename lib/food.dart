import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget Containershape({@required String name,@required String image} ){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20.0,top: 8.0),
          height: 80.0,
          width: 80.0,

          child: Image(image: AssetImage(image)),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10.0),
          ),

        ),
        Text(name,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ],
    );

}

Widget BottonContainer({@required String name,@required String image,@required int price}){
    return Container(
      height: 270,
      width: 220,
      decoration: BoxDecoration(
        color: Color(0xff3a3e3e),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 60.0,
          ),

          ListTile(
            leading: Text(name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            trailing: Text('\$ $price',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Icon(Icons.star_border,
                  size: 20.0,
                  color: Colors.white,
                ),

                Icon(Icons.star_border,
                  size: 20.0,
                  color: Colors.white,
                ),

                Icon(Icons.star_border,
                  size: 20.0,
                  color: Colors.white,
                ),

                Icon(Icons.star_border,
                  size: 20.0,
                  color: Colors.white,
                ),

                Icon(Icons.star_border,
                  size: 20.0,
                  color: Colors.white,
                ),

              ],
            ),
          )

        ],
      ),
    );

}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Color( 0xff2b2b2b),
        appBar: AppBar(

          backgroundColor: Color(0xff2b2b2b),

          actions: [
            Padding(
              padding: EdgeInsets.all(9.0),
              child: CircleAvatar(

                backgroundImage: AssetImage('images/profile.jpg'),
              ),
            ),

          ],

        ),
        drawer: Drawer(
          child: Column(
            children: [

              UserAccountsDrawerHeader(

                  accountName: Text('Maaz Ajmal'),

                  accountEmail: Text(
                    'Maaz@gmail.com'

                  ),
              //   decoration:BoxDecoration(
              //     image:
              //   )
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Padding(

              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,
                  color: Colors.white,
                  ),
                  hintText: "Search Food",

                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Color(0xff3a3e3e),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection:  Axis.horizontal,
              child: Row(
                children: [
                  TextButton(child: Containershape(name: 'All', image: 'images/1.png'),
                  
                  onPressed: ()=>print('maaz',),),
                  
                  TextButton(child: Containershape(name: 'Burger', image: 'images/download.jpg'),onPressed: ()=>print('mazay'),),
                  Containershape(name: 'Recipe', image: 'images/rec.jpg'),
                  Containershape(name: 'Samosa', image: 'images/samosa.jpg'),
                  Containershape(name: 'pizza', image: 'images/3.png'),
                  Containershape(name: 'Drink', image: 'images/drink.jpg'),


                ],
              ),
            ),


            SingleChildScrollView(
              child: Container(


                height: 450,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                child: GridView.count(

                  childAspectRatio: 0.8,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                  shrinkWrap: false,
                  primary: false,
                  crossAxisSpacing: 20,
                  children: [

                    BottonContainer(name: 'Pizza', image: 'images/6.png', price: 2),
                    BottonContainer(name: 'Yum Pum', image: 'images/download.jpg', price: 3),
                    BottonContainer(name: 'Drink', image: 'images/drink.jpg', price: 2),
                    BottonContainer(name: 'Samosa', image: 'images/samosa.jpg', price: 2),
                   BottonContainer(name: 'Samosa', image: 'images/samosa.jpg', price: 2),
                    BottonContainer(name: 'Drink', image: 'images/drink.jpg', price: 2),

                  ],


                ),
              ),
            ),






          ],


        ),
      ),
    );
  }
}


