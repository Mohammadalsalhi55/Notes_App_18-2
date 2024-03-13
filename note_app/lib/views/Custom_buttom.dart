import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.onTap, this.isloading = false});
  final void Function()? onTap;
  final bool isloading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: kprimarycolor, borderRadius: BorderRadius.circular(16)),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
            child: isloading
                ? SizedBox(
                    height: 24,
                    width: 24,
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : const Text(
                    "Add",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
