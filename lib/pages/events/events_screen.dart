import 'package:keraltyApp/pages/event/event_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class EventsWidget extends StatefulWidget {
  const EventsWidget({super.key});

  @override
  State<EventsWidget> createState() => _EventsWidgetState();
}

class _EventsWidgetState extends State<EventsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              itemCount: 50,
              itemBuilder: (context, index) {
                return const EventCard(
                  title: "Título del evento",
                  imageUrl:
                      'https://qutusmetgkdrttcoevld.supabase.co/storage/v1/object/public/images/events/event.png',
                  eventDescription:
                      'lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
