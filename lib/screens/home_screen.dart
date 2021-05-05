import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
         


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //Handle Indicator
  // List<T> map<T>(List list,Function handler){
  //   List<T> result =[];
  //   for(var i=0;i<list.length;i++){
  //     result.add(handler(i,list[i]));
  //   }
  //   return result;
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      margin: EdgeInsets.only(top:8),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
           Container(
             margin: EdgeInsets.only(left:16,right:16),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
              //  SvgPicture.asset('assets/svg/drawer_icon.jpg')
                GestureDetector(
                  onTap: (){
                    print('this is drawer');
                  },
                  child: Icon(Icons.calendar_view_day,size:40,color: Colors.grey,)),
                  Container(
                    child: Text('MOTERA',style: GoogleFonts.inter(
                     fontSize:25,
                     fontWeight:FontWeight.w800,
                     color:Colors.indigo[900],
                   )),
                  ),
                Container(
                  height: 59,
                  width: 59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image:DecorationImage(
                      image :AssetImage('assets/images/a.png')
                    )
                  ),
                )
             ],),),
             //card section
             SizedBox(
               height:15
             ),
             Padding(
               padding: EdgeInsets.only(left:16,bottom:16),
                            child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Good Morning',style: GoogleFonts.inter(
                     fontSize:18,
                     fontWeight:FontWeight.w500,
                     color:Colors.black,
                   )),
                   Text('Emma Watson',style: GoogleFonts.inter(
                     fontSize:30,
                     fontWeight:FontWeight.w700,
                     color:Colors.black
                   ),)
                 ],
               ),
             ),
             Container(
               height: 199,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 padding: EdgeInsets.only(left:16,right:6),
                //  itemCount: cards.length,
                itemCount: 3,
                 itemBuilder: (context, index){
                   return Container(
                     margin:EdgeInsets.only(right:10),
                     height:199,
                     width:344,
                     decoration: BoxDecoration(
                       borderRadius:BorderRadius.circular(20),
                      //  color: Color(cards[index].cardBackground)
                      gradient: LinearGradient(
                        begin:Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.pink[300],Colors.blueAccent[200]],
                         ),
                      color :Colors.blueAccent[400]
                       ),
                       child: Stack(
                         children: [
                           Positioned(
                            left: 29,
                            top:45,
                            child: Text('CARD NUMBER',style:GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                            )),
                           ),
                            Positioned(
                            left: 29,
                            top:70,
                            child: Text('**** **** **** 1425',style:GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            )),
                           ),
                           Positioned(
                            right: 21,
                            top:25,
                            child: Image.asset('assets/images/logo.jpg',width:50,height:57),
                           
                           ),
                            Positioned(
                            left: 29,
                            bottom:60,
                            child: Text('CARD HOLDERNAME',style:GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                            )),
                           ),
                            Positioned(
                            left: 29,
                            bottom:35,
                            child: Text('Emma Watson',style:GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            )),
                           ),
                            Positioned(
                            left: 202,
                            bottom:60,
                            child: Text('EXPIRY DATE',style:GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            )),
                           ),
                           Positioned(
                            left: 202,
                            bottom:35,
                            child: Text('03-01-2023',style:GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                            )),
                           )
                         ],
                       ),
                   );
                 },
               ),
             ),
             Padding(
               padding:EdgeInsets.only(left:16,bottom:5,top:10),
                            child: Row(
                 children: [
                   Text('Operations',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                   Spacer(),
                   Icon(Icons.keyboard_control,size: 40)
                   ],
               ),
             ),
             Container(
               margin: EdgeInsets.only(left:16,right: 10,),
               height:120,
               child: ListView( 
                 scrollDirection: Axis.horizontal,
                 children: [
                   Container(
                     width: 140,
                     child: Card(
                     color: Colors.indigo[800],
                      child: Stack(children: [
             
                          Padding(
                            padding: EdgeInsets.only(left:30,top:10),
                            child: Icon(Icons.account_balance_wallet_rounded,color: Colors.white,size: 70,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 80,left: 20),
                            child: Text('Account details',style: TextStyle(color: Colors.white),),
                          )
                         
                           
                      ],),
                      

                                            
                     )
                     ),
                    
                      Container(
                     width: 140,
                     child: Card(
                     color: Colors.indigo[800],
                      child: Stack(children: [
                         Padding(
                            padding: EdgeInsets.only(left:30,top:10),
                            child: Icon(Icons.point_of_sale_outlined,color: Colors.white,size: 70,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 80,left: 20),
                            child: Text('Money Withdraw',style: TextStyle(color: Colors.white),),
                          )
                      ],),

                                            
                     )
                     ),
                       Container(
                     width: 140,
                     child: Card(
                     color: Colors.indigo[800],
                      child: Stack(children: [
                           Padding(
                            padding: EdgeInsets.only(left:30,top:10),
                            child: Icon(Icons.search_outlined ,color: Colors.white,size: 70,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 80,left: 20),
                            child: Text('Insight Tracking',style: TextStyle(color: Colors.white),),
                          )
                      ],),

                                            
                     )
                     ),
                      Container(
                     width: 140,
                     child: Card(
                     color: Colors.indigo[800],
                      child: Stack(children: [
                           Padding(
                            padding: EdgeInsets.only(left:30,top:10),
                            child: Icon(Icons.monetization_on,color: Colors.white,size: 70,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 80,left: 35),
                            child: Text('Passbook',style: TextStyle(color: Colors.white),),
                          )
                      ],),

                                            
                     )
                     )
                   
                 ],
               ),
             ),
              Padding(
               padding:EdgeInsets.only(left:16,bottom:13,top:15,right:10),
                            child: Row(
                 children: [
                   Text('Transaction Histories',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                  
                   ],
               ),
             ),
            
            Container(
               margin: EdgeInsets.only(left:16,right: 10,top:2),
               height:200,
               child: ListView( 
                 scrollDirection: Axis.vertical,
                 children: [
                   Container(
                     width: 10,
                     height: 80,
                     child: Card(
                     color: Colors.grey[200],
                      child: Stack(children: [
             
                          Padding(
                            padding: EdgeInsets.only(left:30,top:10),
                            child: Image.asset('assets/images/uber.png',height: 150,)
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15,left: 120),
                            child: Text('Uber Ride',style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.w700),),
                          ),
                           Padding(
                            padding: EdgeInsets.only(top: 40,left: 120),
                            child: Text('1st April 2020',style: TextStyle(color: Colors.black54,fontSize:14),),
                          ),
                           Padding(
                            padding: EdgeInsets.only(top: 30,left: 240),
                            child: Text('- \$35.214',style: TextStyle(color: Colors.indigo[700],fontSize:18,fontWeight: FontWeight.w900),),
                          )
                         
                           
                      ],),
                      

                                            
                     )
                     ),
                    
                     Container(
                     width: 10,
                     height: 80,
                     child: Card(
                     color: Colors.grey[200],
                      child: Stack(children: [
             
                          Padding(
                            padding: EdgeInsets.only(left:30,top:10),
                            child: Image.asset('assets/images/nike.png',height: 50,width: 70,)
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15,left: 120),
                            child: Text('Nike Outlet',style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.w700),),
                          ),
                           Padding(
                            padding: EdgeInsets.only(top: 40,left: 120),
                            child: Text('30th March 2020',style: TextStyle(color: Colors.black54,fontSize:14),),
                          ),
                           Padding(
                            padding: EdgeInsets.only(top: 30,left: 240),
                            child: Text('- \$100.00',style: TextStyle(color: Colors.indigo[700],fontSize:18,fontWeight: FontWeight.w900),),
                          )
                         
                           
                      ],),
                      

                                            
                     )
                     ),
                       Container(
                     width: 10,
                     height: 80,
                     child: Card(
                     color: Colors.grey[200],
                      child: Stack(children: [
             
                          Padding(
                            padding: EdgeInsets.only(left:30,top:10),
                            child: Image.asset('assets/images/face.png',height: 150,)
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15,left: 120),
                            child: Text('Received',style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.w700),),
                          ),
                           Padding(
                            padding: EdgeInsets.only(top: 40,left: 120),
                            child: Text('12th March 2020',style: TextStyle(color: Colors.black54,fontSize:14),),
                          ),
                           Padding(
                            padding: EdgeInsets.only(top: 30,left: 240),
                            child: Text('+ \$250.00',style: TextStyle(color: Colors.red,fontSize:18,fontWeight: FontWeight.w900),),
                          )
                         
                           
                      ],),
                      

                                            
                     )
                     ),
                      Container(
                     width: 10,
                     height: 80,
                     child: Card(
                     color: Colors.grey[200],
                      child: Stack(children: [
             
                        
                      ],),
                      

                                            
                     )
                     )
                   
                 ],
               ),
             ),
        ],
      ),
      ),
      
    );
  }
}