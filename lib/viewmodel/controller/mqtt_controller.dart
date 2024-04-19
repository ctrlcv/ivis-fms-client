import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

import '../../constants/constants.dart';

class MqttController extends GetxController {
  MqttServerClient? _client;

  get client => _client;

  ///////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////

  Future<MqttClientConnectionStatus?> connect(String clientId) async {
    try {
      _client = MqttServerClient(kMqttServer, "client")
        ..keepAlivePeriod = 30
        ..onDisconnected = () {
          debugPrint("[MQTT] onDisconnected");
        }
        ..onConnected = () {
          debugPrint("[MQTT] onConnected");
        }
        ..onSubscribed = (String data) {
          debugPrint("[MQTT] data : $data");
        }
        ..pongCallback = () {
          debugPrint("[MQTT] pongCallback");
        };

      MqttClientConnectionStatus? status = await _client!.connect();
      debugPrint("[MQTT] connect() status $status");

      _client!.updates!.listen((List<MqttReceivedMessage<MqttMessage>> event) {
        onMessage(event);
      });

      return status;
    } on Exception catch (e) {
      debugPrint('[MQTT] connect() client exception - $e');
      return null;
    }
  }

  Future<void> onMessage(List<MqttReceivedMessage<MqttMessage>> event) async {
    for (int i = 0; i < event.length; i++) {
      String topic = event[i].topic;
      MqttPublishMessage msg = event[i].payload as MqttPublishMessage;
      String resultValue = MqttPublishPayload.bytesToStringAsString(msg.payload.message);
      debugPrint("[MQTT] onMessage() topic : $topic, resultValue : $resultValue");
    }
  }

  void publishMessage(String topic, String message) {
    try {
      final builder1 = MqttClientPayloadBuilder();
      builder1.addString(message);
      _client!.publishMessage(topic, MqttQos.atLeastOnce, builder1.payload!);
    } on Exception catch (e) {
      debugPrint('[MQTT] publishMessage() client exception - $e');
      connect("client");
    }
  }

  void subscribeTopic(String topic) {
    if (_client != null && _client!.connectionStatus!.state == MqttConnectionState.connected) {
      debugPrint("[MQTT] subscribeTopic() topic : $topic");
      _client!.subscribe(topic, MqttQos.atMostOnce);
    } else {
      debugPrint("[MQTT] subscribeTopic() fail, client is null or state ${_client!.connectionStatus!.state}");
    }
  }

  void unSubscribeTopic(String topic) {
    if (_client != null) {
      debugPrint("[MQTT] unSubscribeTopic() topic : $topic");
      _client!.unsubscribe(topic);
    } else {
      debugPrint("[MQTT] subscribeTopic() fail, client is null");
    }
  }

  void disconnect() {
    if (_client != null) {
      debugPrint("[MQTT] disconnect()");
      _client!.disconnect();
    } else {
      debugPrint("[MQTT] subscribeTopic() fail, client is null");
    }
  }
}
