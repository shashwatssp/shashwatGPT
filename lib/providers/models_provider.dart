import 'package:flutter/cupertino.dart';
import 'package:shashwatgpt/models/models_model.dart';
import 'package:shashwatgpt/services/api_service.dart';

class ModelsProvider with ChangeNotifier {
  List<ModelsModel> modelList = [];
  String currentModel = "text-davinci-003";

  String get getCurrentModel {
    return currentModel;
  }

  void setCurrentModel(String newModel) {
    currentModel = newModel;
    notifyListeners();
  }

  List<ModelsModel> modelsList = [];
  List<ModelsModel> get getModelsList {
    return modelsList;
  }

  Future<List<ModelsModel>> getAllModels() async {
    modelsList = await ApiService.getModels();
    return modelsList;
  }
}
