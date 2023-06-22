import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
 Object? valuechoose;
 List listItem=[
    'Qty 1',
     'Qty 2',
      'Qty 3',
      
    

 ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text('My Cart',style:TextStyle(color: Colors.black),),
      ),
      backgroundColor: Colors.white,
      elevation: 0,),
      
      body: SafeArea(
        child: ListView(
          
          children: [
      
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 185,
                 decoration: BoxDecoration(
                  border: Border(
                  bottom: BorderSide(
                    color: Colors.blue,
                     width: 2.0,
                     ),
                    ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                     child: Text("flipkart(6)",style:TextStyle(fontWeight: FontWeight.w600,fontSize: 20)),
                     ),
                       ),

                             Container(
                  width: 185,
                 decoration: BoxDecoration(
                  border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                     width: 2.0,
                     ),
                    ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                     child: Text("Grocery",style:TextStyle(color:Colors.black,fontWeight: FontWeight.w600,fontSize: 20) ,),
                     ),
                       ),
              ],
            ),

                Stack(
                   
        
              children: [
                
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Text('Deliver to:',style: TextStyle(fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90,top: 15),
                  child: Text('Anshad,673582',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 15) ,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200,),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(5, 25),
                      backgroundColor: Color.fromARGB(255, 202, 200, 200)
                    ),
                    onPressed: (){}, child:Text('Home')),
                ),

          
           Padding(
                  padding: const EdgeInsets.only(left: 10,top: 40),
                  child: Text('kizhakkethodukayil House,Pattinikkara..',style: TextStyle(color: Colors.grey,fontWeight:FontWeight.w700,fontSize: 15),),
                ),
                

                Padding(
                  padding: const EdgeInsets.only(left: 300,top: 10),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(30, 30),
                       side: BorderSide(width: 1,color: Color.fromARGB(255, 181, 178, 178)),
                    ),
                    onPressed: (){}, child:Text('Change')),
                ),
                   Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Divider(thickness: .3,color: Colors.black,),
            ),
              ],
            ),
            




                        Stack(
              children: [
                Image(image: AssetImage('assets/cart image/cart image1.png')),
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 10),
                  child: Text('KETCH Full Sleeve Solid Men Jacket',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 15) ,),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 35),
                  child: Text('Size:S',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.w500) ,),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 60),
                  child: RatingBar.builder(
                    minRating: 1,
                    itemBuilder:(context,_)=>Icon(Icons.star,color: Colors.green,),
                     onRatingUpdate:(rating){},
                     itemSize: 30,),
                     
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 100,left: 10),
                  child: DropdownButton(
                    hint: Text('Qty',style: TextStyle(fontWeight: FontWeight.w900),),
                    value: valuechoose,
                    items:listItem.map((valueitem){
                      return DropdownMenuItem(
                        value: valueitem,
                        child:Text(valueitem),);
                    }).toList(),
                     onChanged:(newvalue){
                      setState(() {
                        valuechoose =newvalue;
                      });
                     },
                    ),
                ),
                    
                    



             Padding(
               padding: const EdgeInsets.only(left: 100,top: 110),
               child: RichText(
                       text: TextSpan(
                         text: '61% off ',
                         style: TextStyle(color: Colors.green,fontWeight: FontWeight.w900,fontSize: 15),
                         children: [
                TextSpan(
                  text: ' ₹3,149',
                  style: TextStyle(color:Colors.grey,decoration: TextDecoration.lineThrough,fontWeight: FontWeight.w900,fontSize: 15),
                ),
                TextSpan(
                  text: ' ₹1,200',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 15),
                )
                         ],
                       ),
                     ),
             ),


             Padding(
               padding: const EdgeInsets.only(left: 100,top: 130),
               child: Text('4 offers applied . 2 offers available',style:TextStyle(fontWeight:FontWeight.w900,fontSize: 15,color: Colors.green),),
             ),



             Padding(
               padding: const EdgeInsets.only(left: 10,top: 160),
               child: RichText(
                text:TextSpan(
                  text: 'Delivery by Thu Mar 9 |',
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
                  children: [
                    TextSpan(
                      text: ' Free Delivery',
                      style: TextStyle(color: Colors.green,fontWeight: FontWeight.w900)
                    )
                  ]
                
                ),
                
                
                
                ),
             )
              
              ],
            ),


            Row(
              children: [
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(196,40),
                     shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            
                               ),
                   side: BorderSide(width: 1,color: Color.fromARGB(255, 175, 171, 171)),
                    
                  ),
                  onPressed: (){}, icon:Icon(Icons.save_alt_rounded,color: Color.fromARGB(255, 102, 100, 100),), label:Text('Save for later',style:TextStyle(color: Color.fromARGB(255, 86, 84, 84),fontWeight: FontWeight.w700),)),


                  OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(196,40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                               ),

                    
                   side: BorderSide(width: 1,color: Color.fromARGB(255, 191, 188, 188),),

                   
                    
                  ),
                  onPressed: (){}, icon:Icon(Icons.delete_outline_rounded,color: Color.fromARGB(255, 93, 90, 90),),
                   label:Text('Remove',style:TextStyle(color: Color.fromARGB(255, 94, 92, 92)),)),

              
              ],

            
            ),
                    Container(
                     color: Color.fromARGB(255, 211, 209, 209),
                     height: 10,
                     width: 200,
                    ),





                                Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image(image: AssetImage('assets/cart image/cart image2.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 10),
                  child: Text('WALLSTICK 72 cm Life quotes(80 x 20 c..',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 15) ,),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 35),
                  child: Text('pack of 1',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.w500) ,),
                ),

                   Padding(
                  padding: const EdgeInsets.only(left: 100,top: 60),
                  child: Text('Seller:TRIDENT_TEX',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.w500) ,),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 100,left: 10),
                  child: DropdownButton(
                    hint: Text('Qty',style: TextStyle(fontWeight: FontWeight.w900),),
                    value: valuechoose,
                    items:listItem.map((valueitem){
                      return DropdownMenuItem(
                        value: valueitem,
                        child:Text(valueitem),);
                    }).toList(),
                     onChanged:(newvalue){
                      setState(() {
                        valuechoose =newvalue;
                      });
                     },
                    ),
                ),
                    
                    



             Padding(
               padding: const EdgeInsets.only(left: 100,top: 110),
               child: RichText(
                       text: TextSpan(
                         text: '75% off ',
                         style: TextStyle(color: Colors.green,fontWeight: FontWeight.w900,fontSize: 15),
                         children: [
                TextSpan(
                  text: ' ₹699',
                  style: TextStyle(color:Colors.grey,decoration: TextDecoration.lineThrough,fontWeight: FontWeight.w900,fontSize: 15),
                ),
                TextSpan(
                  text: ' ₹169',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 15),
                )
                         ],
                       ),
                     ),
             ),


             Padding(
               padding: const EdgeInsets.only(left: 100,top: 130),
               child: Text('4 offers applied . 2 offers available',style:TextStyle(fontWeight:FontWeight.w900,fontSize: 15,color: Colors.green),),
             ),



             Padding(
               padding: const EdgeInsets.only(left: 10,top: 160),
               child: RichText(
                text:TextSpan(
                  text: 'Delivery by mon mar 6|',
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
                  children: [
                    TextSpan(
                      text: ' Free Delivery',
                      style: TextStyle(color: Colors.green,fontWeight: FontWeight.w900)
                    )
                  ]
                
                ),
                
                
                
                ),
             )
              
              ],
            ),


            Row(
              children: [
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(196,40),
                     shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            
                               ),
                   side: BorderSide(width: 1,color: Color.fromARGB(255, 175, 171, 171)),
                    
                  ),
                  onPressed: (){}, icon:Icon(Icons.save_alt_rounded,color: Color.fromARGB(255, 102, 100, 100),), label:Text('Save for later',style:TextStyle(color: Color.fromARGB(255, 86, 84, 84),fontWeight: FontWeight.w700),)),


                  OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(196,40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                               ),

                    
                   side: BorderSide(width: 1,color: Color.fromARGB(255, 191, 188, 188),),

                   
                    
                  ),
                  onPressed: (){}, icon:Icon(Icons.delete_outline_rounded,color: Color.fromARGB(255, 93, 90, 90),),
                   label:Text('Remove',style:TextStyle(color: Color.fromARGB(255, 94, 92, 92)),)),

              
              ],

            
            ),
                    Container(
                     color: Color.fromARGB(255, 211, 209, 209),
                     height: 10,
                     width: 200,
                    ),








                        Stack(
              children: [
                Image(image: AssetImage('assets/cart image/cart image3.png')),
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 10),
                  child: Text('Boult Drift BT Calling 1.69" HD DI...',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 15) ,),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 35),
                  child: Text('Sand Black Strap,Free Size',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.w500) ,),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 60),
                  child: RatingBar.builder(
                    minRating: 1,
                    itemBuilder:(context,_)=>Icon(Icons.star,color: Colors.green,),
                     onRatingUpdate:(rating){},
                     itemSize: 30,),
                     
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 100,left: 10),
                  child: DropdownButton(
                    hint: Text('Qty',style: TextStyle(fontWeight: FontWeight.w900),),
                    value: valuechoose,
                    items:listItem.map((valueitem){
                      return DropdownMenuItem(
                        value: valueitem,
                        child:Text(valueitem),);
                    }).toList(),
                     onChanged:(newvalue){
                      setState(() {
                        valuechoose =newvalue;
                      });
                     },
                    ),
                ),
                    
                    



             Padding(
               padding: const EdgeInsets.only(left: 100,top: 110),
               child: RichText(
                       text: TextSpan(
                         text: '81% off ',
                         style: TextStyle(color: Colors.green,fontWeight: FontWeight.w900,fontSize: 15),
                         children: [
                TextSpan(
                  text: ' ₹7,999',
                  style: TextStyle(color:Colors.grey,decoration: TextDecoration.lineThrough,fontWeight: FontWeight.w900,fontSize: 15),
                ),
                TextSpan(
                  text: ' ₹1,499',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 15),
                )
                         ],
                       ),
                     ),
             ),


             Padding(
               padding: const EdgeInsets.only(left: 100,top: 130),
               child: Text('2 offers applied . 3 offers available',style:TextStyle(fontWeight:FontWeight.w900,fontSize: 15,color: Colors.green),),
             ),



             Padding(
               padding: const EdgeInsets.only(left: 10,top: 160),
               child: RichText(
                text:TextSpan(
                  text: 'Delivery by Fri May 19 |',
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
                  children: [
                    TextSpan(
                      text: ' Free Delivery',
                      style: TextStyle(color: Colors.green,fontWeight: FontWeight.w900)
                    )
                  ]
                
                ),
                
                
                
                ),
             )
              
              ],
            ),



                    




            
            
        

                
  

          ],
        )
        
        ),
    );

    
  }
}