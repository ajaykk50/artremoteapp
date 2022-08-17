import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:flutter/material.dart';

class ScreenLeaveHistoryTabsPage extends StatelessWidget {
  const ScreenLeaveHistoryTabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPadding,
      color: kWhite,
      child: Container(
        padding: kPadding,
        decoration: BoxDecoration(
            color: backgroundGreyColor,
            borderRadius: BorderRadius.circular(10)),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Casual Leave Count',
                  style: TextStyle(color: kWhite),
                ),
                kHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Text(
                          '8',
                          style: TextStyle(color: kWhite, fontSize: 40),
                        ),
                        Text(
                          'Total',
                          style: TextStyle(color: kWhite),
                        )
                      ],
                    ),
                    kWidth,
                    Column(
                      children: const [
                        Text(
                          '8',
                          style: TextStyle(color: kWhite, fontSize: 40),
                        ),
                        Text(
                          'Balance',
                          style: TextStyle(color: kWhite),
                        )
                      ],
                    )
                  ],
                ),
                kHeight20,
                const Text(
                  '01/01/2022 -  31/12/2022',
                  style: TextStyle(color: kWhite),
                )
              ],
            ),
            kHeight20,
            Container(
              padding: kPadding,
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  const Text(
                    'Leave History',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                  kHeight20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 35,
                        child: TextField(
                          textAlign: TextAlign.center,
                          readOnly: true,
                          maxLines: 1,
                          onTap: () {
                            showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2100));
                          },
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.calendar_month),
                              prefixIconConstraints: const BoxConstraints(
                                  minWidth: 30, minHeight: 15),
                              contentPadding: const EdgeInsets.all(0),
                              hintText: "From Date",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              fillColor: kWhite,
                              filled: true),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 35,
                        child: TextField(
                          textAlign: TextAlign.center,
                          readOnly: true,
                          maxLines: 1,
                          onTap: () {
                            showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2100));
                          },
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.calendar_month),
                              prefixIconConstraints: const BoxConstraints(
                                  minWidth: 30, minHeight: 15),
                              contentPadding: const EdgeInsets.all(0),
                              hintText: "To Date",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              fillColor: kWhite,
                              filled: true),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  kHeight20,
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: baackgroundYellowColor),
                    child: const Text(
                      'Search',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  kHeight20,
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Summery',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  kHeight,
                  GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(10.0),
                    physics:
                        const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemBuilder: ((context, index) {
                      return GridTile(
                        child: Container(
                          decoration: BoxDecoration(
                              color: baackgroundlightYellowColor,
                              borderRadius: BorderRadius.circular(10)),
                          padding: kPadding,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '5',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Casual Leave',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                  kHeight,
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Details',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  kHeight,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: baackgroundYellowColor,
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('Date'),
                        Text('Type'),
                        Text('Duration'),
                        Text('Status'),
                      ],
                    ),
                  ),
                  kHeight,
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (ctx, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text('Date'),
                            Text('Type'),
                            Text('Duration'),
                            Text('Status'),
                          ],
                        );
                      },
                      separatorBuilder: (ctx, index) => kHeight,
                      itemCount: 10)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
