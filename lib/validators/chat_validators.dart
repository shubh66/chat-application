import 'dart:async';

class ChatValidators {
  StreamTransformer chatMessageStreamTransformer =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (String chatMessage, EventSink<String> eventSink) {
    if (chatMessage.length > 0) {
      eventSink.add(chatMessage);
    }
  });
  StreamTransformer groupNameStreamTransformer =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (String groupName, EventSink<String> eventSink) {
    if (groupName.length > 1 && groupName.length < 26) {
      eventSink.add(groupName);
    } else {
      eventSink.addError('Group name should be between 2 & 25');
    }
  });
}
