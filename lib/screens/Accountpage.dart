import 'package:flipkart/screens/account_order_page/Account_order_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Accountpage extends StatelessWidget {
  const Accountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: SafeArea(
             child: ListView(
              children: [
                AppBar(
                  title: Text('Hey! Anshad Aze',style: TextStyle(color: Colors.black),),
                  
                  backgroundColor: Colors.white,
                    elevation: 0,
                    ),

                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      OutlinedButton.icon(
                        style:OutlinedButton.styleFrom(
                          minimumSize: Size(160,40),
                          side: BorderSide(width: 1,color: Color.fromARGB(255, 85, 83, 83)),
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>accountOrderPage()));
                        }, icon:Icon(Icons.view_in_ar_rounded), label:Text('Orders',style: TextStyle(color:Colors.black,fontWeight: FontWeight.w700,fontSize: 15),)),

                         OutlinedButton.icon(
                        style:OutlinedButton.styleFrom(
                          minimumSize: Size(160,40),
                          side: BorderSide(width: 1,color: Color.fromARGB(255, 85, 83, 83)),
                        ),
                        onPressed: (){}, icon:Icon(Icons.favorite_border_outlined), label:Text('Whishlist',style: TextStyle(color:Colors.black,fontWeight: FontWeight.w700,fontSize: 15),),
                   ),
                  ],
                 ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      OutlinedButton.icon(
                        style:OutlinedButton.styleFrom(
                          minimumSize: Size(160,40),
                          side: BorderSide(width: 1,color: Color.fromARGB(255, 85, 83, 83)),
                        ),
                        onPressed: (){}, icon:Icon(Icons.card_giftcard_sharp), label:Text('Coupons',style: TextStyle(color:Colors.black,fontWeight: FontWeight.w700,fontSize: 15),)),

                         OutlinedButton.icon(
                        style:OutlinedButton.styleFrom(
                          minimumSize: Size(160,40),
                          side: BorderSide(width: 1,color: Color.fromARGB(255, 85, 83, 83)),
                        ),
                        onPressed: (){}, icon:Icon(Icons.headset_mic_outlined), label:Text('Help Center',style: TextStyle(color:Colors.black,fontWeight: FontWeight.w700,fontSize: 15),),
                   ),
                  ],
                 ),

                 Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Container(
                    color: Color.fromARGB(255, 211, 209, 209),
                    height: 10,
                    width: 390,
                   ),
                 ),


                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 20),
                  child: Row(
                  children: [
                    Text('Credit Options',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 20) ,)
                  ],
                  ),
                ),

                  
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 22),
                  child: Icon(Icons.calendar_today_outlined,color: Colors.blue,size: 30,),
                ),

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 120,top: 20),
                      child: Text('Flipkart Pay Later',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500) ,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top:5),
                      child: Text('Complete application & get  ₹500* gift card'),
                    )
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 14,top: 14),
                  child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.black,size: 20,),
                )
              ],
             ),

                  Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Container(
                    color: Color.fromARGB(255, 211, 209, 209),
                    height: 10,
                    width: 390,
                   ),
                 ),


                       Padding(
                  padding: const EdgeInsets.only(top: 15,left: 20),
                  child: Row(
                  children: [
                    Text('Account Settings',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 20) ,)
                  ],
                  ),
                ),
                  
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 22),
                        child: Icon(Icons.zoom_in_map_outlined,color: Colors.blue,size: 30,),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 15),
                        child: Text('FlipKart Plus',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 200,top: 15),
                         child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.black,size: 15,),
                       ),
                    ],
                  ),

                       
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 22),
                        child: Icon(Icons.person_2_outlined,color: Colors.blue,size: 30,),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 15),
                        child: Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 215,top: 15),
                         child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.black,size: 15,),
                       ),
                    ],
                  ),


                          Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 22),
                        child: Icon(Icons.account_balance_wallet_outlined,color: Colors.blue,size: 30,),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 15),
                        child: Text('Saved Cards & Wallet',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 140,top: 15),
                         child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.black,size: 15,),
                       ),
                    ],
                  ),



                              Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 22),
                        child: Icon(Icons.location_on_outlined,color: Colors.blue,size: 30,),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 15),
                        child: Text('Saved Addresses',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 168,top: 15),
                         child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.black,size: 15,),
                       ),
                    ],
                  ),




                  
                              Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 22),
                        child: Icon(Icons.language_rounded,color: Colors.blue,size: 30,),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 15),
                        child: Text('Select Language',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 173,top: 15),
                         child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.black,size: 15,),
                       ),
                    ],
                  ),



                        
                              Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 22),
                        child: Icon(Icons.edit_notifications,color: Colors.blue,size: 30,),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 15),
                        child: Text('Notification Settings',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 145,top: 15),
                         child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.black,size: 15,),
                       ),
                    ],
                  ),





                  
                  Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Container(
                    color: Color.fromARGB(255, 211, 209, 209),
                    height: 10,
                    width: 390,
                   ),
                 ),


                       Padding(
                  padding: const EdgeInsets.only(top: 15,left: 20),
                  child: Row(
                  children: [
                    Text('My Activity',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 20) ,)
                  ],
                  ),
                ),



                           
                              Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 22),
                        child: Icon(Icons.note_alt_outlined,color: Colors.blue,size: 30,),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 15),
                        child: Text('Review',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 240,top: 15),
                         child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.black,size: 15,),
                       ),
                    ],
                  ),

                             
                              Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 22),
                        child: Icon(Icons.question_answer,color: Colors.blue,size: 30,),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 15),
                        child: Text('Questions & Answers',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 138,top: 15),
                         child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.black,size: 15,),
                       ),
                    ],
                  ),



                     
                  Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Container(
                    color: Color.fromARGB(255, 211, 209, 209),
                    height: 10,
                    width: 390,
                   ),
                 ),



                        Padding(
                  padding: const EdgeInsets.only(top: 15,left: 20),
                  child: Row(
                  children: [
                    Text('Earn With Flipkart',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 20) ,)
                  ],
                  ),
                ),


                                       
                              Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 22),
                        child: Icon(Icons.star_border_outlined,color: Colors.blue,size: 30,),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 15),
                        child: Text('Flipkart Creator Studio',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 130,top: 15),
                         child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.black,size: 15,),
                       ),
                    ],
                  ),



                                 Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 22),
                        child: Icon(Icons.storefront,color: Colors.blue,size: 30,),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 15),
                        child: Text('Sell on Flipkart',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 185,top: 15),
                         child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.black,size: 15,),
                       ),
                    ],
                  ),



                      Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Container(
                    color: Color.fromARGB(255, 211, 209, 209),
                    height: 10,
                    width: 390,
                   ),
                 ),




                 

                        Padding(
                  padding: const EdgeInsets.only(top: 15,left: 20),
                  child: Row(
                  children: [
                    Text('Feedback & information',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 20) ,)
                  ],
                  ),
                ),



                
                                 Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 22),
                        child: Icon(Icons.description_rounded,color: Colors.blue,size: 30,),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 15),
                        child: Text('Terms, policies and Licenses',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 85,top: 15),
                         child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.black,size: 15,),
                       ),
                    ],
                  ),



                                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 22),
                        child: Icon(Icons.question_mark_outlined,color: Colors.blue,size: 30,),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 15),
                        child: Text('Browse FAQs',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left:196,top: 15),
                         child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.black,size: 15,),
                       ),
                    ],
                  ),


                  SizedBox(height: 10,),
                  Container(
                    height: 80,
                    color: Color.fromARGB(255, 217, 214, 214),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        
                        OutlinedButton(
                             style:OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: Size(250, 35),
                              side: BorderSide(width: .5,color:Color.fromARGB(255, 35, 33, 33)),
                            ),
                          onPressed: (){}, child: Text('Log out',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
                      ],
                    ),
                  ),

                  
                  
                  
                  
                  
                  

              ],)
             ),
    );
  }
}