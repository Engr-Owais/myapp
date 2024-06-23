import 'package:flutter/material.dart';
import 'package:myapp/shared/model/events.dart';
import 'package:myapp/shared/data/theme_data.dart';

class EventCard extends StatelessWidget {
  final Event event;

  const EventCard({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(event.imageUrl),
        ),
        title: Text(event.title, style: AppTheme.textTheme.bodyLarge),
        subtitle: Text('${event.date} / ${event.time}', style: AppTheme.textTheme.bodyMedium),
        trailing: Text('${event.buddies} Buddies', style: AppTheme.textTheme.bodySmall),
      ),
    );
  }
}
