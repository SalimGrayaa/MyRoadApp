import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
          backgroundColor: Color(0XFF0097A7),
          automaticallyImplyLeading: true,
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(150, 65, 0, 0),
            child: Text(
              'Contacts',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          actions: [],
          elevation: 4,
        ),
      ),
      backgroundColor: Color(0XFFE5E5E5),
      body: SafeArea(
        // Barre de recherche //
        child: Stack(
          children: [
            Container(
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                    color: Colors.black,
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      print('IconButton pressed');
                    },
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      'Search friends...',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                    child: ListView(
                      //listview : la listes de cotntact//
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              // Stack de Salim: Widget de Salim //
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.network(
                                      'https://scontent.ftun15-1.fna.fbcdn.net/v/t1.6435-1/c0.0.317.317a/p480x480/152716901_1309955679389369_5433511488761399973_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=7206a8&_nc_ohc=S5bo4RYPER8AX9Fu3Fk&_nc_ht=scontent.ftun15-1.fna&oh=00_AT9sMkobw-66TvC4xsHGW3UE6P_Xa3cJmv82nzNQk7cXtQ&oe=61E41E33',
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.49, -0.22),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: IconButton(
                                      color: Colors.black,
                                      icon: Icon(
                                        Icons.person,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print("IconButton pressed");
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.27, -0.77),
                                  child: Text(
                                    'Salim Grayaa',
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 12),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.03, -0.28),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        200, 10, 0, 0),
                                    child: IconButton(
                                      color: Colors.black,
                                      icon: Icon(
                                        Icons.message,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed...');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              // Stack de Salim: Widget de Ali //
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.98, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.network(
                                        'https://media-exp1.licdn.com/dms/image/C4D03AQGypUzL2983Ug/profile-displayphoto-shrink_800_800/0/1637268153982?e=1645056000&v=beta&t=Lqetjaohk8w_5VfY-voIdiWjN122Kt8nn3c943F9NEs',
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.01, -0.01),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        200, 10, 0, 0),
                                    child: IconButton(
                                      color: Colors.black,
                                      icon: Icon(
                                        Icons.message,
                                        color: Color(0XFF75757575),
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed...');
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.48, -0.12),
                                  child: Text(
                                    'Ariana',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.68, 0.05),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: IconButton(
                                      color: Colors.black,
                                      icon: Icon(
                                        Icons.person,
                                        color: Color(0XFF75757575),
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed');
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.29, -0.67),
                                  child: Text(
                                    'Ali Dakhlaoui',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0XFFFAFAFA),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              // Stack de yahya //
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.97, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.network(
                                        'https://scontent.ftun15-1.fna.fbcdn.net/v/t1.6435-9/137608110_1689896591218258_5969099434244824928_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=GMabwK_i3IwAX9AoJkG&_nc_ht=scontent.ftun15-1.fna&oh=00_AT_kYP3bWmH-5OrTxvMwHZhuSSjEjWzNDh9gEbpbFx06dg&oe=61E0E6B3',
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.69, 0.05),
                                  child: IconButton(
                                    color: Colors.black,
                                    icon: Icon(
                                      Icons.person,
                                      color: Color(0XFF75757575),
                                      size: 30,
                                    ),
                                    onPressed: () {
                                      print('Iconutton pressed');
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.46, -0.14),
                                  child: Text(
                                    'Mahdia',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.28, -0.7),
                                  child: Text(
                                    'Yahya Allaya',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.82, -0.06),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        200, 10, 0, 0),
                                    child: IconButton(
                                      color: Colors.black,
                                      icon: Icon(
                                        Icons.message,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
