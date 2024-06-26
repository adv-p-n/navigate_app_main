import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:navigate_app_main/Utils/error_dialog_builder.dart';
import 'package:navigate_app_main/wifi/wifi_mac_addresses.dart';
import 'package:navigate_app_main/wifi/wifi_scan_backend.dart';
import 'package:wifi_scan/wifi_scan.dart';
import 'dart:developer' as dev;

List<WiFiAccessPoint> accessPoints = <WiFiAccessPoint>[];
List<WiFiAccessPoint> selectedAccessPoints = [];
List<Map<String, dynamic>> rowData = [];
List<String> macIdInTable = finalMac;
bool shouldCheckCan = true;

Future<void> startScan(BuildContext context) async {
  if (shouldCheckCan) {
    final can = await WiFiScan.instance.canStartScan();
    // if can-not, then show error
    if (can != CanStartScan.yes) {
      return;
    }
  }

  // call startScan API
  await WiFiScan.instance.startScan();
  // reset access points.
  accessPoints = <WiFiAccessPoint>[];
  await _getScannedResults(context);
}

Future<bool> _canGetScannedResults(BuildContext context) async {
  if (shouldCheckCan) {
    // check if can-getScannedResults
    final can = await WiFiScan.instance.canGetScannedResults();
    // if can-not, then show error
    if (can != CanGetScannedResults.yes) {
      //if (mounted) kShowSnackBar(context, "Cannot get scanned results: $can");
      accessPoints = <WiFiAccessPoint>[];
      return false;
    }
  }
  return true;
}

Future<void> _getScannedResults(BuildContext context) async {
  //Fluttertoast.showToast(msg: 'Getting Scan results');
  if (await _canGetScannedResults(context)) {
    // get scanned results
    final results = await WiFiScan.instance.getScannedResults();
    accessPoints = results;
  }
}

Future<void> _addSelectedWifiToTable(BuildContext context) async {
  // Clear the previous tempMacVals
  await startScan(context);

  // Map to store aggregated signal levels for each MAC address
  Map<String, int> aggregatedSignalLevels = {};
  selectedAccessPoints = [];
  for (WiFiAccessPoint wifi in accessPoints) {
    if (wifi.ssid == "AMRITA-Connect-2.4GHz") {
      selectedAccessPoints.add(wifi);
    }
  }
  dev.log('selectedAccessPoints : $selectedAccessPoints');

  for (WiFiAccessPoint selctaccessPoint in selectedAccessPoints) {
    // Aggregate signal levels for each MAC address
    aggregatedSignalLevels.update(
      selctaccessPoint.bssid,
      (level) => level + selctaccessPoint.level,
      ifAbsent: () => selctaccessPoint.level,
    );

    // Add MAC address to macIdInTable if it's not already present
    if (!macIdInTable.contains(selctaccessPoint.bssid)) {
      showGenericDialog(
        context: context,
        content: ('Mac Id not recognised'),
        title: ("An Error Occured"),
        optionsBuilder: () => {
          'OK': Navigator.pop,
        },
      );
    }
  }

  // Convert aggregated signal levels to the required format
  rowData = [];
  rowData.addAll(
    aggregatedSignalLevels.entries.map((entry) => {
          entry.key: entry.value,
        }),
  );
}

Future<String> getRoom(BuildContext context, int floor) async {
  _addSelectedWifiToTable(context);
  // rowData = [
  //   {"c6:74:ad:78:60:65": -79},
  //   {"10:f0:68:67:14:e8": -58},
  //   {"0c:f4:d5:59:9a:68": -77},
  //   {"c6:74:ad:78:5f:29": -82},
  //   {"84:18:3a:63:a3:78": -58}
  // ];
  // Create a new map entry for 'floor'
  Map<String, dynamic> floorEntry = {'floor': floor};

  // Append the 'floor' entry to rowData
  rowData.add(floorEntry);
  dev.log('rowData: $rowData');
  String room = await sendDataToBackend(rowData);
  dev.log("Room: $room");
  //dev.log('tempMacVals : $tempMacVals');

  Fluttertoast.showToast(
      msg: "Room: $room", gravity: ToastGravity.CENTER, fontSize: 16.0);
  return room;
}
