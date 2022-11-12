import 'package:flutter/material.dart';

import 'package:squideck/constants/custom_theme.dart';


class LargeAboutLink extends StatelessWidget {
  const LargeAboutLink({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Map<String, String>> messages = [
      { 'Name'   : 'Yuta Shinzawa' },
      { 'Job'    : 'Software developer' },
      { 'Admirer': 'Aimyon, Munenori Kawasaki, Taro okamoto etc.' },
    ];
    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFF333333),
      ),
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20, bottom: 100),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.4),
                  BlendMode.dstATop,
                ),
                image: const NetworkImage(
                  'assets/sampleimages/squid.png',
                ),
                fit: BoxFit.fitWidth
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                child: Text(
                  'About',
                  style: TextStyle(
                    color: CustomTheme.instance.letter,
                    fontSize: 60
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8.0, left: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      child: Text(
                        'Name',
                        style: TextStyle(
                          color: CustomTheme.instance.letter,
                          fontSize: 24
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          ': Yuta Shinzawa',
                          style: TextStyle(
                            color: CustomTheme.instance.letter,
                            fontSize: 24
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8.0, left: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      child: Text(
                        'Job',
                        style: TextStyle(
                          color: CustomTheme.instance.letter,
                          fontSize: 24
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          ': Software developer',
                          style: TextStyle(
                            color: CustomTheme.instance.letter,
                            fontSize: 24
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8.0, left: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      child: Text(
                        'Admirer',
                        style: TextStyle(
                          color: CustomTheme.instance.letter,
                          fontSize: 24
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          ': Aimyon, Munenori kawasaki, Taro Okamoto etc.',
                          style: TextStyle(
                            color: CustomTheme.instance.letter,
                            fontSize: 24
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(top: 16.0, left: 36.0, right: 36.0),
            width: double.infinity,
            child: Text(
              '1994/06/17 02:03',
              style: TextStyle(
                color: CustomTheme.instance.letter,
                fontSize: 24
              ),
            ),
          ),
        ],
      ),
    );
  }
}