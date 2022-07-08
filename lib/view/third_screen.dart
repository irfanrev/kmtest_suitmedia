import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kmtest_suitemedia/controller/user_controller.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({Key? key}) : super(key: key);

  final UserController c = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xff554AF0),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Third Screen',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: FutureBuilder<List<dynamic>>(
            future: c.getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, int index) {
                      final user = snapshot.data![index];
                      return Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(user['avatar']),
                            ),
                            title: Text(
                              user['first_name'] + ' ' + user['last_name'],
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Text(user['email']),
                          ),
                          const Divider(),
                        ],
                      );
                    });
              }
              return const Center(
                child: CircularProgressIndicator(
                  color: Color(0xff2B637B),
                ),
              );
            }),
      ),
    );
  }
}
