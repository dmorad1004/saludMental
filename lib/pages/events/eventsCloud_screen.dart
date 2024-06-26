import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:supabase/supabase.dart';
import 'package:keraltyApp/pages/event/event_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class EventsCloudWidget extends StatefulWidget {
  const EventsCloudWidget({super.key});

  @override
  State<EventsCloudWidget> createState() => _EventsWidgetState();
}

final supabase = SupabaseClient(
  "https://qutusmetgkdrttcoevld.supabase.co",
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF1dHVzbWV0Z2tkcnR0Y29ldmxkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDgzODQwOTAsImV4cCI6MjAyMzk2MDA5MH0.vVpgZdl_JaASpiHA2HiYtJJ4seV-F820DXU8-gZlhvo",
);

class _EventsWidgetState extends State<EventsCloudWidget> {
  List data = [];
  final cache = DefaultCacheManager();
  bool loading = true;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    final fetchedData = await supabase.from("events").select("*");
    setState(() {
      data = fetchedData;
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed("Home");
                },
              ),
              title: Text(
                'Eventos',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Ancizar sans',
                      color: Colors.white,
                      fontSize: 22.0,
                      useGoogleFonts: false,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return EventCard(
                        title: "${data[index]["title"]}",
                        imageUrl: "${data[index]["event_image"]}",
                        eventDescription: "${data[index]["event_description"]}",
                      );
                    },
                  ),
                ),
              ],
            ),
          );
  }
}
