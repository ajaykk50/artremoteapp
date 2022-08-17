import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:art_remoteapp/domain/core/di/injectable.dart';
import 'package:art_remoteapp/domain/helpdesk/model/topic_response/topic_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/helpdesk/helpdesk_bloc.dart';
import '../../application/imageselection/image_selection_bloc.dart';
import '../../application/preference/preference_bloc.dart';

List<TopicResponse>? topicList;
var token = "";
var selectedfile = "";
var selecedTopicId = "";

TextEditingController subject = TextEditingController();
TextEditingController cc = TextEditingController();
TextEditingController content = TextEditingController();

HelpdeskBloc bloc1 = getIt<HelpdeskBloc>();
HelpdeskBloc bloc2 = getIt<HelpdeskBloc>();

class ScreenHrPage extends StatelessWidget {
  const ScreenHrPage({Key? key, required this.hepdeskId}) : super(key: key);

  final hepdeskId;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PreferenceBloc>(context).add(const Prefdata());
    });
    return BlocBuilder<PreferenceBloc, PreferenceState>(
      builder: (context, state) {
        BlocProvider.of<HelpdeskBloc>(context)
            .add(Gettopic(token: state.token, id: hepdeskId));

        return Scaffold(
          appBar: AppBar(
            backgroundColor: backgroundGreyColor,
            title: const Text("Help Dsk"),
          ),
          body: SafeArea(
              child: Container(
            color: kWhite,
            padding: kPadding,
            child: Container(
              alignment: Alignment.center,
              padding: kPadding,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: backgroundGreyColor,
              ),
              child: ListView(
                shrinkWrap: true,
                children: [
                  BlocBuilder<HelpdeskBloc, HelpdeskState>(
                    builder: (context, state) {
                      return DropdownButtonFormField(
                        isExpanded: true,
                        hint: const Text("Select Leave Type",
                            style: TextStyle(color: Colors.black)),
                        items: state.topicresponse?.map((TopicResponse items) {
                          return DropdownMenuItem(
                              value: items,
                              child: Text(items.topicName.toString()));
                        }).toList(),
                        onChanged: (TopicResponse? newvalue) {
                          selecedTopicId = newvalue?.id ?? "";
                        },
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      );
                    },
                  ),
                  kHeight,
                  TextFormField(
                    controller: subject,
                    style: const TextStyle(fontSize: kFontsize),
                    decoration: InputDecoration(
                      fillColor: kWhite,
                      prefixIcon: const Icon(Icons.subject),
                      hintText: "Subject",
                      filled: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  kHeight,
                  TextFormField(
                    controller: cc,
                    style: const TextStyle(fontSize: kFontsize),
                    decoration: InputDecoration(
                      fillColor: kWhite,
                      prefixIcon: const Icon(Icons.email),
                      hintText: "cc Mail",
                      filled: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  kHeight,
                  TextFormField(
                    controller: content,
                    maxLength: null,
                    maxLines: 10,
                    style: const TextStyle(fontSize: kFontsize),
                    decoration: InputDecoration(
                      fillColor: kWhite,
                      hintText: "Compose mail",
                      filled: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  kHeight,
                  ElevatedButton.icon(
                      onPressed: () {
                        BlocProvider.of<HelpdeskBloc>(context)
                            .add(const Fetchimage());
                      },
                      icon: const Icon(Icons.upload_file),
                      label: BlocBuilder<HelpdeskBloc, HelpdeskState>(
                        builder: (context, state) {
                          if (state.filepath != null) {
                            selectedfile = state.filepath?.path ?? "";
                          }
                          return Text(state.filepath?.path ?? "Select Image");
                        },
                      )),
                  kHeight20,
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<HelpdeskBloc>(context).add(
                        SendHelp(
                            token: token,
                            topic_id: selecedTopicId,
                            subject: subject.text,
                            cc: cc.text,
                            content: content.text,
                            files: selectedfile),
                      );
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    child: const Text("SUBMIT"),
                  ),
                ],
              ),
            ),
          )),
        );
      },
    );
  }
}
