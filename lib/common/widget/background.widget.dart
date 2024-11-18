import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../gen/assets.gen.dart';

class BackgroundWidget extends StatelessWidget {
  final Size? dimens;

  const BackgroundWidget({super.key,  this.dimens});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: dimens!.width,
          height: dimens!.width > 420 ? dimens!.width : dimens!.height,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    Assets.images.circle,
                    colorFilter: const ColorFilter.mode(
                        Color(0xFFECEFF7), BlendMode.srcIn),
                  )),
              Positioned(
                  bottom: 0,
                  left: 0,
                  child: SvgPicture.asset(
                    Assets.images.square,
                    colorFilter: const ColorFilter.mode(
                        Color(0xFFECEFF7), BlendMode.srcIn),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
