import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:need_moto/Home.dart';
import 'package:need_moto/controller/Dropdown.dart';
import 'package:need_moto/main.dart';

class SelfDrive extends StatelessWidget {

  DropdownController controller = DropdownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor:Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Spacer(),
          Container(width:50,height:50,child: Image.asset('assets/car1.jpg'),),Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person))

        ],
      ),),
      drawer: Drawer(child: Text('drawer'),),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.all(0)),
                      Column(
                        children: [Container(
                            width:70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.blue,width: 2.0),
                              color: Colors.white,

                            ),
                            child: GestureDetector(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));},
                              child: Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(5),
                                child: Image.asset('assets/images/wheel.png'),
                              ),
                            )
                        ),
                          SizedBox(height: 5,),
                          Text('Self Drive')
                      ],),
                      Column(
                        children: [Container(
                            width:70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.blue,width: 2.0),
                              color: Colors.white,

                            ),
                            child: GestureDetector(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));},
                              child: Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(15),
                                child: Image.asset('assets/images/arrow.png'),
                              ),
                            )
                        ),
                          SizedBox(height: 5,),
                          Text('Tax vehicle')
                        ],),
                      Column(
                        children: [
                          SizedBox(height: 15,),
                          Container(
                            width:70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.blue,width: 2.0),
                              color: Colors.white,

                            ),
                            child: GestureDetector(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));},
                              child: Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(10),
                                child: Image.asset('assets/images/opp.png'),
                              ),
                            )
                        ),
                          SizedBox(height: 5,),
                          Text('Round trip \n with driver')
                        ],),
                      Column(
                        children: [Container(
                            width:70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.blue,width: 2.0),
                              color: Colors.white,

                            ),
                            child: GestureDetector(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));},
                              child: Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(10),
                                child: Image.asset('assets/images/truck.png'),
                              ),
                            )
                        ),
                          SizedBox(height: 5,),
                          Text('Commercial')
                        ],),
                      SizedBox(width: 6,)
                    ],
                  ),
                SizedBox(height: 15,),
                Container(width: double.infinity,
                height: 1,
                color: Colors.grey,),
                SizedBox(height: 15,),

                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),

                  child: DropdownSearch(

                    popupProps: PopupProps.menu(constraints: BoxConstraints(maxHeight: 200),),
                    items: controller.options,

                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        labelText: 'Seats',
                      )
                    ),
                    onChanged: (value){
                      controller.setValue(value!);
                    },
                    selectedItem: controller.selectedItem,

                  ),
                ),
              ],
            ),
          ),
        ),

    );
  }
}
