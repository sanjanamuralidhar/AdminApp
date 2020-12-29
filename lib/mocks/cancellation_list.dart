import 'moreinfoCancelled_list.dart';

class CancelledList {
  String orderId;
  String date;
  String customerPhone;
  String refundAmount;
  String transactionId;
  String refundId;
  List<MoreInfoCancelled> more;

  CancelledList({
    this.orderId,
    this.date,
    this.customerPhone,
    this.refundAmount,
    this.refundId,
    this.transactionId,
    this.more,
  });
}

List<MoreInfoCancelled> more = [
  MoreInfoCancelled(
    imageUrl: 'assets/barbecue.jpg',
    productName: 'Barbecue',
    customerPhone: '7863467384',
    customerId: 'FP-2',
    date: 'MAR 3,2020',
    orderId: 'FEXP-1000',
    paymentStatus: 'Order not Payed',
    totalDue: '60.30',
    refundAmount: '20.03',
    refundId: 'sdsfsfdehfbd',
    transactionId: '21ffsw45',
  ),
  MoreInfoCancelled(
    imageUrl: 'assets/salmon.jpg',
    productName: 'Salmon',
    customerPhone: '7863467384',
    customerId: 'FP-2',
    date: 'MAR 3,2020',
    orderId: 'FEXP-1000',
    paymentStatus: 'Order not Payed',
    totalDue: '60.30',
    refundAmount: '20.03',
    refundId: 'sdsfsfdehfbd',
    transactionId: '21ffsw45',
  ),
  MoreInfoCancelled(
    imageUrl: 'assets/pizza.jpg',
    productName: 'Pizza',
    customerPhone: '7863467384',
    customerId: 'FP-2',
    date: 'MAR 3,2020',
    orderId: 'FEXP-1000',
    paymentStatus: 'Order not Payed',
    totalDue: '60.30',
    refundAmount: '20.03',
    refundId: 'sdsfsfdehfbd',
    transactionId: '21ffsw45',
  ),
];
List<MoreInfoCancelled> more1 = [
  MoreInfoCancelled(
    imageUrl: 'assets/friedchicken.jpg',
    productName: 'FriedChicken',
    customerPhone: '7863467384',
    customerId: 'FP-2',
    date: 'MAR 3,2020',
    orderId: 'FEXP-1002',
    paymentStatus: 'Order not Payed',
    totalDue: '60.30',
    refundAmount: '20.03',
    refundId: 'sdsfsfdehfbd',
    transactionId: '21ffsw45',
  ),
];
List<MoreInfoCancelled> more2 = [
  MoreInfoCancelled(
    imageUrl: 'assets/salad.jpg',
    productName: 'Salad',
    customerPhone: '7863467384',
    customerId: 'FP-2',
    date: 'MAR 3,2020',
    orderId: 'FEXP-1021',
    paymentStatus: 'Order not Payed',
    totalDue: '60.30',
    refundAmount: '20.03',
    refundId: 'sdsfsfdehfbd',
    transactionId: '21ffsw45',
  ),
];
final List<CancelledList> cancels = [
  CancelledList(
    orderId: 'FEXP-1000',
    date: 'FEB 7,2020',
    customerPhone: '9809203816',
    refundAmount: '20.90',
    transactionId: '21fdzc42',
    refundId: 'testtransactionid',
    more: more,
  ),
  CancelledList(
    orderId: 'FEXP-1002',
    date: 'FEB 7,2020',
    customerPhone: '9809203816',
    refundAmount: '21.98',
    transactionId: 'etnfwkss',
    refundId: 'testtransactionid',
    more: more1,
  ),
  CancelledList(
    orderId: 'FEXP-1021',
    date: 'FEB 7,2020',
    customerPhone: '9809203816',
    refundAmount: '21.98',
    transactionId: 'etnfwkss',
    refundId: 'testtransactionid',
    more: more2,
  ),
  CancelledList(
    orderId: 'FEXP-1021',
    date: 'FEB 7,2020',
    customerPhone: '9809203816',
    refundAmount: '21.98',
    transactionId: 'etnfwkss',
    refundId: 'testtransactionid',
    more: more2,
  ),
];
