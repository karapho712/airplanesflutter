import 'package:airplanes/cubit/seat_cubit.dart';
import 'package:airplanes/models/destination_model.dart';
import 'package:airplanes/models/transaction_model.dart';
import 'package:airplanes/shared/theme.dart';
import 'package:airplanes/ui/pages/checkout_page.dart';
import 'package:airplanes/ui/widgets/custom_button.dart';
import 'package:airplanes/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destination;

  const ChooseSeatPage(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //AVAILABLE
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_available.png'),
                ),
              ),
            ),
            Text(
              "Available",
              style: blackTextStyle,
            ),
            //Selected
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_selected.png'),
                ),
              ),
            ),
            Text(
              "Selected",
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_unavailable.png'),
                ),
              ),
            ),
            Text(
              "Unavailable",
              style: blackTextStyle,
            )
          ],
        ),
      );
    }

    Widget selectSeat() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: kWhiteColor),
            child: Column(
              children: [
                // SEAT INDIKATOR
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "A",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "B",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "C",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "D",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),

                // SEAT 1
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItem(
                        id: "A1",
                        // status: 2,
                        isAvailable: false,
                      ),
                      SeatItem(
                        id: "B1",
                        // status: 2,
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "1",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      SeatItem(
                        id: "C1",
                        // status: 0,
                      ),
                      SeatItem(
                        id: "D1",
                        // status: 2,
                        isAvailable: false,
                      ),
                    ],
                  ),
                ),

                // SEAT 2
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItem(
                        id: "A2",
                        // status: 0,
                      ),
                      SeatItem(
                        id: "B2",
                        // status: 0,
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "2",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      SeatItem(
                        id: "C2",
                        // status: 0,
                      ),
                      SeatItem(
                        id: "D2",
                        // status: 2,
                        isAvailable: false,
                      ),
                    ],
                  ),
                ),
                // SEAT 3
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItem(
                        id: "A3",
                        // status: 0,
                      ),
                      SeatItem(
                        id: "B3",
                        // status: 0,
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "3",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      SeatItem(
                        id: "C3",
                        // status: 0,
                      ),
                      SeatItem(
                        id: "D3",
                        // status: 0,
                      ),
                    ],
                  ),
                ),

                // SEAT 4
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItem(
                        id: "A4",
                        // status: 0,
                      ),
                      SeatItem(
                        id: "B4",
                        // status: 2,
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "4",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      SeatItem(
                        id: "C4",
                        // status: 0,
                      ),
                      SeatItem(
                        id: "D4",
                        // status: 0,
                      ),
                    ],
                  ),
                ),

                // SEAT 5
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItem(
                        id: "A5",
                        // status: 2,
                      ),
                      SeatItem(
                        id: "B5",
                        // status: 2,
                        isAvailable: false,
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "5",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      SeatItem(
                        id: "C5",
                        // status: 0,
                      ),
                      SeatItem(
                        id: "D5",
                        // status: 2,
                      ),
                    ],
                  ),
                ),

                // NOTE: YOUR SEAT
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your seat",
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        state.join(', '),
                        style: blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                      )
                    ],
                  ),
                ),

                // TOTAL
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        NumberFormat.currency(locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                            .format(state.length * destination.price),
                        style: purpleTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      );
    }

    Widget checkoutButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return CustomButton(
            title: "Continue to Checkout",
            onPressed: () {
              int price = destination.price * state.length;

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutPage(TransactionModel(
                    destination: destination,
                    amountOfTraveler: state.length,
                    selectedSeats: state.join(', '),
                    insurance: true,
                    refundable: false,
                    price: price,
                    vat: 0.45,
                    grandTotal: price + (price * 0.45).toInt(),
                  )),
                ),
              );
            },
            margin: EdgeInsets.only(top: 30, bottom: 36),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [title(), seatStatus(), selectSeat(), checkoutButton()],
      ),
    );
  }
}
