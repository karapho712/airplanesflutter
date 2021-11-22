import 'package:airplanes/cubit/seat_cubit.dart';
import 'package:airplanes/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  // NOTE: 0. AVAILABLE 1.SELECTED 2. UNAVAILABLE

  // final int status;
  final String id;
  final bool isAvailable;

  const SeatItem({
    Key? key,
    // required this.status,
    required this.id,
    this.isAvailable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailableColor;
        }
      }

      // switch (status) {
      //   case 0:
      //     return kAvailableColor;
      //   case 1:
      //     return kPrimaryColor;
      //   case 2:
      //     return kUnavailableColor;
      //   default:
      //     return kUnavailableColor;
      // }
    }

    borderColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        return kPrimaryColor;
      }

      // switch (status) {
      //   case 0:
      //     return kPrimaryColor;
      //   case 1:
      //     return kPrimaryColor;
      //   case 2:
      //     return kUnavailableColor;
      //   default:
      //     return kUnavailableColor;
      // }
    }

    child() {
      if (isSelected) {
        return Center(
          child: Text(
            "YOU",
            style: whiteTextStyle.copyWith(fontSize: 16),
          ),
        );
      } else {
        return SizedBox();
      }

      // switch (status) {
      //   case 0:
      //     return SizedBox();
      //   case 1:
      //     return Center(
      //       child: Text(
      //         "YOU",
      //         style: whiteTextStyle.copyWith(fontSize: 16),
      //       ),
      //     );
      //   case 2:
      //     return SizedBox();
      //   default:
      //     return SizedBox();
      // }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 2,
            color: borderColor(),
          ),
        ),
        child: child(),
      ),
    );
  }
}
