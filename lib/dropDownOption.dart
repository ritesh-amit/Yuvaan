import 'package:flutter/material.dart';
import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';

class Option {
  String option;
  Option(this.option);
  static List<Option> getOption() {
    return <Option>[
      Option('AM'),
      Option('PM'),
    ];
  }
}

class DropDownMenuBar extends StatefulWidget {
  final passKey;
  DropDownMenuBar({
    @required this.passKey,
  });

  @override
  _DropDownMenuBarState createState() => _DropDownMenuBarState();
}

class _DropDownMenuBarState extends State<DropDownMenuBar> {
  List<Option> _option = Option.getOption();
  List<DropdownMenuItem<Option>> _dropdownMenuItemsTime;
  Option _selectedTime;
  @override
  void initState() {
    _dropdownMenuItemsTime = buildDropdownMenuItemsTime(_option);
    _selectedTime = _dropdownMenuItemsTime[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Option>> buildDropdownMenuItemsTime(List options) {
    List<DropdownMenuItem<Option>> items = List();

    for (Option options in options) {
      items.add(
        DropdownMenuItem(
          value: options,
          child: Container(
            child: Text(
              options.option,
              style: TextStyle(
                fontSize: SizeConfig.screenHeight * 16 / 900,
              ),
            ),
          ),
        ),
      );
    }
    return items;
  }

  onchangeDropdownItemOption(Option selectedOption) {
    setState(() {
      _selectedTime = selectedOption;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Wrap(children: [
      DropdownButtonHideUnderline(
        child: ButtonTheme(
          layoutBehavior: ButtonBarLayoutBehavior.constrained,
          height: h * 20,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: EdgeInsets.zero,
          child: DropdownButton(
            iconEnabledColor: gc,
            style: txtS(gc, 20, FontWeight.w400),
            isDense: true,
            value: _selectedTime,
            items: _dropdownMenuItemsTime,
            onChanged: onchangeDropdownItemOption,
          ),
        ),
      ),
    ]);
  }

  TextStyle txtS(Color col, double siz, FontWeight wg) {
    return TextStyle(
      color: col,
      fontWeight: wg,
      fontSize: SizeConfig.screenHeight * siz / 900,
    );
  }
}
