import 'package:flutter/material.dart';

class RequestItem extends StatelessWidget {
  const RequestItem({
    Key key,
    @required String firstName,
    @required String lastName,
    @required String profileUrl,
    @required String gradeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 3,
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: CircleAvatar(
            radius: 45,
          ),
          title: Text(
            'Selim Ellieh',
            style: Theme.of(context).textTheme.headline5,
          ),
          subtitle: Text(
            'Wants to join.',
            style: Theme.of(context).textTheme.bodyText1,
            overflow: TextOverflow.clip,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.check),
                onPressed: () {},
                color: Colors.green,
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {},
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
