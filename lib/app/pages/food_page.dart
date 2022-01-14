import 'package:flutter/material.dart';
import 'package:submission_2/app/data/list_chips.dart';
import 'package:submission_2/app/data/list_food.dart';
import 'package:submission_2/app/model/chips_model.dart';
import 'package:submission_2/app/model/food_model.dart';
import 'package:submission_2/app/theme/color.dart';
import 'package:submission_2/app/theme/fonts.dart';
import 'package:submission_2/app/widgets/foods/chip_input.dart';
import 'package:submission_2/app/widgets/foods/search_input.dart';

class FoodPage extends StatelessWidget {
  static const routeName = '/food-page';
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.1;
    print(itemHeight);
    final double itemWidth = size.width / 2;
    print(itemWidth);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: black,
          ),
        ),
        title: Text('Food', style: title2),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
            ),
            child: Icon(
              Icons.shopping_cart,
              color: black,
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    width: double.infinity,
                    height: 46,
                    child: const SearchInput(),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listChips.length,
                  itemBuilder: (context, index) {
                    ChipModel chipData = listChips[index];
                    return ChipWidget(
                      name: chipData.name,
                    );
                  },
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  FoodModel getData = foodList[index];
                  return Container(
                    margin: const EdgeInsets.only(
                      top: 32,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                            ),
                            builder: (BuildContext context) {
                              return Container(
                                height: 600,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(
                                      20,
                                    ),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(getData.image, width: 483),
                                    ListTile(
                                        title:
                                            Text(getData.name, style: title1),
                                        subtitle: Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Color(
                                                0xFFF0c324,
                                              ),
                                              size: 15,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Color(
                                                0xFFF0c324,
                                              ),
                                              size: 15,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Color(
                                                0xFFF0c324,
                                              ),
                                              size: 15,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Color(
                                                0xFFF0c324,
                                              ),
                                              size: 15,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Color(
                                                0xFFF0c324,
                                              ),
                                              size: 15,
                                            ),
                                            const SizedBox(
                                              width: 8.62,
                                            ),
                                            Text('${getData.rating}',
                                                style: ratings.copyWith(
                                                    color: grey)),
                                          ],
                                        ),
                                        trailing: Container(
                                          width: 108,
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {},
                                                child: const SizedBox(
                                                  width: 24.5,
                                                  height: 24.5,
                                                  child:
                                                      Icon(Icons.remove_circle),
                                                ),
                                              ),
                                              const SizedBox(width: 16.5),
                                              Text('1', style: subtitle2),
                                              const SizedBox(width: 16.5),
                                              GestureDetector(
                                                onTap: () {},
                                                child: SizedBox(
                                                  width: 24.5,
                                                  height: 24.5,
                                                  child: Icon(
                                                    Icons.add_circle_sharp,
                                                    color: primary50,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 16.5),
                                            ],
                                          ),
                                        )),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: Text(getData.price, style: title1),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 16.0,
                                        right: 16.0,
                                        top: 16.0,
                                      ),
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: primary50,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Place Holder',
                                          style: subtitle2.copyWith(
                                            color: white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(getData.image, height: 160),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                right: 8.0,
                                bottom: 4.0,
                              ),
                              child: Text(
                                getData.name,
                                style: subtitle2.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 8.0),
                                const Icon(
                                  Icons.star,
                                  color: Color(
                                    0xFFF0c324,
                                  ),
                                  size: 15,
                                ),
                                const SizedBox(width: 4.0),
                                Text(
                                  '${getData.rating}',
                                  style: body3.copyWith(
                                    fontSize: 14,
                                    color: grey,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                right: 8.0,
                                bottom: 4.0,
                                top: 8.0,
                              ),
                              child: Text(
                                getData.price,
                                style: subtitle2.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                childCount: foodList.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                childAspectRatio: (itemWidth / itemHeight),
              ),
            )
          ],
        ),
      ),
    );
  }
}
