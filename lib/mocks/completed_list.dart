

import 'moreinfoCompleted_list.dart';

class CompletedList {
  String orderId;
  String date;
  String customerPhone;
  String refundAmount;
  String transactionId;
  String refundId;
  List<MoreInfoCompleted> more;

  CompletedList({
    this.orderId,
    this.date,
    this.customerPhone,
    this.refundAmount,
    this.refundId,
    this.transactionId,
    this.more,
  });
}

List<MoreInfoCompleted> more = [
  MoreInfoCompleted(
    imageUrl: 'assets/burger.jpg',
    productName: 'Ham Burger',
    customerPhone: '7863467384',
    customerId: 'FP-2',
    date: 'MAR 3,2020',
    orderId: 'FEXP-1134',
    paymentStatus: 'Order not Payed',
    totalDue: '60.30',
    refundAmount: '20.03',
    refundId: 'sdsfsfdehfbd',
    transactionId: '21ffsw45',
  ),
  MoreInfoCompleted(
    imageUrl: 'assets/roll.jpg',
    productName: 'Asian Roll',
    customerPhone: '7863467384',
    customerId: 'FP-2',
    date: 'MAR 3,2020',
    orderId: 'FEXP-1134',
    paymentStatus: 'Order not Payed',
    totalDue: '60.30',
    refundAmount: '20.03',
    refundId: 'sdsfsfdehfbd',
    transactionId: '21ffsw45',
  ),
];
List<MoreInfoCompleted> more1 = [
  MoreInfoCompleted(
    imageUrl: 'assets/roll.jpg',
    productName: 'Asian Roll',
    customerPhone: '7863467384',
    customerId: 'FP-2',
    date: 'MAR 3,2020',
    orderId: 'FEXP-1133',
    paymentStatus: 'Order not Payed',
    totalDue: '60.30',
    refundAmount: '20.03',
    refundId: 'sdsfsfdehfbd',
    transactionId: '21ffsw45',
  ),
];
List<MoreInfoCompleted> more2 = [
  MoreInfoCompleted(
    imageUrl: 'assets/pazzta.jpg',
    productName: 'Pazzta',
    customerPhone: '7863467384',
    customerId: 'FP-2',
    date: 'MAR 3,2020',
    orderId: 'FEXP-1132',
    paymentStatus: 'Order not Payed',
    totalDue: '60.30',
    refundAmount: '20.03',
    refundId: 'sdsfsfdehfbd',
    transactionId: '21ffsw45',
  ),
  MoreInfoCompleted(
    imageUrl: 'assets/roll.jpg',
    productName: 'Asian Roll',
    customerPhone: '7863467384',
    customerId: 'FP-2',
    date: 'MAR 3,2020',
    orderId: 'FEXP-1132',
    paymentStatus: 'Order not Payed',
    totalDue: '60.30',
    refundAmount: '20.03',
    refundId: 'sdsfsfdehfbd',
    transactionId: '21ffsw45',
  ),
  MoreInfoCompleted(
    imageUrl: 'assets/burger.jpg',
    productName: 'Ham Burger',
    customerPhone: '7863467384',
    customerId: 'FP-2',
    date: 'MAR 3,2020',
    orderId: 'FEXP-1132',
    paymentStatus: 'Order not Payed',
    totalDue: '60.30',
    refundAmount: '20.03',
    refundId: 'sdsfsfdehfbd',
    transactionId: '21ffsw45',
  ),
];

final List<CompletedList> completes = [
  CompletedList(
    orderId: 'FEXP-1134',
    date: 'FEB 7,2020',
    customerPhone: '9809203816',
    refundAmount: '20.90',
    transactionId: '21fdzc42',
    refundId: 'testtransactionid',
    more: more,
  ),
  CompletedList(
    orderId: 'FEXP-1133',
    date: 'FEB 7,2020',
    customerPhone: '9809203816',
    refundAmount: '21.98',
    transactionId: 'etnfwkss',
    refundId: 'testtransactionid',
    more: more1,
  ),
  CompletedList(
    orderId: 'FEXP-1132',
    date: 'FEB 7,2020',
    customerPhone: '9809203816',
    refundAmount: '21.98',
    transactionId: 'etnfwkss',
    refundId: 'testtransactionid',
    more: more2,
  ),
];
