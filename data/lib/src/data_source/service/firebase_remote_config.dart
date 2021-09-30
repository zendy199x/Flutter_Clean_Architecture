import 'package:firebase_remote_config/firebase_remote_config.dart';

class FirebaseRemoteConfig {
  /// Latest version
  static const String VERSION = 'version';

  // The latest version is required to update
  static const String LAST_CONSTRAINT_VERSION = 'last_constraint_version';

  // Force update if constraint = true
  static const String CONSTRAINT = 'constraint';

  static const Map<String, dynamic> DEFAULT_REMOTE_CONFIG = {
    VERSION: '2.6.6',
    LAST_CONSTRAINT_VERSION: '2.6.0',
    CONSTRAINT: false,
  };

  final RemoteConfig _remoteConfig;

  FirebaseRemoteConfig(this._remoteConfig);

  Future<RemoteConfig> getConfig() async {
    await _remoteConfig.setDefaults(DEFAULT_REMOTE_CONFIG);
    await _remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 30),
      minimumFetchInterval: const Duration(hours: 1),
    ));
    await _remoteConfig.fetchAndActivate();
    return _remoteConfig;
  }
}
