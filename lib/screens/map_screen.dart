import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Map")),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(-6.95825, 107.56114), // Koordinat Bandung
          initialZoom: 13,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(-6.95825, 107.56114),
                width: 80,
                height: 80,
                child: Icon(Icons.location_on, size: 40, color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
