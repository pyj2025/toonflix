import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int index;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, index * -1 * 12),
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: isInverted ? Colors.white : _blackColor,
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            color: isInverted ? _blackColor : Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          code,
                          style: TextStyle(
                            color: isInverted
                                ? _blackColor
                                : Colors.white.withOpacity(0.8),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Transform.scale(
                  scale: 2,
                  child: Transform.translate(
                    offset: const Offset(0, 12),
                    child: Icon(
                      icon,
                      color: isInverted ? _blackColor : Colors.white,
                      size: 60,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
