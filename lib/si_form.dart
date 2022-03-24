import 'package:flutter/material.dart';
class SIForms extends StatefulWidget {
  const SIForms({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForms> {
  var _formKey=GlobalKey<FormState>();
  final _currencies = ['Rupees', 'Dollars', 'Pounds'];
  final _minimumPadding = 5.0;
  var dropdownValue = '';
  @override
  void initState() {
    super.initState();
    dropdownValue = _currencies[0];
  }

  TextEditingController pricipalController = TextEditingController();

  TextEditingController roiController = TextEditingController();

  TextEditingController termController = TextEditingController();

  var displayResult = '';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print("width" + width.toString());
    print("height" + height.toString());
    TextStyle? textStyle = Theme.of(context).textTheme.headline1;
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Simple interest Calculator"),
        ),
        body: Form(
          key: _formKey,
          child: Container(
              child:  ListView(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Container(
                  width: width * 0.8,
                  height: height * 0.9,
                  child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ListView(children: <Widget>[
                        getImageAssets(),
                        Padding(
                            padding: EdgeInsets.only(
                                top: _minimumPadding,
                                left: 10 * _minimumPadding,
                                right: 10 * _minimumPadding),
                            child: TextFormField(
                              controller: pricipalController,
                              style: textStyle,
                              keyboardType: TextInputType.number,
                              validator: (String? value){
                                if(value!.isEmpty)
                                {
                                  return 'please enter your principal';
                                }
                                
                              },
                              decoration: InputDecoration(
                                  labelText: "Principal",
                                  hintText: "Enter Your pricipal eg. 2000",
                                  labelStyle: textStyle,
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                top: _minimumPadding,
                                left: 10 * _minimumPadding,
                                right: 10 * _minimumPadding),
                            child: TextFormField(
                                validator: (String? value) {
                                      if(_formKey.currentState!.validate()){
                                        return 'please enter your rate';
                                      }
                                    },
                              controller: roiController,
                              style: textStyle,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "Rate",
                                  hintText: "Enter Your rate in percentage..",
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            )),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 2 * _minimumPadding,
                              left: 10 * _minimumPadding,
                              right: 10 * _minimumPadding),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: TextFormField(
                                    validator: (String? value) {
                                      if(_formKey.currentState!.validate()){
                                        return 'please enter your term';
                                      }
                                    },
                                controller: termController,
                                style: textStyle,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  errorStyle: const TextStyle(
                                    color: Colors.yellowAccent,
                                    fontSize: 15.0
                                  ),
                                    labelText: "Term",
                                    hintText: "Enter Your term..",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0))),
                              )),
                              Container(
                                width: 2 * _minimumPadding,
                              ),
                              Expanded(
                                  child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 191, 191, 192)),
                                underline: Container(
                                  height: 2,
                                  color:
                                      const Color.fromARGB(255, 212, 212, 212),
                                ),
                                onChanged: (String? newValue) {
                                  _onDropdownItemSelected(newValue);
                                },
                                items: _currencies
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(50.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: RaisedButton(
                                      onPressed: () {
                                        print("line 141");
                                        setState(() {

                                        if(_formKey.currentState!.validate()){
                                            displayResult =
                                              _calculateTotalReturns();
                                        
                                        }
                                         });
                                      },
                                      child: const Text(
                                        "Calculate",
                                        textScaleFactor: 1.5,
                                      ))),
                              Expanded(
                                  child: RaisedButton(
                                color: Theme.of(context).colorScheme.secondary,
                                textColor: Theme.of(context).primaryColorDark,
                                onPressed: (() =>
                                    debugPrint('-------Reset----157 line')),
                                child: const Text(
                                  "Reset",
                                  textScaleFactor: 1.5,
                                ),
                              )),
                              Expanded(
                                child: ElevatedButton(
                                  style: style,
                                  onPressed: null,
                                  child: const Text('Disabled'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(displayResult),
                              )
                            ],
                          ),
                        )
                      ])),
                )
              ])) ,
        ));
  }

  Widget getImageAssets() {
    AssetImage assetImage = const AssetImage('images/money.png');
    Image image = Image(
      image: assetImage,
      width: 50.0,
      height: 50.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 10),
    );
  }

  void _onDropdownItemSelected(String? newValue) {
    setState(() {
      dropdownValue = newValue!;
    });
  }

  String _calculateTotalReturns() {
    print("Line 202");
    double principal = double.parse(pricipalController.text);

    double rate = double.parse(roiController.text);

    double term = double.parse(termController.text);
    double totalAmountPayable = principal + (principal * rate * term) / 100;
    String result =
        'After $term  years , your invest,ment wil be worth $totalAmountPayable';
    print(result);
    return result;
  }
}