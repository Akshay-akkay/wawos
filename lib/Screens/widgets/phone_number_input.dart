import 'package:flutter/material.dart';

import '../../Data/data.dart';
import '../../Repositories/repositories.dart';
import '../../Utilities/utilities.dart';
import 'custom_formfield.dart';

class PhoneNumberInput extends StatefulWidget {
  const PhoneNumberInput({
    Key? key,
    required this.onNumberChanged,
    required this.onCountryCodeChanged,
    required this.phoneNumberController,
    required this.countryCodeController,
  }) : super(key: key);

  final void Function(String) onNumberChanged;
  final void Function(String) onCountryCodeChanged;
  final TextEditingController phoneNumberController;
  final TextEditingController countryCodeController;

  @override
  PhoneNumberInputState createState() => PhoneNumberInputState();
}

class PhoneNumberInputState extends State<PhoneNumberInput> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Country>>(
      future: CountryCodeService.getCountryCodes(),
      builder: (context, countriesSnapshot) {
        var countries = countriesSnapshot.data;
        if (countries == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        countries.sort((a, b) =>
            a.name.common.toLowerCase().compareTo(b.name.common.toLowerCase()));
        var country = countries.firstWhere(
          (country) =>
              country.idd.root +
                  (country.idd.suffixes.isNotEmpty
                      ? country.idd.suffixes.first
                      : '') ==
              widget.countryCodeController.text,
          orElse: () => const Country(
            name: Name(
              common: 'India',
            ),
            idd: Idd(root: '+9', suffixes: ['1']),
            flag: ' ',
          ),
        );
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            if (!countriesSnapshot.hasData)
              const Text(
                '+91',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            if (countriesSnapshot.hasData)
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
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => CountryPickerDialog(
                      countries: countries,
                      title: const Text(
                        'Select Country',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      initialSelection: country,
                      onValuePicked: (country) {
                        logger.i('Country picked: $country');
                        setState(() {
                          widget.countryCodeController.text = country.idd.root +
                              (country.idd.suffixes.isNotEmpty
                                  ? country.idd.suffixes.first
                                  : '');
                          widget.onCountryCodeChanged(
                              widget.countryCodeController.text);
                          widget.onNumberChanged(
                              widget.phoneNumberController.text);
                        });
                      },
                    ),
                  );
                },
                child: SizedBox(
                  width: 70,
                  height: 60,
                  child: Center(
                    child: Text(
                      '${country.flag}  ${country.idd.root}${(country.idd.suffixes.isNotEmpty ? country.idd.suffixes.first : '').trim()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            const SizedBox(
              width: 4,
            ),
            Flexible(
              child: CustomTextField(
                controller: widget.phoneNumberController,
                type: CustomTextFieldType.generalTextField,
                hintText: 'Eg: +1 (818) 544-8555',
                maxLength: 10,
                textInputType: TextInputType.phone,
                validator: (value) =>
                    JoinPageValidation().verifyPhoneNumberFormat(
                              value: value,
                            ) ==
                            false
                        ? 'Please enter valid phone number'
                        : null,
                onChange: (value) {
                  // widget.phoneNumberController.text = value;
                  widget.onNumberChanged(widget.phoneNumberController.text);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class CountryPickerDialog extends StatefulWidget {
  const CountryPickerDialog({
    Key? key,
    required this.title,
    required this.initialSelection,
    required this.onValuePicked,
    required this.countries,
  }) : super(key: key);

  final Widget title;
  final Country initialSelection;
  final ValueChanged<Country> onValuePicked;
  final List<Country> countries;

  @override
  State<CountryPickerDialog> createState() => _CountryPickerDialogState();
}

class _CountryPickerDialogState extends State<CountryPickerDialog> {
  late List<Country> _filteredCountries;

  @override
  void initState() {
    super.initState();
    _filteredCountries = widget.countries;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Theme.of(context).dialogBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            /// Search bar
            SizedBox(
              height: 50,
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onChanged: (value) {
                  if (value.isEmpty) {
                    setState(() {
                      _filteredCountries = widget.countries;
                    });
                  } else {
                    setState(() {
                      _filteredCountries = widget.countries
                          .where((country) =>
                              country.name.common
                                  .toLowerCase()
                                  .contains(value) ||
                              ((country.idd.root) +
                                      (country.idd.suffixes.isNotEmpty
                                          ? country.idd.suffixes.first
                                          : ''))
                                  .contains(value))
                          .toList();
                    });
                  }
                },
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: _filteredCountries.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      widget.onValuePicked(
                        _filteredCountries[index],
                      );
                      Navigator.pop(context, _filteredCountries[index]);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '${_filteredCountries[index].flag}  ${_filteredCountries[index].idd.root}${(_filteredCountries[index].idd.suffixes.isNotEmpty ? _filteredCountries[index].idd.suffixes.first : '').trim()}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            _filteredCountries[index].name.common,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
