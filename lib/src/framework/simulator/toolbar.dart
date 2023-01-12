import 'package:flutter/material.dart';
import '../device/device_configuration.dart';

class Toolbar extends StatelessWidget {
  const Toolbar(
      {Key? key,
      required this.isOn,
      required this.selectedDeviceConfiguration,
      required this.selectedOrientation,
      required this.isKeyboardVisible,
      required this.isUnsafeAreasVisible,
      required this.zoom,
      required this.onSwitchOnOff,
      required this.onSwitchDevice,
      required this.onSwitchKeyboard,
      required this.onSwitchOrientation,
      required this.onSwitchUnsafeAreaVisibility,
      required this.onCalibrateZoom})
      : super(key: key);

  final bool isOn;
  final DeviceConfiguration selectedDeviceConfiguration;
  final Orientation selectedOrientation;
  final bool isKeyboardVisible;
  final bool isUnsafeAreasVisible;
  final double zoom;
  final VoidCallback onSwitchOnOff;
  final VoidCallback onSwitchDevice;
  final VoidCallback onSwitchKeyboard;
  final VoidCallback onSwitchOrientation;
  final VoidCallback onSwitchUnsafeAreaVisibility;
  final VoidCallback onCalibrateZoom;

  @override
  Widget build(BuildContext context) {
    var offColor = Colors.black54;
    return Column(
      children: [
        if (isOn) const SizedBox(height: 8.0),
        if (isOn)
          Text(
            isOn ? selectedDeviceConfiguration.name : '',
            style: const TextStyle(color: Colors.black),
          ),
        Material(
          color: Colors.transparent,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.start,
            children: [
              IconButton(
                  onPressed: onSwitchOnOff,
                  // tooltip: 'Test',
                  color: isOn ? null : offColor,
                  icon: const Icon(Icons.power_settings_new)),
              if (isOn) ...[
                const SizedBox(width: 4.0),
                IconButton(
                  onPressed: onSwitchDevice,
                  color: isOn ? null : offColor,
                  icon: const Icon(Icons.devices),
                ),
                const SizedBox(width: 4.0),
                IconButton(
                    onPressed: onSwitchOrientation,
                    icon: const Icon(Icons.screen_rotation)),
                const SizedBox(width: 4.0),
                IconButton(
                  onPressed: onSwitchKeyboard,
                  color: isKeyboardVisible ? null : offColor,
                  icon: const Icon(Icons.keyboard_outlined),
                ),
                const SizedBox(width: 4.0),
                IconButton(
                    onPressed: onSwitchUnsafeAreaVisibility,
                    color: isUnsafeAreasVisible ? null : offColor,
                    icon: const Icon(Icons.visibility_outlined)),
                // IconButton(onPressed: () {}, icon: Icon(Icons.zoom_in)),
                _ZoomButton(
                  zoom: zoom,
                  onPressed: onCalibrateZoom,
                ),
              ]
            ],
          ),
        ),
      ],
    );
  }
}

class _ZoomButton extends StatelessWidget {
  const _ZoomButton({Key? key, required this.zoom, required this.onPressed})
      : super(key: key);

  final double zoom;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Text('${(zoom * 100).toStringAsFixed(0)}%',
            style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
      ),
    );
  }
}
