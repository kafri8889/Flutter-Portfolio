
import 'package:get/get.dart';
import 'package:portfolio/data/LocalProjectDataProvider.dart';
import 'package:portfolio/data/model/Project.dart';

class HomeController extends GetxController {
  Rx<int> index = 0.obs;
  Rx<double> textOpacity = 1.0.obs;
  Rx<Project> currentProject = LocalProjectDataProvider.getInstance().values[0].obs;

  void next() {
    if (index.value + 1 >= LocalProjectDataProvider.getInstance().values.length) {
      index.value = -1;
    }
    index.value++;
    animateTextChange(() {
      currentProject.value = LocalProjectDataProvider.getInstance().values[index.value];
    });
  }

  void previous() {
    if (index.value - 1 < 0) {
      index.value = LocalProjectDataProvider.getInstance().values.length;
    }
    index.value--;
    animateTextChange(() {
      currentProject.value = LocalProjectDataProvider.getInstance().values[index.value];
    });
  }

  void animateTextChange(void Function() onFinish) async {
    textOpacity.value = 0;
    await Future.delayed(const Duration(milliseconds: 0)); // Disable animation
    onFinish();
    textOpacity.value = 1;
  }

}