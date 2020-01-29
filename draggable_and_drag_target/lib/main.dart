import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: App(),
    );
  }
}

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  
  Color caughtColor = Colors.grey;
  
  @override
  Widget build(BuildContext context) {
    return Stack(
       children: <Widget>[
         DragBox(Offset(20.0, 40.0), 'Box 1', Colors.lime),
         DragBox(Offset(140.0, 40.0), 'Box 2', Colors.orange),
         DragBox(Offset(260.0, 40.0), 'Box 3', Colors.red),

         Positioned(
           left: 100.0,
           bottom: 0.0,
           child: DragTarget(
             onAccept: (Color color) {
               caughtColor = color;
             },
             builder: (
               BuildContext context,
               List<dynamic> accepted,
               List<dynamic> rejected
             ) {
               return Container(
                 width: 200.0,
                 height: 200.0,
                 decoration: BoxDecoration(
                   color: accepted.isEmpty ? caughtColor : Colors.grey.shade200
                 ),
                 child: Center(
                   child: Text("Drag Here!"),
                 ),
               );
             },
           ),
         )
       ],
    );
  }
}

class DragBox extends StatefulWidget {
  
  final Offset initPos;
  final String label;
  final Color itemColor;

  // DragBox({Key key}) : super(key: key);
  DragBox(this.initPos, this.label, this.itemColor);

  @override
  _DragBoxState createState() => _DragBoxState();

}

class _DragBoxState extends State<DragBox> {

  Offset position = Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();
    position = widget.initPos;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
       left: position.dx,
       top: position.dy,
       child: Draggable(
         data: widget.itemColor,
         child: Container(
           width: 100.0,
           height: 100.0,
           color: widget.itemColor,
           child: Center(
             child: Text(
               widget.label,
               style: TextStyle(
                 color: Colors.white,
                 decoration: TextDecoration.none,
                 fontSize: 20.0
               ),
             ),
           ),
         ),
         onDraggableCanceled: (velocity, offset) {
           setState(() {
             position = offset;
           });
         },
         feedback: Container(
           width: 100.0,
           height: 100.0,
           color: widget.itemColor.withOpacity(0.2),
           child: Center(
             child: Text(
               widget.label,
               style: TextStyle(
                 color: Colors.white,
                 decoration: TextDecoration.none,
                 fontSize: 18.0
               ),
             ),
           ),
         ),
       ),
    );
  }
}