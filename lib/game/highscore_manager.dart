import 'package:shared_preferences/shared_preferences.dart';

class HighscoreManager {
  static const String _highscoreKey = 'highscore';

  Future<int> getHighscore() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_highscoreKey) ?? 0;
  }

  Future<void> setHighscore(int score) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_highscoreKey, score);
  }
}
