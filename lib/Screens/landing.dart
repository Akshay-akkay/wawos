import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wawos/Screens/widgets/phone_number_input.dart';
import 'package:wawos/app.dart';

import '../Utilities/utilities.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    Key? key,
    @queryParam this.phone,
  }) : super(key: key);

  final String? phone;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with WidgetsBindingObserver {
  final phoneNumberController = TextEditingController();
  final countryCodeController = TextEditingController(text: '+91');

  @override
  void initState() {
    logger.wtf(widget.phone);
    if (widget.phone != null) {
      try {
        int.parse(widget.phone!.replaceAll('+', ''));
        var parsed = PhoneNumber.fromRaw(widget.phone!);
        phoneNumberController.text = parsed.nsn;
        countryCodeController.text = '+${parsed.countryCode}';
      } catch (e) {
        logger.i('Could not parse phone number');
      }
    }
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      checkClipboardonOpen();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      checkClipboardonOpen();
    }
  }

  checkClipboardonOpen() {
    Clipboard.getData(Clipboard.kTextPlain).then((data) {
      if (data != null && data.text != null) {
        var phoneNumber = data.text;

        try {
          int.parse(phoneNumber!.split(' ').join().split('+')[1]);
          showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: const Text(
                      'Do you want to use the number from clipboard?'),
                  content: Text(phoneNumber),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: const Text('No'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoDialogAction(
                      child: const Text('Yes'),
                      onPressed: () {
                        Navigator.pop(context);
                        final clipInput = PhoneNumber.fromRaw(phoneNumber);
                        setState(() {
                          countryCodeController.text =
                              '+${clipInput.countryCode}';
                          phoneNumberController.text = clipInput.nsn;
                        });
                      },
                    ),
                  ],
                );
              });
        } catch (e) {
          logger.i(
              'Clipboard Detected :::  But data is not a valid phone number');
        }
      }
    });
  }

  paste() async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    var clip = await Clipboard.getData(Clipboard.kTextPlain);
    try {
      int.parse(clip!.text!.split(' ').join().split('+')[1]);
      logger.wtf('Clipboard data: ${clip.text}');
      final clipInput = PhoneNumber.fromRaw(clip.text!);
      setState(() {
        countryCodeController.text = clipInput.countryCode;
        phoneNumberController.text = clipInput.nsn;
      });
    } catch (e) {
      scaffoldMessenger.showSnackBar(
        SnackBar(
          elevation: 50,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Wawos.primaryColor.shade100.withOpacity(0.8),
          action: SnackBarAction(
            label: 'Close',
            textColor: Wawos.primaryColor.shade500,
            onPressed: () => scaffoldMessenger.clearSnackBars(),
          ),
          content: Text(
            'Pasted data is not a valid phone number',
            style: TextStyle(
              color: Wawos.primaryColor,
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kIsWeb
            ? const Text('WAWOS')
            : (!Platform.isAndroid && !Platform.isIOS)
                ? const Text('')
                : const Text('WAWOS'),
        actions: [
          /// Link to the Github Repository
          IconButton(
            icon: const Icon(FontAwesomeIcons.github),
            onPressed: () async {
              if (await canLaunchUrl(
                  Uri.parse('https://github.com/Akshay-akkay/wawos'))) {
                await launchUrl(
                  Uri.parse('https://github.com/Akshay-akkay/wawos'),
                );
              } else {
                throw 'Could not launch';
              }
            },
          ),

          IconButton(
            icon: Icon(
              ThemeUtilities.getTheme(context) == ThemeMode.dark
                  ? Icons.wb_sunny_outlined
                  : Icons.dark_mode_outlined,
            ),
            onPressed: () => ThemeUtilities.switchTheme(context),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  const Text(
                    'Enter phone number',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: Breakpoints.map(
                        s: double.infinity,
                        m: MediaQuery.of(context).size.width * 0.75,
                        l: MediaQuery.of(context).size.width * 0.5,
                        context: context),
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: PhoneNumberInput(
                            key: const Key('phone_number_input'),
                            phoneNumberController: phoneNumberController,
                            countryCodeController: countryCodeController,
                            onNumberChanged: (val) => {},
                            onCountryCodeChanged: (val) => {},
                          ),
                        ),
                        const SizedBox(width: 4),
                        MaterialButton(
                          elevation: 0,
                          visualDensity: VisualDensity.compact,
                          padding: const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          height: ThemeUtilities.isDark(context) ? 67 : 73,
                          color: Theme.of(context).primaryColor,
                          textColor: Theme.of(context).primaryColorLight,
                          onPressed: paste,
                          child: const Icon(Icons.copy_outlined),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Wrap(
                children: [
                  if (kIsWeb ? true : !Platform.isAndroid && !Platform.isIOS)
                    MaterialButton(
                      onPressed: () {
                        launchUrl(
                          Uri.parse(
                              'https://web.whatsapp.com/send?phone=+${countryCodeController.text}${phoneNumberController.text}&text&app_absent=0'),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      minWidth: Breakpoints.map(
                        s: MediaQuery.of(context).size.width,
                        m: MediaQuery.of(context).size.width / 3,
                        l: MediaQuery.of(context).size.width / 3,
                        context: context,
                      ),
                      height: 50,
                      color: Theme.of(context).primaryColor,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Open in Web',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            Icons.open_in_browser_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  const SizedBox.square(dimension: 8),
                  MaterialButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse(
                            'whatsapp://send?phone=+${countryCodeController.text}${phoneNumberController.text}&text&app_absent=0'),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    minWidth: Breakpoints.map(
                      s: MediaQuery.of(context).size.width,
                      m: MediaQuery.of(context).size.width / 3,
                      l: MediaQuery.of(context).size.width / 3,
                      context: context,
                    ),
                    height: 50,
                    color: Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Open in App',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.open_in_new_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
