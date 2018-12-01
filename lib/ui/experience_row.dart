import 'package:flutter/material.dart';
import 'package:mdc101/experiences.dart';

class ExperienceRow extends StatefulWidget {
  final Experience experience;
  final double dotSize = 12.0;
  const ExperienceRow({Key key, this.experience}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ExperienceRowState();
  }
}

class ExperienceRowState extends State<ExperienceRow> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: new Row(
        children: <Widget>[
          new Padding(
            padding:
                new EdgeInsets.symmetric(horizontal: 32.0 - widget.dotSize / 2),
            child: new Container(
              height: widget.dotSize,
              width: widget.dotSize,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle, color: widget.experience.color),
            ),
          ),
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  widget.experience.jobTitle,
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  widget.experience.company,
                  style: new TextStyle(fontSize: 12.0, color: Colors.grey),
                )
              ],
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: new Text(
              widget.experience.date,
              style: new TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
