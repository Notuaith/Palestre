import 'package:flutter/material.dart';
import 'package:palestre/screens/calcettoConferma/calcettoConferma.dart';
import 'package:palestre/screens/widget/blueButton.dart';
import 'package:palestre/screens/widget/drawer_bar.dart';
import 'package:horizontal_time_picker/horizontal_time_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Calcetto extends StatefulWidget {
  const Calcetto({Key? key}) : super(key: key);

  @override
  _CalcettoState createState() => _CalcettoState();
}

class _CalcettoState extends State<Calcetto> {
  String date = "";
  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020),
        lastDate: DateTime(2050),
        builder: (context, child) {
          return Container(
            height: 300.0,
            color: Colors.transparent,
            child: Container(
              child: Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: const ColorScheme.dark(
                      primary: Colors.white,
                      onPrimary: Color.fromARGB(255, 6, 0, 34),
                      surface: Color.fromARGB(255, 6, 0, 34),
                      onSurface: Colors.white,
                    ),
                    dialogBackgroundColor: const Color.fromARGB(255, 6, 0, 34),
                  ),
                  child: child!),
            ),
          );
        });
    if (selected != null && selected != selectedDate) {
      setState(
        () {
          selectedDate = selected;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      drawer: const DrawerBar(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(-20),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Container(
                width: 50,
                height: 50,
                child: Image.network(
                    'https://scontent.fbri4-1.fna.fbcdn.net/v/t1.6435-9/123272079_100505655204447_1720549245364891418_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=z6zMaQYNOwcAX98Qsib&_nc_ht=scontent.fbri4-1.fna&oh=00_AT8hT18axqwYZO46JI_TJ9mTnhIF6DzCpJGLFS6ubtBYJQ&oe=6239A60A'),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/sfo.png"),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 250),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: const [
                          Text(
                            "Prenota",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: const [
                          Text(
                            "Campetto da Calcio a 7",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15),
                      child: Divider(
                        height: 1,
                        color: Colors.white.withOpacity(1),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 15),
                        child: GestureDetector(
                          onTap: () => _selectDate(context),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      'Seleziona una data',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 33.0, top: 4),
                                  child: Row(
                                    children: [
                                      Text(
                                        "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 13),
                                      ),
                                      const Icon(
                                        Icons.arrow_drop_down_sharp,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    HorizontalTimePicker(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 7, bottom: 7),
                      spacingBetweenDates: 0,
                      initialSelectedDates: [DateTime.now()],
                      timeIntervalInMinutes: 30,
                      key: UniqueKey(),
                      startTimeInHour: 9,
                      endTimeInHour: 23,
                      dateForTime: DateTime.now(),
                      selectedTimeTextStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        height: 1.0,
                      ),
                      timeTextStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        height: 1.0,
                      ),
                      defaultDecoration: const BoxDecoration(
                        color: Color.fromARGB(255, 24, 163, 24),
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Color.fromARGB(255, 24, 163, 24),
                            width: 1,
                            style: BorderStyle.none,
                          ),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                      ),
                      selectedDecoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 24, 163, 24),
                              blurRadius: 0,
                              spreadRadius: 4,
                              offset: Offset(0, 0))
                        ],
                        color: Color.fromARGB(255, 195, 69, 218),
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Color.fromARGB(255, 24, 163, 24),
                            width: 10,
                            style: BorderStyle.solid,
                          ),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      disabledDecoration: const BoxDecoration(
                        color: Colors.transparent,
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Color.fromARGB(0, 151, 151, 151),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 45,
                          height: 8,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 24, 163, 24),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          "Prenotabile",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(width: 45),
                        Container(
                          width: 45,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 195, 69, 218),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Selezionato",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 24, horizontal: 15),
                      child: Row(
                        children: const [
                          Text(
                            "Servizi",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.shower,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 80,
                          child: Text(
                            'Doccia',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.coffee,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 60,
                          child: Text(
                            'Bar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: SvgPicture.asset(
                            'assets/images/trophy.svg',
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'Tornei',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 50),
                          child: Text(
                            'Descrizione',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          child: Text(
                            '.................................',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ConfermaCalcetto(),
                                ),
                              );
                            },
                            child: BlueButton(testo: 'Conferma'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
