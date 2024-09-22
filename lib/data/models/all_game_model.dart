class AllGameModel{
  String? gameName;
  String? img;
  AllGameModel( {
    required this.gameName,
    required this.img,
  });
}

List<AllGameModel> allGmData = [
  AllGameModel(gameName: 'Single Digit', img: 'assets/images/singleDigit.svg'),
  AllGameModel(gameName: 'Single Digit Bulk', img: 'assets/images/singledigitbulk.svg'),
  AllGameModel(gameName: 'Single Pana', img: 'assets/images/singlePana.svg'),
  AllGameModel(gameName: 'Single Pana Bulk', img: 'assets/images/singlepanabulk.svg'),
  AllGameModel(gameName: 'Double Pana', img: 'assets/images/doublepana.svg'),
  AllGameModel(gameName: 'Double Pana Bulk', img: 'assets/images/doublepanabulk.svg'),
  AllGameModel(gameName: 'Triple Pana', img: 'assets/images/triplepana.svg'),
  AllGameModel(gameName: 'Triple Pana Bulk', img: 'assets/images/triplepanabulk.svg'),
];