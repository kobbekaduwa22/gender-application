//import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gender/api/models/answer.dart';
import 'package:gender/api/rest_client.dart';
import '../api/rest_client.dart';

final genderProvider = StateProvider((ref) => "");

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final genderController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //var gender = ref.watch(genderProvider);
    var gender = ref.watch(genderProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Guess the Gender"),
      ),
      // body: Text("Hellow"),
      //body: Text("Hellow"),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Please enter your name:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: genderController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    // borderSide: BorderSide(
                    //   width: 100,
                    // ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text("you are:"),
              Text(
                gender,
                style: TextStyle(fontSize: 40),
              ),
              // const Text(
              //   "male",
              //   style: TextStyle(
              //     fontSize: 25,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              ElevatedButton(
                onPressed: () {
                  final dio = Dio();
                  final Client = RestClient(dio);
                  dio.interceptors.add(
                      LogInterceptor(responseBody: true, requestBody: true));
                  //LogInterceptor(responseBody: true,requestBody: )
                  Client.getAnsewer(genderController.text, "US")
                      .then((ansewer) {
                    ref.read(genderProvider.notifier).state =
                        ansewer.gender ?? "_";
                    //print(ansewer);
                  });
                },
                child: Text("submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
