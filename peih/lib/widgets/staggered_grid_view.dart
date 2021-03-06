import 'package:flutter/material.dart';

class StaggeredGridView extends StatefulWidget {
  final List items;
  final int columnCount;

  StaggeredGridView(this.items, this.columnCount, {Key key}) : super(key: key);

  @override
  _StaggeredGridViewState createState() =>
      _StaggeredGridViewState(items, columnCount);
}

class _StaggeredGridViewState extends State<StaggeredGridView> {
  List columns = [];

  _StaggeredGridViewState(List items, int columnCount) {
    int columnIndex = columnCount - 1;

    for (var i = 1; i <= columnCount; i++) this.columns.add([]);

    for (var i = 0; i < items.length; i++) {
      this.columns[columnIndex].add(new Item(i, i, items[i]));

      columnIndex--;

      if (columnIndex == -1) columnIndex = columnCount - 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> rows = [];

    for (var i = 0; i < columns.length; i++) {
      List<Widget> items = [];

      columns[i].forEach((item) => {items.add(item.item)});

      rows.add(
        Expanded(
          flex: 1,
          child: Container(
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
