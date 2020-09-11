import 'package:cartoon_memory/models/TileModel.dart';

String selectedTile = "";
int selectedIndex;
bool selected = true;
int points = 0;
int type;

List<TileModel> myPairs = new List<TileModel>();
List<bool> clicked = new List<bool>();

List<bool> getClicked() {
  List<bool> yoClicked = new List<bool>();
  List<TileModel> myairs = new List<TileModel>();
  myairs = getPairs(type);
  for (int i = 0; i < myairs.length; i++) {
    yoClicked[i] = false;
  }

  return yoClicked;
}

List<TileModel> getPairs(int type) {
  List<TileModel> pairs = new List<TileModel>();
  List<TileModel> randomPairs = new List<TileModel>();

  TileModel tileModel = new TileModel();

  //1
  tileModel.setImageAssetPath("assets/p_1.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  //pairs.add(tileModel);
  tileModel = new TileModel();

  //2
  tileModel.setImageAssetPath("assets/p_2.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  //pairs.add(tileModel);
  tileModel = new TileModel();

  //3
  tileModel.setImageAssetPath("assets/p_3.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  //pairs.add(tileModel);
  tileModel = new TileModel();

  //4
  tileModel.setImageAssetPath("assets/p_4.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  //pairs.add(tileModel);
  tileModel = new TileModel();
  //5
  tileModel.setImageAssetPath("assets/p_5.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  //pairs.add(tileModel);
  tileModel = new TileModel();

  //6
  tileModel.setImageAssetPath("assets/p_6.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  //pairs.add(tileModel);
  tileModel = new TileModel();

  //7
  tileModel.setImageAssetPath("assets/p_7.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  //pairs.add(tileModel);
  tileModel = new TileModel();

  //8
  tileModel.setImageAssetPath("assets/p_8.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  //pairs.add(tileModel);
  tileModel = new TileModel();
  pairs.shuffle();
  
  for (int i = 0; i < type / 2; i++) {
    randomPairs.add(pairs[i]);
    randomPairs.add(pairs[i]);
  }
  return randomPairs;
}

List<TileModel> getQuestionPairs(int type) {
  List<TileModel> pairs = new List<TileModel>();

  TileModel tileModel = new TileModel();

  for (int i = 0; i < type; i++) {
    tileModel.setImageAssetPath("assets/question.png");
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    tileModel = new TileModel();
  }

  return pairs;
}
