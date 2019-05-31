import 'package:flutter/material.dart';

class StaggeredGridView extends StatefulWidget {
  var columns = [];

  StaggeredGridView(List<Widget> items, int columnCount) {
    int columnIndex = columnCount - 1;

    for (var i = 1; i <= columnCount; i++) this.columns.add([]);

    for (var i = 0; i < items.length; i++) {
      this.columns[columnIndex].add(new Item(i, i, items[i]));

      columnIndex--;

      if (columnIndex == -1) columnIndex = columnCount - 1;
    }
  }

  @override
  _StaggeredGridViewState createState() =>
      _StaggeredGridViewState(this.columns);
}

class _StaggeredGridViewState extends State<StaggeredGridView> {
  List columns = [];

  _StaggeredGridViewState(List columns) {
    this.columns = columns;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> rows = [];
    for (var column in this.columns) {
      List<Widget> items = [];

      column.forEach((item) => {items.add(item.item)});

      rows.add(
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: items,
            ),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: rows,
    );
  }
}

class Item {
  int oldIndex;
  int newIndex;
  Widget item;

  Item(int oldIndex, int newIndex, Widget item) {
    this.oldIndex = oldIndex;
    this.newIndex = newIndex;
    this.item = item;
  }
}
