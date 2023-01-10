import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tugas_clone/data/home_data.dart';
import 'package:tugas_clone/data/model/subject.dart';
import 'package:tugas_clone/ui/theme/app_color.dart';
import 'package:tugas_clone/ui/widgets/app_assignment.dart';
import 'package:tugas_clone/ui/widgets/app_icon.dart';
import 'package:tugas_clone/ui/widgets/subject_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              Text(
                'Google Classroom',
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: 24,
                ),
              ),
              Divider(
                color: AppColor.white,
              ),
              ListTile(
                textColor: AppColor.white,
                title: Text('Kelas'),
                leading: Icon(
                  Icons.home,
                  color: AppColor.white,
                ),
              ),
              ListTile(
                textColor: AppColor.white,
                title: Text('Kalender'),
                leading: Icon(
                  Icons.calendar_month,
                  color: AppColor.white,
                ),
              ),
              ListTile(
                textColor: AppColor.white,
                title: Text('Notifikasi'),
                leading: Icon(
                  Icons.notifications,
                  color: AppColor.white,
                ),
              ),
              Divider(
                color: AppColor.white,
              ),
              SizedBox(
                child: Text(
                  "Anda terdaftar di mata pelajaran",
                  style: TextStyle(color: AppColor.grey),
                ),
              ),
              ListTile(
                textColor: AppColor.white,
                title: Text('Daftar tugas'),
                leading: Icon(
                  Icons.note_add,
                  color: AppColor.white,
                ),
              ),
              Divider(
                color: AppColor.white,
              ),
              ListTile(
                textColor: AppColor.white,
                title: Text('File Offline'),
                leading: Icon(
                  Icons.offline_pin,
                  color: AppColor.white,
                ),
              ),
              ListTile(
                textColor: AppColor.white,
                title: Text('Kelas yang di arsipkan'),
                leading: Icon(
                  Icons.archive_sharp,
                  color: AppColor.white,
                ),
              ),
              ListTile(
                textColor: AppColor.white,
                title: Text('Folder'),
                leading: Icon(
                  Icons.folder,
                  color: AppColor.white,
                ),
              ),
              ListTile(
                textColor: AppColor.white,
                title: Text('Setelan'),
                leading: Icon(
                  Icons.settings,
                  color: AppColor.white,
                ),
              ),
              ListTile(
                textColor: AppColor.white,
                title: Text('Bantuan'),
                leading: Icon(
                  Icons.help,
                  color: AppColor.white,
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
            backgroundColor: AppColor.black,
            title: Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Clickable icon
                  AppIconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/schedule.svg",
                        width: 24,
                        height: 24,
                        color: AppColor.white,
                      ),
                      onTap: () {}),
                  const SizedBox(
                    width: 12,
                  ),
                  AppIconButton(
                    icon: Stack(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/notification-fill.svg",
                          width: 24,
                          height: 24,
                          color: AppColor.white,
                        ),
                        Positioned(
                          right: 2,
                          top: 0,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              border: Border.all(
                                  color: Theme.of(context).canvasColor,
                                  width: 1),
                              borderRadius: BorderRadius.circular(360),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 12,
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(360),
                    child: Image.asset(
                      "assets/images/user.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              ),
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showBarModalBottomSheet(
              animationCurve: Curves.easeInOut,
              backgroundColor: Theme.of(context).canvasColor,
              bounce: true,
              enableDrag: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              context: context,
              builder: (context) => Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          "buatkelas",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text(
                          "Gabung Ke Kelas",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {},
                      ),
                      // ElevatedButton(

                      //     onPressed: () {}, child: const Text('Buat kelas'),),
                    ],
                    // children: [
                    //   Text(
                    //     "Join Class",
                    //     style: TextStyle(
                    //         color: AppColor.white, fontWeight: FontWeight.w600),
                    //   ),
                    //   const SizedBox(height: 16),
                    //   TextField(
                    //     keyboardType: TextInputType.text,
                    //     textInputAction: TextInputAction.done,
                    //     style: TextStyle(
                    //       color: AppColor.white,
                    //       fontWeight: FontWeight.w500,
                    //     ),
                    //     decoration: InputDecoration(
                    //         hintText: "Enter Your class code",
                    //         hintStyle: TextStyle(
                    //           color: AppColor.grey.withOpacity(
                    //             0.75,
                    //           ),
                    //         ),
                    //         enabledBorder: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(8),
                    //           borderSide: BorderSide(
                    //             color: AppColor.dark,
                    //             width: 1,
                    //           ),
                    //         ),
                    //         focusedBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(8),
                    //             borderSide: BorderSide(
                    //               color: Theme.of(context).primaryColor,
                    //               width: 1.3,
                    //             ))),
                    //   ),
                    //   const SizedBox(
                    //     height: 32,
                    //   ),
                    //   Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: [
                    //       Row(
                    //         mainAxisSize: MainAxisSize.min,
                    //         mainAxisAlignment: MainAxisAlignment.start,
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           ClipRRect(
                    //             borderRadius: BorderRadius.circular(360),
                    //             child: Image.asset(
                    //               "assets/images/user.png",
                    //               width: 32,
                    //               height: 32,
                    //             ),
                    //           ),
                    //           const SizedBox(width: 16),
                    //           Column(
                    //             mainAxisAlignment: MainAxisAlignment.start,
                    //             children: const [
                    //               Text(
                    //                 "Mochammad Iqbal",
                    //                 style: TextStyle(
                    //                   color: AppColor.white,
                    //                   fontSize: 16,
                    //                   fontWeight: FontWeight.w600,
                    //                 ),
                    //               ),
                    //               SizedBox(height: 2),
                    //               Text(
                    //                 "poin15nd@gmail.com",
                    //                 style: TextStyle(
                    //                   color: AppColor.grey,
                    //                   fontSize: 12,
                    //                 ),
                    //               ),
                    //             ],
                    //           )
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    //   AppIconButton(
                    //     icon: Icon(
                    //       Icons.chevron_right,
                    //       color: AppColor.grey.withOpacity(0.75),
                    //     ),
                    //     onTap: () {},
                    //   ),
                    //   MaterialButton(
                    //       minWidth: MediaQuery.of(context).size.width,
                    //       elevation: 0,
                    //       highlightElevation: 0,
                    //       splashColor:
                    //           Theme.of(context).canvasColor.withOpacity(0.15),
                    //       highlightColor:
                    //           Theme.of(context).canvasColor.withOpacity(0.25),
                    //       padding: const EdgeInsets.symmetric(
                    //           horizontal: 32, vertical: 16),
                    //       color: Theme.of(context).primaryColor,
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(8),
                    //       ),
                    //       child: Text(
                    //         "Join class",
                    //         style: TextStyle(
                    //             color: AppColor.white,
                    //             fontSize: 16,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //       onPressed: () {
                    //         Navigator.of(context).pop();
                    //       })
                    // ],
                  ),
                ),
              ),
            );
          },
          backgroundColor: Theme.of(context).primaryColor,
          splashColor: AppColor.black.withOpacity(0.25),
          // focusColor: AppColor.black.withOpacity(0.15),
          child: const Icon(
            Icons.add,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColor.white,
                          ),
                          children: [
                            TextSpan(
                              text: "Morning ",
                              style: TextStyle(
                                color: AppColor.white.withOpacity(0.85),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "Iqbal ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: "",
                                style: TextStyle(
                                  fontSize: 18,
                                ))
                          ]),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        "Yang Tau Tau Aja",
                        style: TextStyle(color: AppColor.grey),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "This Week",
                        style: TextStyle(
                            color: AppColor.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(360),
                        splashColor:
                            Theme.of(context).primaryColor.withOpacity(0.25),
                        highlightColor:
                            Theme.of(context).primaryColor.withOpacity(0.4),
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Text(
                            "view all",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: const [
                      Expanded(
                        child: Assignment(
                            count: 5,
                            subject: ["Digital Art, Finance"],
                            type: AssignmentType.assigned),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Assignment(
                            count: 2,
                            subject: ["Digital Art, Finance"],
                            type: AssignmentType.missed),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Expanded(
                  child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: subjects.length,
                itemBuilder: (ctx, index) {
                  final Subject = subjects[index];

                  //Subject item
                  return SubjectItem(subject: Subject);
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
