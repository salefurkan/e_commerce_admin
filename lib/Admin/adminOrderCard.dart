import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_shop_tez/Admin/adminOrderDetails.dart';
import 'package:e_shop_tez/Models/item.dart';
import 'package:e_shop_tez/Widgets/orderCard.dart';
import 'package:flutter/material.dart';

int counter = 0;

class AdminOrderCard extends StatefulWidget {
  final int itemCount;
  final List<DocumentSnapshot> data;
  final String orderID;
  final String addressID;
  final String orderBy;
  const AdminOrderCard({
    Key key,
    this.itemCount,
    this.data,
    this.orderID,
    this.addressID,
    this.orderBy,
  }) : super(key: key);

  @override
  _AdminOrderCardState createState() => _AdminOrderCardState();
}

class _AdminOrderCardState extends State<AdminOrderCard> {
  @override
  void initState() {
    counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Route route;

        route = MaterialPageRoute(
            builder: (context) => AdminOrderDetails(
                orderID: widget.orderID,
                orderBy: widget.orderBy,
                addressID: widget.addressID));

        Navigator.push(context, route);
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[200],
              Colors.orange[100],
              Colors.orange[50],
            ],
          ),
        ),
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
        height: widget.itemCount * 190.0,
        child: ListView.builder(
          itemCount: widget.itemCount,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (c, index) {
            ItemModel model = ItemModel.fromJson(widget.data[index].data);
            return sourceOrderInfo(model, context);
          },
        ),
      ),
    );
  }
}

Widget sourceInfo(ItemModel model, BuildContext context, {Color background}) {
  return Container();
}
