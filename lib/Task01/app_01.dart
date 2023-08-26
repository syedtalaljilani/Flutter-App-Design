import 'package:fitness/Task01/models/category_model.dart';
import 'package:fitness/Task01/models/diet_model.dart';
import 'package:fitness/Task01/models/popularmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitness/home.dart';

class App01 extends StatefulWidget {
  const App01({super.key});

  @override
  State<App01> createState() => _App01State();
}

class _App01State extends State<App01> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularDietsModel> popular = [];
  void getinitialInfo() {
    diets = DietModel.getDiets();
    categories = CategoryModel.getCategories();
    popular = PopularDietsModel.getPopularDiets();
  }

  @override
  void initState() {
    super.initState();
    getinitialInfo();
  }

  @override
  Widget build(BuildContext context) {
    getinitialInfo();
    return Scaffold(
        appBar: appbar(),
        body: ListView(
          children: [
            searchField(),
            const SizedBox(
              height: 40,
            ),
            _categoriesSection(),
            const SizedBox(
              height: 40,
            ),
            _dietSection(),
            const SizedBox(
              height: 40,
            ),
            _popularSection(),
            const SizedBox(
              height: 40,
            ),
          ],
        ));
  }

  Column _popularSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Popular',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: popular[index].boxIsSelected
                        ? Colors.white
                        : Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff1D1617).withOpacity(0.17),
                        offset: const Offset(0, 10),
                        blurRadius: 40,
                        spreadRadius: 0,
                      ),
                    ]),
                height: 100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        popular[index].iconPath,
                        height: 65,
                        width: 65,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            popular[index].name,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '${popular[index].level} | ${popular[index].duration} | ${popular[index].calorie} | ',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/icons/button.svg',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ]),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
                  height: 25,
                ),
            itemCount: popular.length)
      ],
    );
  }

  Column _dietSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Recommendation\nfor Diet',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 210,
                decoration: BoxDecoration(
                  color: categories[index].boxColor.withOpacity(0.3),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(diets[index].iconPath),
                      Text(
                        diets[index].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '${diets[index].level} | ${diets[index].duration} | ${diets[index].calorie} | ',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              diets[index].viewIsSelected
                                  ? const Color(0xff9DCEFF)
                                  : const Color.fromARGB(12, 136, 131, 131),
                              diets[index].viewIsSelected
                                  ? const Color(0xff92A3Fd)
                                  : const Color.fromARGB(12, 136, 131, 131),
                            ],
                          ),
                        ),
                        width: 130,
                        height: 45,
                        child: const Center(
                          child: Text(
                            'View',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ]),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 25,
            ),
            itemCount: diets.length,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }

  Column _categoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Category',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 150,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 25,
              );
            },
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                decoration: BoxDecoration(
                  color: categories[index].boxColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(categories[index].iconpath),
                        ),
                      ),
                      Text(
                        categories[index].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      )
                    ]),
              );
            },
            itemCount: categories.length,
          ),
        )
      ],
    );
  }

  Container searchField() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
        left: 40,
        right: 40,
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: const Color(0xff1d1617).withOpacity(0.11),
          blurRadius: 40,
          spreadRadius: 0.0,
        )
      ]),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(15),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset('assets/icons/Search.svg'),
          ),
          hintText: 'Search Pancake',
          suffixIcon: IntrinsicHeight(
            child: SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const VerticalDivider(
                    indent: 10,
                    endIndent: 10,
                    color: Colors.black,
                    thickness: 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset('assets/icons/Filter.svg'),
                  ),
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      title: const Text(
        'BreakFast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => {
          Navigator.push(
            (context),
            MaterialPageRoute(
              builder: (context) => const Homepage(),
            ),
          )
        },
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 237, 236, 236),
          ),
          child: SvgPicture.asset('assets/icons/arrowleft.svg'),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () => {},
          child: Container(
            width: 37,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 240, 233, 233),
            ),
            child: SvgPicture.asset('assets/icons/dots.svg'),
          ),
        ),
      ],
    );
  }
}
