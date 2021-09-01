
class MyOrder {
  final String status, address, date;
  final int price, number, id;
  final List statusIds ; 

  MyOrder({
    this.id,
    this.number,
    this.address,
    this.price,
    this.date,
    this.status,
    this.statusIds,
  });
    
}

List<MyOrder> myOrders = [
  MyOrder(
    id: 1,
    number: 1234,
    address: "23 street, Appartment 3 Gaza",
    price: 100,
    date: "23/04/2021 ",
    status: "Delivered",
    statusIds : [0, 3]
  ),

  MyOrder(
    id: 2,
    number: 1235,
    address: "23 street, Appartment 3 Gaza",
    price: 550,
    date: "10/05/2021 ",
    status: "Shipped",
    statusIds : [0, 2]
  ),

  MyOrder(
    id: 3,
    number: 1235,
    address: "23 street, Appartment 3 Gaza",
    price: 550,
    date: "10/05/2021 ",
    status: "Processing",
    statusIds : [0, 1]
  ),

  MyOrder(
    id: 4,
    number: 1237,
    address: "03 street, Appartment 3 Gaza",
    price: 350,
    date: "20/07/2021 ",
    status: "Delivered",
    statusIds : [0, 3]
  ),

  MyOrder(
    id: 5,
    number: 1238,
    address: "23 street, Appartment 3 Gaza",
    price: 450,
    date: "01/08/2021 ",
    status: "Delivered",
    statusIds: [0, 3]
  ),

  MyOrder(
    id: 6, 
    number: 1239, 
    address: "23 street, Appartment 3 Gaza", 
    price: 100, date: "23/04/2021 ", 
    status: "Shipped",
    statusIds: [0, 2]
  ),

  MyOrder(
    id: 7,
    number: 1240,
    address: "23 street, Appartment 3 Gaza",
    price: 550,
    date: "10/05/2021 ",
    status: "Shipped",
    statusIds: [0, 2]
  ),

  MyOrder(
    id: 8,
    number: 1241,
    address: "23 street, Appartment 3 Gaza",
    price: 500,
    date: "23/06/2021 ",
    status: "Processing",
   statusIds : [0, 1]
  ),

  MyOrder(
    id: 9,
    number: 1242,
    address: "03 street, Appartment 3 Gaza",
    price: 350,
    date: "20/07/2021 ",
    status: "Processing",
    statusIds: [0, 1]
  ),

  MyOrder(
    id: 10,
    number: 1244,
    address: "23 street, Appartment 3 Gaza",
    price: 100,
    date: "23/04/2021 ",
    status: "Processing",
    statusIds: [0, 1]
  ),

];


