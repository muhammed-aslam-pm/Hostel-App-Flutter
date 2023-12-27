import 'package:flutter/material.dart';
import 'package:hostel_management_app/utils/color_constants.dart';
import 'package:hostel_management_app/utils/image_constants.dart';
import 'package:hostel_management_app/utils/text_style_constatnts.dart';
import 'package:hostel_management_app/view/owner_rooms_page/residents_adding_form.dart';

class ResidentDetailesScreen extends StatelessWidget {
  const ResidentDetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryWhiteColor,
        iconTheme: IconThemeData(color: ColorConstants.primaryBlackColor),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left_outlined,
              size: 30,
            )),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                      )),
                  Hero(
                    tag: CircleAvatar,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: ColorConstants.SecondaryColor4,
                      child: Icon(Icons.person),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => ResidentsAddingPage(),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          useSafeArea: true,
                        );
                      },
                      icon: Icon(Icons.edit))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorConstants.SecondaryColor4),
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                    child: Row(
                      children: [
                        Image.asset(
                          ImageConstants.roomsIcon2,
                          color: ColorConstants.primaryBlackColor,
                          height: 25,
                          width: 25,
                        ),
                        Text(
                          "07",
                          style: TextStyleConstants.bookingsRoomNumber,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorConstants.SecondaryColor4),
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                    child: Row(
                      children: [
                        Image.asset(
                          ImageConstants.bedIcon2,
                          color: ColorConstants.primaryBlackColor,
                          height: 25,
                          width: 25,
                        ),
                        Text(
                          "01",
                          style: TextStyleConstants.bookingsRoomNumber,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ColorConstants.colorRed),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    child: Center(child: Text("Fees Not Paid")),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("Name"),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstants.SecondaryColor1,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Muhammed Aslam P M",
                  style: TextStyleConstants.dashboardBookingName,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Phone Number"),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstants.SecondaryColor1,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "+91-2224459685",
                      style: TextStyleConstants.dashboardBookingName,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.call))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Address"),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstants.SecondaryColor1,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "somthing........ Somthing..............................",
                  style: TextStyleConstants.dashboardBookingName,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Purpose of Stay"),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstants.SecondaryColor1,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Student",
                  style: TextStyleConstants.dashboardBookingName,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Eemergency Contact Number"),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstants.SecondaryColor1,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "+91-2224459685",
                      style: TextStyleConstants.dashboardBookingName,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.call))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Joining Date"),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstants.SecondaryColor1,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "12/12/2023",
                  style: TextStyleConstants.dashboardBookingName,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Vacting Date"),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstants.SecondaryColor1,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Note given",
                  style: TextStyleConstants.dashboardBookingName,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
