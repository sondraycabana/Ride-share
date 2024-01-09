import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RidersPage extends StatelessWidget {
  const  RidersPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(

        appBar: AppBar(
          title: Text(
            'Ride Share',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.chevron_left,
              size: 36,
            ), // Change the arrow icon to less than icon
            onPressed: () {
              // Navigate to the previous page
              Navigator.of(context).pop();
            },
          ),
        ),



        body: SingleChildScrollView(
          child: Container(

              child:
              Column(
                children: [

                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    // decoration: BoxDecoration(
                    //   border: Border.all(width: 3, color: Colors.black),
                    // ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Colors.blue,
                                border: Border.all(width: 3, color: Colors.black),

                              ),
                              child: Center(
                                child: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                  size: 45,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '11/Sept/2023',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),
                                ),
                      Row(
                          children: [
                          Text('4 seats'),
                      SizedBox(width:10),
                      Text('46mins 10sec'),
                      SizedBox(width:10),
                  Text('40.4 mile'),
                ],
              )
                              ],
                            ),
                            Spacer(), // To push the next widgets to the right
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '8:12PM',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,

                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 5),


                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity, // Full width
                    height: 170, // Set your desired height
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/Map.png'), // Replace with your image path
                        fit: BoxFit.cover, // You can use BoxFit.contain, BoxFit.fill, etc. based on your needs
                      ),
                    ),
                  ),



                  Container(
                    width: double.infinity,
                    height: 80,
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Location.png'),
                                alignment: Alignment.centerLeft,

                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),

                        Text('5 seats booked'),
                        ElevatedButton(
                          onPressed: () {
                            // Add your button's functionality here
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              // StadiumBorder(),
                                LinearBorder()
                            ),
                            backgroundColor: MaterialStateProperty.all(Colors.black),
                          ),
                          child: Text(
                            '# 2000',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),

                child:  Text('Riders',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),


              ),
            ],
          ),



          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [

                // Rounded Profile Picture
                Container(
                  height: 60,
                  width: 60,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.black),

                    // You can use a network image or AssetImage for the image
                    image: DecorationImage(
                      image: AssetImage('images/Avatar.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                // Name and Star Rating
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name
                      Row(
                        children: [
                          Text(
                            'Sarah Jacob',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(width: 140,),
                          Text(
                            '8:12 PM',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      // Star Rating
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 18),
                          Icon(Icons.star, color: Colors.yellow, size: 18),
                          Icon(Icons.star, color: Colors.yellow, size: 18),
                          Icon(Icons.star, color: Colors.yellow, size: 18),
                          Icon(Icons.star_half, color: Colors.yellow, size: 18),
                        ],
                      ),
                    ],
                  ),
                ),
                // Time


              ],
            ),
          ),

          Container(
            // margin: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(left:10, right: 0),
            padding: EdgeInsets.only(left: 10,right: 10),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Image to the Left
                Container(

                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                    image: DecorationImage(
                      image: AssetImage('images/Location2.png'),

                    ),
                  ),
                ),
                // Image to the Extreme Right
                Container(
                  height: 30,
                  width: 100,
                    padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(


                    image: DecorationImage(
                      image: AssetImage('images/Call.png'),

                    ),
                  ),
                ),

              ],
            ),
          ),


                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        // Rounded Profile Picture
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: Colors.black),
                            // You can use a network image or AssetImage for the image
                            image: DecorationImage(
                              image: AssetImage('images/Avatar.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        // Name and Star Rating
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Name
                              Row(
                                children: [
                                  Text(
                                    'Sarah Jacob',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(width: 140,),
                                  Text(
                                    '8:12 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              // Star Rating
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow, size: 18),
                                  Icon(Icons.star, color: Colors.yellow, size: 18),
                                  Icon(Icons.star, color: Colors.yellow, size: 18),
                                  Icon(Icons.star, color: Colors.yellow, size: 18),
                                  Icon(Icons.star_half, color: Colors.yellow, size: 18),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Time


                      ],
                    ),
                  ),

                  Container(
                    // margin: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(left:10, right: 0),
                    padding: EdgeInsets.only(left: 10,right: 10),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Image to the Left
                        Container(

                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),

                            image: DecorationImage(
                              image: AssetImage('images/Location2.png'),

                            ),
                          ),
                        ),
                        // Image to the Extreme Right
                        Container(
                          height: 40,
                          width: 110,
                          padding: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(


                            image: DecorationImage(
                              image: AssetImage('images/Call.png'),

                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 16,),


                  Container(
                    margin: EdgeInsets.all(10),

                    decoration: BoxDecoration(



                    ),
                    width: double.infinity, // Full width
                    height: 60, // Set your desired height
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your button's functionality here
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0),
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Start Trip',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  )












                ],
              )

          ),
        )


    );
  }
}

