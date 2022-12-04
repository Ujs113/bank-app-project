import 'package:flutter/material.dart';
import 'package:get/get.dart';


class History extends StatelessWidget {
  History({Key? key}) : super(key: key);

  final List<Map<String, String>> listOfColumns = [
    {"Name": "AAAAAA", "Number": "1", "State": "Yes"},
    {"Name": "BBBBBB", "Number": "2", "State": "no"},
    {"Name": "CCCCCC", "Number": "3", "State": "Yes"},
    {"Name": "AAAAAA", "Number": "1", "State": "Yes"},
    {"Name": "BBBBBB", "Number": "2", "State": "no"},
    {"Name": "CCCCCC", "Number": "3", "State": "Yes"},
    {"Name": "AAAAAA", "Number": "1", "State": "Yes"},
    {"Name": "BBBBBB", "Number": "2", "State": "no"},
    {"Name": "CCCCCC", "Number": "3", "State": "Yes"},
    {"Name": "AAAAAA", "Number": "1", "State": "Yes"},
    {"Name": "BBBBBB", "Number": "2", "State": "no"},
    {"Name": "CCCCCC", "Number": "3", "State": "Yes"},
    {"Name": "AAAAAA", "Number": "1", "State": "Yes"},
    {"Name": "BBBBBB", "Number": "2", "State": "no"},
    {"Name": "CCCCCC", "Number": "3", "State": "Yes"},
    {"Name": "AAAAAA", "Number": "1", "State": "Yes"},
    {"Name": "BBBBBB", "Number": "2", "State": "no"},
    {"Name": "CCCCCC", "Number": "3", "State": "Yes"},
    {"Name": "AAAAAA", "Number": "1", "State": "Yes"},
    {"Name": "BBBBBB", "Number": "2", "State": "no"},
    {"Name": "CCCCCC", "Number": "3", "State": "Yes"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("History", style:TextStyle(fontSize: 22),),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "images/background.png"
            ),
            fit: BoxFit.fill
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Theme(
            data: Theme.of(context).copyWith(
                dividerColor: Colors.white
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: DataTable(
                border: TableBorder(
                  top: BorderSide(color: Colors.white,width: 8),
                  bottom: BorderSide(color: Colors.white,width: 8),
                  left: BorderSide(color: Colors.white,width: 8),
                  right: BorderSide(color: Colors.white,width: 8),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  horizontalInside: BorderSide(color: Colors.white,width: 2),
                ),
                columns: [
                  DataColumn(
                    label: Text('S.No.',style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                  DataColumn(
                    label: Text('Description',style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                  DataColumn(
                    label: Text('Amount',style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                ],
                rows: listOfColumns.map(
                  ((element) => DataRow(
                    cells: <DataCell>[
                      DataCell(Text(element["Number"]!,style: TextStyle(color: Colors.white,fontSize: 16),)),
                      DataCell(Text(element["Name"]!,style: TextStyle(color: Colors.white,fontSize: 16),)),
                      DataCell(Text(element["State"]!,style: TextStyle(color: Colors.white,fontSize: 16),)),
                    ],
                  )),
                ).toList(),
              ),
            ),
          ),
        ),
      )
    );
  }
}
