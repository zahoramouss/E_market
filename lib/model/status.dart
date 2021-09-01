import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Status {
  final int statusId;
  final String name, icon;

  Status({this.statusId, this.name, this.icon});
}

final all = Status(
  statusId: 0,
  name: "All",
  icon: 'all5',
);

final processing = Status(
  statusId: 1,
  name: "Processing",
  icon: 'icon1332',
);

final shipped = Status(
  statusId: 2,
  name: "Shipped",
  icon: 'car12',
);

final delivered = Status(
  statusId: 3,
  name: "Deivered",
  icon: 'car25',
);

final statuS = [
  all,
  processing,
  shipped,
  delivered,
];
