import 'package:flutter/material.dart';
import 'package:need_moto/views/Log_screen.dart';

import 'SelfDrive.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
//First screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Spacer(flex: 2,),
          Container(padding: EdgeInsets.all(15),width:150,height:50,child: Text('Need Moto',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w600,color: Colors.black),)),Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          Badge(backgroundColor: Colors.green,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.person)))

        ],
      ),),
      drawer: Drawer(child: Text('drawer'),),
      //Customer portal
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [Padding(padding: EdgeInsets.all(20)),Align(alignment: Alignment.center,),
                        Text('Welcome to Need Moto',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.blue.shade100,),
                          width: 370,
                        height: 170,
                        child: Column(
                          children: [
                            Text('You can book vehicle for local long drive \n with driver or without driver and commercial \n purpose also you can book',textAlign:TextAlign.center,style: TextStyle(height:1.5,fontSize: 15,fontWeight: FontWeight.w500),),
                            SizedBox(height: 20,),
                            GestureDetector(
                                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> SelfDrive()));},
                                child: Container(
                                  width: 250,
                                  height: 50,
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.orange,Colors.orangeAccent],stops: [0.1,0.7]),borderRadius: BorderRadius.circular(25)),
                                  child:Text('Find Vehicle',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                                )
                            ),
                          ],
                        ),),
                        SizedBox(height: 20,),
                        Text('Rent your Vehicle',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold)),
                        SizedBox(height: 10,),
                        //Owner portal
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.lightGreenAccent.shade100,),
                          width: 370,
                          height: 170,
                          child: Column(
                            children: [
                              Text('Get money by adding your vehicle to \n rush wheels and give for rent 1 day \n to so many days',textAlign:TextAlign.center,style: TextStyle(height:1.5,fontSize: 15,fontWeight: FontWeight.w500),),
                              SizedBox(height: 20,),
                              GestureDetector(
                                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> SelfDrive()));},
                                  child: Container(
                                    width: 250,
                                    height: 50,
                                    padding: EdgeInsets.all(7),
                                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.orange,Colors.orangeAccent],stops: [0.1,0.7]),borderRadius: BorderRadius.circular(25)),
                                    child:Text('Add Vehicle',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                                  )
                              ),
                            ],
                          ),),
                        SizedBox(height: 20,),
                        Container(width: 370,
                        height: 200,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.grey.shade300,),
                        ),
                      ],
        ),
      ),

      //log screen portal
      floatingActionButton: FloatingActionButton(child: Icon(Icons.hourglass_bottom),backgroundColor: Colors.orange,onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> LogScreen()));},),
    );
  }
}
