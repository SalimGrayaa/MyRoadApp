import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myroad/Models/transport.dart';

class MainMapScreen extends StatefulWidget {
  @override
  _MainMapScreenState createState() => _MainMapScreenState();
}

class _MainMapScreenState extends State<MainMapScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Container(
        color: Color(0xFF212E53),
        child: Row(
          children: [
            Image.asset('assets/inputSearch.PNG'),
            Expanded(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search Location",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search Location",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: IconButton(
                  icon: Image.asset('assets/btnSearch.PNG'),
                  iconSize: 60,
                  onPressed: () {
                    print("Searching .....");
                  }),
            )
          ],
        ),
      ),
      Container(
        height: 300.0,
        child: GoogleMap(
          mapType: MapType.normal,
          myLocationEnabled: true,
          initialCameraPosition: CameraPosition(
            target: LatLng(36.8919015, 10.1855828),
            zoom: 15,
          ),
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: transportList.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {},
          title: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: Container(
                    child: Row(
                      children: [
                        
                        for (var i =0 ; i < transportList[index].transports.length ; i++)
                          Row(
                            children: [
                              Icon(transportList[index].transports[i],
                                color:transportList[index].getTransportColor(transportList[index].transports[i]),
                                 size: 40,
                              ),
                              Container(
                              height: 4,
                              width: 30,
                              color:transportList[index].getTransportColor(transportList[index].transports[i])  ,
                              )
                            ],
                          ),
                        Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 20,
                                color:transportList[index].getTransportColor(transportList[index].transports[transportList[index].transports.length-1])  ,),
                              
                            ],
                          ),
                      ],
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        'A partir du ${transportList[index].price} Dt',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                      Spacer(),
                      Text("A proximete ${transportList[index].distance} Km"),
                    ],
                  ),
                  
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Click here to see more details',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          Icon(Icons.arrow_forward_rounded),
                        ],
                      ),
                      Text("A proximete time is ${transportList[index].time} H"),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    ]));
  }
}
