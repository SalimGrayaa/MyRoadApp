
import 'package:flutter/material.dart';
import 'package:myroad/Models/voyage.dart';

class TransportsList extends StatelessWidget {
  const TransportsList({
    Key? key,
    required this.transports,
  }) : super(key: key);

  final List<Voyage> transports;

  @override
  Widget build(BuildContext context) {
    if (transports.length == 0) {
      return Column(
        children: [
          SizedBox(height:50 ,),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Center(
                child: Text("there is no possible way",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF14005C),
                      ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
        ],
      );
    }else{
      return ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: transports.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {},
          title: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: Container(
                    child: Column(
                      children: [
                        Text(transports[index].title),
                        Row(
                          children: [
                            for (var i =0 ; i < transports[index].transports.length ; i++)
                              Row(
                                children: [
                                  Icon(transports[index].transports[i],
                                    color:transports[index].getTransportColor(transports[index].transports[i]),
                                    size: 40,
                                  ),
                                  Container(
                                  height: 4,
                                  width: 30,
                                  color:transports[index].getTransportColor(transports[index].transports[i])  ,
                                  )
                                ],
                              ),
                            Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 20,
                                    color:transports[index].getTransportColor(transports[index].transports[transports[index].transports.length-1])  ,),
                                ],
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        'A proximete ${transports[index].temps_voyage}',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                      Spacer(),
                      Text("A proximete ${transports[index].distance} Km"),
                    ],
                  ),
                  
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text("From  ${transports[index].prix_voyage} Dt"),
                      Row(
                        children: [
                          Text(
                            'Click here to see more details',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          Icon(Icons.arrow_forward_rounded),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      );
    }
  }
}

