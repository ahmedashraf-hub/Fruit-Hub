import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class CustomCodeHolder extends StatefulWidget {
  const CustomCodeHolder({super.key});

  @override
  State<CustomCodeHolder> createState() => _CustomCodeHolderState();
}

class _CustomCodeHolderState extends State<CustomCodeHolder> {
  final List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  final List<FocusNode> focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];

  @override
  void initState() {
    super.initState();
    for (var focusNode in focusNodes) {
      focusNode.addListener(() {
        setState(() {});
      });
    }
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double availableWidth = constraints.maxWidth;

        double totalSpacing = 45.0;

        double boxWidth = (availableWidth - totalSpacing) / 4;

        if (boxWidth < 60) boxWidth = 60;
        if (boxWidth > 72) boxWidth = 72;

        return Directionality(
          textDirection: TextDirection.ltr,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildBox(0, boxWidth),
              const SizedBox(width: 15),

              buildBox(1, boxWidth),
              const SizedBox(width: 15),

              buildBox(2, boxWidth),
              const SizedBox(width: 15),

              buildBox(3, boxWidth),
            ],
          ),
        );
      },
    );
  }

  Widget buildBox(int index, double width) {
    bool isActive = focusNodes[index].hasFocus;

    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: isActive ? const Color(0XFFF4A91F) : const Color(0xFFE6E9EA),
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextField(
        controller: controllers[index],
        focusNode: focusNodes[index],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: AppTextStyles.bold23.copyWith(
          color: isActive ? const Color(0XFFF4A91F) : Colors.black,
        ),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: const InputDecoration(
          counterText: '',
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
        onChanged: (value) {
          if (value.isNotEmpty) {
            if (index < 3) {
              focusNodes[index + 1].requestFocus();
            } else {
              focusNodes[index].unfocus();
            }
          }
        },
        onTap: () {
          controllers[index].clear();
        },
      ),
    );
  }
}
