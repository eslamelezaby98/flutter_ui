import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff25d165),
      actions: [
        //Camera
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
        ),
        //Search
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search_sharp,
            color: Colors.white,
          ),
        ),
        //More
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert_outlined,
            color: Colors.white,
          ),
        ),
      ],
      leading: // whatsapp & logo
          Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/whatsapp_logo.png',
            ),
            maxRadius: 15,
          ),
          SizedBox(width: 5),
          Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
      leadingWidth: 150,
    );

    //  Stack(
    //   children: [
    //     Container(
    //       color: Color(0xff25d165),
    //       height: size.height / 13,
    //       width: size.width,
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           // whatsapp & logo
    //           Row(
    //             children: [
    //               CircleAvatar(
    //                 backgroundImage: AssetImage(
    //                   'assets/images/whatsapp_logo.png',
    //                 ),
    //                 maxRadius: 15,
    //               ),
    //               SizedBox(width: 5),
    //               Text(
    //                 'WhatsApp',
    //                 style: TextStyle(
    //                   color: Colors.white,
    //                   fontWeight: FontWeight.bold,
    //                   fontSize: 20,
    //                 ),
    //               ),
    //             ],
    //           ),
    //           // appbar buttons
    //           Row(
    //             children: [
    //               //Camera
    //               IconButton(
    //                 onPressed: () {},
    //                 icon: Icon(
    //                   Icons.camera_alt_outlined,
    //                   color: Colors.white,
    //                 ),
    //               ),
    //               //Search
    //               IconButton(
    //                 onPressed: () {},
    //                 icon: Icon(
    //                   Icons.search_sharp,
    //                   color: Colors.white,
    //                 ),
    //               ),
    //               //More
    //               IconButton(
    //                 onPressed: () {},
    //                 icon: Icon(
    //                   Icons.more_vert_outlined,
    //                   color: Colors.white,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(top: 30),
    //       child: Center(
    //         child: CircleAvatar(
    //           maxRadius: 40,
    //           backgroundImage: AssetImage(
    //             'assets/images/user.jpg',
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
