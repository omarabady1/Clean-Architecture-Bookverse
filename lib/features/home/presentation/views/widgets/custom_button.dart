import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xff100b20),
                  backgroundColor: Color(0xffffffff),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                ),
                child: Text(
                  '19.99\$',
                  style: Styles.title18.copyWith(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffed8161),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ),
                child: Text(
                  'Free Preview',
                  style: Styles.title18.copyWith(fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
