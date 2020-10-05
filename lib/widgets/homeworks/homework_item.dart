import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeworkItem extends StatefulWidget {
  HomeworkItem({
    @required this.title,
    @required this.instructions,
    @required this.date,
  });
  final String title;
  final String instructions;
  final DateTime date;

  @override
  _HomeworkItemState createState() => _HomeworkItemState();
}

class _HomeworkItemState extends State<HomeworkItem> {
  String _formatInstructions(String instructions) {
    if (instructions.length >= 17 && !_isExpanded) {
      return instructions.substring(0, 13) + '...';
    }
    return instructions;
  }

  bool _isExpanded = false;
  bool expandState;

  void _toggleIsExpanded() {
    setState(
      () {
        _isExpanded = !_isExpanded;
      },
    );
  }

  SingleChildScrollView _buildTitleWithDescription(
      String title, String description) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            child: Container(
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: GestureDetector(
        onTap: _toggleIsExpanded,
        child: AnimatedContainer(
          constraints: BoxConstraints(
            maxHeight: _isExpanded ? 500 : screenSize.height * 0.11,
            minHeight: _isExpanded ? 100 : screenSize.height * 0.11,
          ),
          duration: Duration(milliseconds: 500),
          padding: EdgeInsets.fromLTRB(19, 9, 19, 9),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(94, 231, 254, 1),
                Color.fromRGBO(8, 119, 204, 1),
              ],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 4,
                child: _buildTitleWithDescription(widget.title, 'jhonny eid'),
              ),
              Flexible(
                  fit: FlexFit.tight,
                  flex: 4,
                  child: _buildTitleWithDescription(
                    'Due To',
                    DateFormat('EEE@h:m').format(widget.date),
                  )),
              Flexible(
                fit: FlexFit.tight,
                flex: 5,
                child: _buildTitleWithDescription(
                    'Details', _formatInstructions(widget.instructions)),
              ),
            ],
          ),
        ),
      ),
    );
    // return GestureDetector(
    //     onTap: () {
    //       _toggleIsExpanded();
    //       print(_isExpanded);
    //     },
    //     child: Column(children: [
    //       Container(
    //         padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(33),
    //           color: Color.fromRGBO(112, 112, 112, 1),
    //         ),
    //         height: 65,
    //         child: Stack(
    //           children: [
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Flexible(
    //                   flex: 2,
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(1),
    //                     child: FittedBox(
    //                         child: Text(
    //                           widget.title,
    //                           style: TextStyle(
    //                             color: Colors.white,
    //                             fontSize: 20,
    //                             fontWeight: FontWeight.w600,
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 Flexible(
    //                   flex: 7,
    //                   child: Container(
    //                     padding: EdgeInsets.all(0),
    //                     alignment: Alignment.center,
    //                     child: Text(
    //                       _formatInstructions(widget.instructions),
    //                       style: TextStyle(
    //                         fontSize: 16,
    //                         color: Colors.white,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 Flexible(
    //                   fit: FlexFit.tight,
    //                   flex: 2,
    //                   child: Text(
    //                     DateFormat('E MMM\nh:m').format(widget.date),
    //                     style: TextStyle(
    //                       fontSize: 14,
    //                       color: Colors.white,
    //                     ),
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //       AnimatedContainer(
    //           duration: Duration(milliseconds: 300),
    //           width: _isExpanded ? 340 : 0,
    //           height: _isExpanded ? 200 : 0,
    //           padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.only(
    //                 bottomLeft: Radius.circular(33),
    //                 bottomRight: Radius.circular(33)),
    //             color: Color.fromRGBO(42, 42, 42, 1),
    //           ),
    //           child: _isExpanded
    //               ? SingleChildScrollView(
    //                   child: Column(
    //                     children: [
    //                       Align(
    //                         alignment: Alignment.topCenter,
    //                         child: Text(
    //                           widget.title,
    //                           style: TextStyle(
    //                             color: Colors.white,
    //                             fontSize: 25,
    //                           ),
    //                         ),
    //                       ),
    //                       Container(
    //                         padding: EdgeInsets.all(10),
    //                         child: Row(
    //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                           children: [
    //                             Container(
    //                               decoration: BoxDecoration(
    //                                   borderRadius: BorderRadius.circular(10),
    //                                   color: Colors.white),
    //                               width: 150,
    //                               height: 100,
    //                               child: SingleChildScrollView(
    //                                 child: Container(
    //                                   margin: EdgeInsets.all(5),
    //                                   child: Text(
    //                                     widget.instructions,
    //                                     style: TextStyle(
    //                                         color:
    //                                             Color.fromRGBO(42, 42, 42, 1),
    //                                         fontSize: 17),
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             Container(
    //                               child: Icon(
    //                                 MdiIcons.clockAlert,
    //                                 color: Colors.white,
    //                               ),
    //                             )
    //                           ],
    //                         ),
    //                       )
    //                     ],
    //                   ),
    //                 )
    //               : Align(
    //                   alignment: Alignment.bottomCenter,
    //                   child: _isExpanded
    //                       ? Icon(
    //                           Icons.arrow_drop_up,
    //                           color: Colors.white,
    //                           size: 30.0,
    //                         )
    //                       : Icon(
    //                           Icons.arrow_drop_down,
    //                           color: Colors.white,
    //                           size: 30.0,
    //                         ),
    //                 )),
    //     ]));
  }
}
