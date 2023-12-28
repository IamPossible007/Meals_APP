import 'package:flutter/material.dart';
// import 'package:meals/screens/tab.dart';
// import 'package:meals/widgets/main_drawer.dart';

enum Filter { gutenFree, lactoseFree, vegetarian, vegan }

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() {
    return _FilterScreen();
  }
}

class _FilterScreen extends State<FilterScreen> {
  var _glutenfreeFilterSet = false;
  var _lactosefreeFilterSet = false;
  var _vegFilterSet = false;
  var _veganFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Filters'),
        ),
        // drawer: MainDrawer(
        //   onSelectScreen: (identifier) {
        //     Navigator.of(context).pop();
        //     if (identifier == 'Meals') {
        //       Navigator.of(context).pushReplacement(
        //           MaterialPageRoute(builder: (ctx) => const TabsScreen()));
        //     }
        //   },
        // ),
        body: WillPopScope(
          onWillPop: () async {
            Navigator.of(context).pop({
              Filter.gutenFree: _glutenfreeFilterSet,
              Filter.lactoseFree: _lactosefreeFilterSet,
              Filter.vegetarian: _vegFilterSet,
              Filter.vegan: _veganFilterSet,
            });
            return false;
          },
          child: Column(
            children: [
              SwitchListTile(
                value: _glutenfreeFilterSet,
                onChanged: (isChecked) {
                  setState(() {
                    _glutenfreeFilterSet = isChecked;
                  });
                },
                title: Text(
                  'Gluten free',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                subtitle: Text(
                  "Only Gluten free meals",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                activeColor: const Color.fromARGB(255, 69, 238, 13),
                contentPadding: const EdgeInsets.only(left: 34, right: 22),
              ),
              SwitchListTile(
                value: _lactosefreeFilterSet,
                onChanged: (isChecked) {
                  setState(() {
                    _lactosefreeFilterSet = isChecked;
                  });
                },
                title: Text(
                  'Lactose free',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                subtitle: Text(
                  "Only Lactose free meals",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                activeColor: const Color.fromARGB(255, 69, 238, 13),
                contentPadding: const EdgeInsets.only(left: 34, right: 22),
              ),
              SwitchListTile(
                value: _vegFilterSet,
                onChanged: (isChecked) {
                  setState(() {
                    _vegFilterSet = isChecked;
                  });
                },
                title: Text(
                  'Vegetarian',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                subtitle: Text(
                  "Only Vegetarian meals",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                activeColor: const Color.fromARGB(255, 69, 238, 13),
                contentPadding: const EdgeInsets.only(left: 34, right: 22),
              ),
              SwitchListTile(
                value: _veganFilterSet,
                onChanged: (isChecked) {
                  setState(() {
                    _veganFilterSet = isChecked;
                  });
                },
                title: Text(
                  'Vegan',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                subtitle: Text(
                  "Only Vegan meals",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                activeColor: const Color.fromARGB(255, 69, 238, 13),
                contentPadding: const EdgeInsets.only(left: 34, right: 22),
              ),
            ],
          ),
        ));
  }
}
