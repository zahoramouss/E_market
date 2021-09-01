import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:emarket/model/myOrders.dart';
import '29.dart';
import '../widgets/app_state.dart';
import '../widgets/status_widget.dart';
import 'package:emarket/widgets/order_widget.dart';
import '../model/status.dart';

class MyOrdersPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Image(
          image: AssetImage('assets/images/header2.png'),
          fit: BoxFit.cover,
        ),
        title: Text(
          'My Orders',
          style:
              TextStyle(color: Colors.white, fontFamily: "stc", fontSize: 22.0),
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
                  builder: (context, appState, _) => Column(
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
                                        payment: 'Zain Cash',
                                        nmbr: myOrder.number,
                                        prc: myOrder.price,
                                      ))),
                          child: OrderWidget(
                            myOrder: myOrder,
                          ),
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
