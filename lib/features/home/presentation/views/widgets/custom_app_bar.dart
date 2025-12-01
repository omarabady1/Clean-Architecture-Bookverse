import 'package:bookverse/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 16, right: 14, left: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                child: Image.asset('assets/images/app_logo.png'),
              ),
              const SizedBox(width: 10),
              const Text(
                'Bookverse',
                style: TextStyle(
                  fontFamily: AssetsData.shareTech,
                  fontSize: 28,
                  color: Color(0xffc04a65),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchViewPath);
            },
            icon: Icon(Icons.search),
            color: Color(0xfffc931c),
          ),
        ],
      ),
    );
  }
}
