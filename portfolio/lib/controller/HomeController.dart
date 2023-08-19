
import 'package:get/get.dart';
import 'package:portfolio/data/LocalProjectDataProvider.dart';
import 'package:portfolio/data/model/Project.dart';

class HomeController extends GetxController {
  Rx<int> index = 0.obs;
  Rx<Project> currentProject = LocalProjectDataProvider.getInstance().values[0].obs;

  void next() {
    if (index.value + 1 >= LocalProjectDataProvider.getInstance().values.length) return;
    index.value++;
    currentProject.value = LocalProjectDataProvider.getInstance().values[index.value];
  }

  void previous() {
    if (index.value - 1 < 0) return;
    index.value--;
    currentProject.value = LocalProjectDataProvider.getInstance().values[index.value];
  }

}