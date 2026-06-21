class Story {
  late final String _storyTitle;
  late final String _choice1;
  late final String _choice2;

  String get storyTitle => _storyTitle;
  String get choice1 => _choice1;
  String get choice2 => _choice2;

  Story({
    required this._storyTitle,
    required this._choice1,
    required this._choice2,
  });
}
