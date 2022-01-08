import 'package:get/get.dart';

class AppGet extends GetxController {
  var isSearch = false.obs;
  setIsSearch() {
    this.isSearch.value = !this.isSearch.value;
    update(['search']);
  }
}
