import 'package:eldesoky_website/common/utils/assets.dart';
import 'package:eldesoky_website/models/team_member_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final currentPage = 0.obs;
  final teamMember1 = 0.obs;
  final teamMember2 = 1.obs;
  final teamMember3 = 2.obs;

  void changeMembersLeft() {
    teamMember1.value--;
    teamMember2.value--;
    teamMember3.value--;
    if (teamMember1.value == -1) {
      teamMember1.value = 4;
    }
    if (teamMember2.value == -1) {
      teamMember2.value = 4;
    }
    if (teamMember3.value == -1) {
      teamMember3.value = 4;
    }
  }

  void changeMembersRight() {
    teamMember1.value++;
    teamMember2.value++;
    teamMember3.value++;
    if (teamMember1.value == 5) {
      teamMember1.value = 0;
    }
    if (teamMember2.value == 5) {
      teamMember2.value = 0;
    }
    if (teamMember3.value == 5) {
      teamMember3.value = 0;
    }
  }

  List<TeamMemberModel> teamMembers = [
    TeamMemberModel(
        image: AppAssets.personImage1,
        name: 'Sarah Ahmed',
        job: 'Architectural Engineer - 32',
        description:
            '“Designing spaces that leave a lasting impact is my driving force.”'),
    TeamMemberModel(
        image: AppAssets.personImage2,
        name: 'Ahmed Hassan',
        job: 'Civil Engineer - 38',
        description:
            '“Building a better tomorrow requires a solid foundation today.”'),
    TeamMemberModel(
        image: AppAssets.personImage3,
        name: 'Karim Ali',
        job: 'Civil Engineer - 33',
        description:
            '"Efficiency and precision drive success in construction.”'),
    TeamMemberModel(
        image: AppAssets.personImage4,
        name: 'Mahmoud Farouk',
        job: 'Technician - 27',
        description:
            '"The heart of any industrial endeavor is in the mechanics.”'),
    TeamMemberModel(
        image: AppAssets.personImage5,
        name: 'Aisha Mahmoud',
        job: 'Civil Engineer - 29',
        description:
            '“In the realm of construction, safety and innovation go hand in hand.”'),
  ];
}
