import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ride_sharing_project/view/riders_page.dart';

class RideSharePage extends StatelessWidget {
  // const RideSharePage ({super.key});
  const RideSharePage({Key? key}) : super(key: key);

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
        // appBar: MyAppBar(),


        body: SingleChildScrollView(
       child: Center(
            child:
            Column(
              children: [


                Container(
                  margin: const EdgeInsets.all(10),

                  // padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 3, color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "Upcoming",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white, // You can set your desired color
                          ),
                          child: Center(
                            child: Text(
                              "Completed",
                              style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white, // You can set your desired color
                          ),
                          child: Center(
                            child: Text(
                              "Create New",
                              style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    // Navigate to a new page when the box is clicked
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => RidersPage(),
                      ),
                    );
                  },
                  child: Center(
                    child: Column(
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
                              SizedBox(width: 10), // Adjust spacing as needed

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
                      ],
                    ),
                  )
                ),
                GestureDetector(
                    onTap: () {
                      // Navigate to a new page when the box is clicked
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => RidersPage(),
                        ),
                      );
                    },
                    child: Center(
                      child: Column(
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
                                SizedBox(width: 10), // Adjust spacing as needed

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
                        ],
                      ),
                    )
                ),

              ],
            )

        ),
      )


    );
  }
}



// class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
//   @override
//   // Size get preferredSize => Size.fromHeight(kToolbarHeight + 68);
//   Size get preferredSize => Size.fromHeight(kToolbarHeight + 80);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text(
//         'Ride Share',
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 28,
//         ),
//       ),
//       centerTitle: true,
//       leading: IconButton(
//         icon: Icon(
//           Icons.chevron_left,
//           size: 36,
//         ),
//         onPressed: () {
//           Navigator.of(context).pop();
//         },
//       ),
//       backgroundColor: Colors.white,
//       bottom: PreferredSize(
//         preferredSize: Size.fromHeight(48),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             margin: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.black, width: 2),
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: TabBar(
//               indicator: BoxDecoration(
//
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(8),
//
//               ),
//
//               labelColor: Colors.white, // Color of text when tab is active
//               unselectedLabelColor: Colors.grey,
//               // Color of text when tab is not active
//               labelStyle: TextStyle(
//                 fontSize: 16, // Adjust the font size as needed
//                 fontWeight: FontWeight.bold, // Make the text bold
//               ),
//               tabs: [
//                 Tab(text: "Upcoming"),
//                 Tab(text: "Completed"),
//                 Tab(text: "Create new"),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }







