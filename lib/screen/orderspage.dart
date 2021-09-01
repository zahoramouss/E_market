import 'package:emarket/Resorses/string_resourc.dart';
import 'package:emarket/Resorses/resources.dart';
import 'package:emarket/widgets/app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:emarket/bloc.navigation_bloc/navigation_bloc.dart';
import '../model/myOrders.dart';
import 'order.dart';
import 'package:emarket/widgets/status_widget.dart';
import '../widgets/status_widget.dart';
import '../widgets/order_widget.dart';
import '../model/status.dart';

class MyOrdersPage extends StatelessWidget with NavigationStates {
  get myOrder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Image(
          image: AssetImage('images/header2.png'),
        ),
        title: Text(
          str_orders,
          style: TextStyle(color: white, fontFamily: stc_font, fontSize: 22.0),
        ),
        centerTitle: true,
      ),
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Consumer<AppState>(
                    builder: (context, appState, _) => SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          for (final status in statuS)
                            StatusWidget(status: status)
                        ],
                      ),
                    ),
                  ),
                ), //

                Consumer<AppState>(
                  builder: (context, appState, _) {
                    var myOrder2 = myOrder;
                    return Column(
                      children: <Widget>[
                        for (final myOrder in myOrders.where((e) =>
                            e.statusIds.contains(appState.selectedStatusId)))
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Order(
                                          adrs: myOrder.address,
                                          dt: myOrder.date,
                                          stts: myOrder.status,
                                          payment: str_zain,
                                          nmbr: myOrder.number,
                                          prc: myOrder.price,
                                        ))),
                            child: OrderWidget(
                              myOrder: myOrder2,
                            ),
                          )
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
