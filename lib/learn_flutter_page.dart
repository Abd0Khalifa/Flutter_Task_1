import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget
{
  const LearnFlutterPage({Key? key}) : super(key: key);
// This widget is the root
// of your application.
  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPage();
}

class _LearnFlutterPage extends State<LearnFlutterPage>
{
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override

  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar
        (
        title: const Text("lean"),
        automaticallyImplyLeading: false,
        leading: IconButton
          (
          onPressed: ()
          {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [IconButton(onPressed: (){debugPrint('Actions');}, icon: const Icon(Icons.info_outline,),),],
      ),
      //here
      body: SingleChildScrollView
        (
        child: Column
          (
          children:
          [
            //Image.asset('images/image1.jpg'),
            Image.network('https://charlieintel.com/wp-content/uploads/2022/07/modern-warfare-2-campaign-early-access-leaked.jpg'),
            const SizedBox(height: 10,),
            const Divider(color: Colors.red,),
            Container
              (
              color: Colors.blueGrey,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: const Center
                (
                child: Text
                  ('This is a text widget',
                    style: TextStyle(color: Colors.white)
                ),
              ),
            ),
            ElevatedButton
              (
              style: ElevatedButton.styleFrom(primary: isSwitch ? Colors.brown : Colors.green ),
              onPressed: ()
              {debugPrint('Okay');},
              child: const Text('Elevated Button'),
            ),

            OutlinedButton
              (
              onPressed: ()
              {debugPrint('Okay');},
              child: const Text('Outlined Button'),
            ),

            TextButton
              (
              onPressed: ()
              {debugPrint('Okay');},
              child: const Text('Outlined Button'),
            ),
            GestureDetector
              (
                behavior: HitTestBehavior.opaque,
                onTap: ()
                {
                  debugPrint('This is the row');
                },
                child: Row
                  (
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const
                  [
                    Icon
                      (
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ), // Icon
                    Text('Row widget'),
                    Icon
                      (
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ), // Icon
                  ],
                )

            ),
            Switch
              (
                value: isSwitch, onChanged: (bool newBool)
            {
              setState(()
              {
                isSwitch = newBool;
              }       );
            }),

            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool)
                {
                  setState(()
                  {
                    isCheckbox = newBool;
                  });
                }),
            //Image.asset('images/image2.jpg')
          ],
        ),
      ),



    );
  }

}