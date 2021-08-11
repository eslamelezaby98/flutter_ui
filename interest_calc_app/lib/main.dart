import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intrest App',
      home: HomeApp(),
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: Colors.red.shade200,
      ),
    ),
  );
}

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  var _formKey = GlobalKey<FormState>();

  var _currencies = [
    'USD (US\$)',
    'EUR',
    'JPY (¥)',
    'GBP (£)',
  ];

  var _defultCurrency = '';
  void initState() {
    super.initState();
    _defultCurrency = _currencies[0];
  }

  TextEditingController principalController = TextEditingController();
  TextEditingController rioController = TextEditingController();
  TextEditingController termController = TextEditingController();

  var displayResult = '';

  TextStyle textStyle = TextStyle(
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Interests'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              getImage(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getTextFiled(
                  controller: principalController,
                  errorMassege: 'Please enter principal amount',
                  label: 'Principal',
                  hint: 'Enter Principal e.g. 10000',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getTextFiled(
                  controller: rioController,
                  errorMassege: 'Please enter rate of intrest',
                  label: 'Rate of Intrest',
                  hint: 'In Precent',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: getTextFiled(
                        controller: termController,
                        errorMassege: 'Please enter time of years',
                        label: 'Term',
                        hint: 'Time in years',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: DropdownButton<String>(
                          items: _currencies.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          value: _defultCurrency,
                          onChanged: (String newValueSelected) {
                            _onDropDownItemSelected(newValueSelected);
                          }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: 
                       RaisedButton(
                          color: Theme.of(context).accentColor,
                          child: Text(
                            'Calculate',
                            style: textStyle,
                          ),
                          onPressed: () {
                            setState(() {
                              if (_formKey.currentState.validate())
                                this.displayResult = _calculateTotalReturns();
                            });
                          }),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: RaisedButton(
                          color: Theme.of(context).accentColor,
                          child: Text(
                            'Reset',
                            style: textStyle,
                          ),
                          onPressed: () {
                            setState(() {
                              _reset();
                            });
                          }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(40.0),
                child: Center(
                  child: Text(
                    this.displayResult,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getImage() {
    AssetImage assetImage = AssetImage('images/finance.png');
    Image image = Image(
      image: assetImage,
      width: 200,
      height: 300,
    );
    return image;
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      _defultCurrency = newValueSelected;
    });
  }

  String _calculateTotalReturns() {
    double principal = double.parse(principalController.text);
    double rate = double.parse(rioController.text);
    double term = double.parse(termController.text);

    double totalAmountPayable = principal + (principal * rate * term) / 100;
    String result =
        'After $term years , your investment will be worth $totalAmountPayable $_defultCurrency';
    return result;
  }

  void _reset() {
    principalController.text = '';
    rioController.text = '';
    termController.text = '';
    displayResult = '';
    _defultCurrency = _currencies[0];
  }

  Widget getTextFiled(
      {String errorMassege,
      String label,
      String hint,
      TextEditingController controller}) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: controller,
      validator: (String value) {
        if (value.isEmpty || value == null) {
          return errorMassege;
        }
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        labelStyle: textStyle,
        hintStyle: textStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }

  
}
