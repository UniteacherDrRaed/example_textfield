import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}
String contentItemInGridView="iitem";
TextEditingController textEditingController =TextEditingController();
class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("writing something in GridView using Textfield"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),
              
            controller: textEditingController,

          ),
          OutlinedButton(
            onPressed: ()
            {
              setState(() {
               contentItemInGridView=textEditingController.text;

              });
            },
             child:const Text("adding text to Gridview"))
          ,
          Container(
            height: 200,
            child: GridView.builder(
            itemCount: 12,
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4) , 
            itemBuilder: ( (context, index) => 
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(4, 4),
                    color: Colors.blueGrey,
                  )
                ],
                gradient: const LinearGradient(colors: [
                  Colors.orange,
                  Colors.green
                ])
              ),
              child: Text(contentItemInGridView),
            ))),
          ),
        ],
        
      ),
    );
  }
}