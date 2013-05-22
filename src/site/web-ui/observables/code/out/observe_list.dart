// Auto-generated from observe_list.html.
// DO NOT EDIT.

library observe_list;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'package:web_ui/web_ui.dart';


// Original code


final List<DateTime> timestamps = toObservable([]);

void addTimestamp() {
  timestamps.add(new DateTime.now());
}

void clear() {
  timestamps.clear();
}

main() {}
// Additional generated code
void init_autogenerated() {
  var __root = autogenerated.document.body;
  final __html0 = new autogenerated.Element.html('<li template="" repeat="ts in timestamps"></li>');
  var __e0, __e1, __e4;
  var __t = new autogenerated.Template(__root);
  __e0 = __root.nodes[1].nodes[1];
  __t.listen(__e0.onClick, ($event) { addTimestamp(); });
  __e1 = __root.nodes[1].nodes[3];
  __t.listen(__e1.onClick, ($event) { clear(); });
  __e4 = __root.nodes[3].nodes[1];
  __t.loop(__e4, () => timestamps, ($list, $index, __t) {
    var ts = $list[$index];
    var __e3;
    __e3 = __html0.clone(true);
    var __binding2 = __t.contentBind(() => ts, false);
    __e3.nodes.add(__binding2);
  __t.add(__e3);
  });
  __t.create();
  __t.insert();
}

//@ sourceMappingURL=observe_list.dart.map