import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 7,
                spreadRadius: 5,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: IntlPhoneField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: 'Phone Number',
              border: InputBorder.none,
            ),
            initialCountryCode: 'GB',
            onChanged: (phone) {},
          ),
        ),
      ],
    );
  }
}
