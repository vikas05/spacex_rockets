import 'package:get/get.dart';
import '../models/rocket.dart';
import '../core/api_service.dart';
import '../core/error_handler.dart';

class RocketController extends GetxController {
  var rockets = <Rocket>[].obs;
  var isLoading = true.obs;
  final ApiService apiService = ApiService();

  @override
  void onInit() {
    fetchRockets();
    super.onInit();
  }

  void fetchRockets() async {
    try {
      isLoading(true);
      rockets.value = await apiService.fetchRockets();
    } catch (e) {
      showError('Failed to load rockets from API');
    } finally {
      isLoading(false);
    }
  }
}
