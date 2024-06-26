import 'package:flutter/material.dart';
import 'package:tugas_dua/services/car_service.dart';
import 'package:tugas_dua/ui/rent/rent_details.dart';
import 'package:tugas_dua/utility/my_container.dart';
import 'package:tugas_dua/utility/utility.dart';

class Rent extends StatefulWidget {
  const Rent({super.key});

  @override
  State<Rent> createState() => _RentState();
}

class _RentState extends State<Rent> {
  @override
  Widget build(BuildContext context) {
    return MyContainer(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Rented Cars',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Card(
                // shape: ,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Image.asset('assets/images/veloz.png'),
                        const SizedBox(height: 8),
                        const Divider(),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  const Icon(Icons.calendar_month),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(formatter.format(DateTime.now())),
                                      Text(formatter.format(DateTime(
                                          DateTime.now().year,
                                          DateTime.now().month,
                                          DateTime.now().day + 4))),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RentDetails(
                                      car: CarService()
                                          .carByName('Avanza Veloz'),
                                    ),
                                  ),
                                );
                              },
                              child: const Row(
                                children: [
                                  Text(
                                    'Change',
                                    style: TextStyle(color: Colors.deepPurple),
                                  ),
                                  SizedBox(width: 2),
                                  Icon(Icons.chevron_right),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
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
}
