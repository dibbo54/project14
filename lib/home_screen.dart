import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        // children: [
        //   Card(
        //     child: ListTile(
        //       onTap: () {
        //         Get.defaultDialog(
        //           titlePadding: EdgeInsets.only(top: 20),
        //           title: 'Delete Chat',
        //           contentPadding: EdgeInsets.all(20),
        //           titleStyle: TextStyle(color: Colors.red),
        //           //   middleText: 'Are you sure you want to delete this chat? This will also delete the messages related to Posts ' ,
        //           textCancel: 'Yes',
        //           textConfirm: 'No',
        //           //  buttonColor: Colors.red,
        //           confirm: GestureDetector(
        //               onTap: () {
        //                 Get.back();
        //               },
        //               child: const Text('Confirm')),
        //           cancel: GestureDetector(
        //               onTap: () {
        //                 Get.back();
        //               },
        //               child: Text('Cancel')),
        //           //  onCancel: (){
        //           //    Get.back();
        //           //  },
        //           //  onConfirm: (){
        //           //    Get.back();
        //           //  },
        //           //  content: Column(
        //           //    children: [
        //           //      Text('asdfsf'),
        //           //      Text('asdfsf'),
        //           //      Text('asdfsf'),
        //           //      Text('asdfsf'),
        //           //
        //           //    ],
        //           //  )
        //         );
        //       },
        //       title: Text('Get Dialaog Alert'),
        //       subtitle: Text('Get Dialog alert example'),
        //     ),
        //   ),
        //   Card(
        //     child: ListTile(
        //       onTap: (){
        //         Get.bottomSheet(
        //           Container(
        //             decoration:  const BoxDecoration(
        //                 borderRadius: BorderRadius.only(
        //                     topLeft: Radius.circular(30)
        //                 )
        //             ),
        //             child: Column(
        //               children: [
        //                 ListTile(
        //                   onTap: (){
        //                     Get.changeTheme( ThemeData.light());
        //                   },
        //                   leading: const Icon(Icons.light_mode),
        //                   title: const Text('Light mode'),
        //                   subtitle: const Text('Light mode'),
        //                 ),
        //                 ListTile(
        //                   onTap: (){
        //                     Get.changeTheme( ThemeData.dark());
        //                   },
        //                   leading: const Icon(Icons.dark_mode),
        //                   title: const Text('Dark mode'),
        //                   subtitle: const Text('Dark mode'),
        //                 )
        //               ],
        //             ),
        //           ) ,
        //           elevation: 1 ,
        //         );
        //       },
        //       title: const Text('Get Bottom Sheet'),
        //       subtitle: const Text('How to change Light and Dark Mode with GetX'),
        //     ),
        //   ),
        // ],

        children: [
          TextButton(onPressed: (){
            //  Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));
            Get.to(ScreenOne(name: 'Asif Taj',));
          }, child: Text('Go to Screen 1'))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar(
          'Asif Taj',
          'Subscribe to my channel',
          icon: Icon(Icons.add),
          onTap: (snap) {},
          mainButton: TextButton(onPressed: () {}, child: Text('Click')),
          backgroundColor: Colors.blue,
          snackPosition: SnackPosition.BOTTOM,
          //duration: Duration(3)
        );
      }),
    );
  }
}


class ScreenOne extends StatefulWidget {
  final String name ;
  const ScreenOne({Key? key,required this.name}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One' + widget.name.toString()),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));
                Get.to(ScreenTwo());
              //Get.toNamed('/screen2');
            }, child: Text('Go to Screen 2')),
          ),
          Center(
            child: TextButton(onPressed: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));
              Get.back();
            }, child: Text('Back')),
          )
        ],
      ),

    );
  }
}




class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}


class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(onPressed: (){
              Get.back();
            }, child: Text('Back')),
          )
        ],
      ),
    );
  }
}
