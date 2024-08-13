import 'package:flutter/material.dart';
// import 'package:meals/screens/tabs.dart';
// import 'package:meals/widgets/main_drawer.dart';
import 'package:meals/providers/filters_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({Key? key});



  @override
  Widget build(BuildContext context,WidgetRef ref) {
   final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
          children: [
            SwitchListTile(
              value: activeFilters[Filter.glutenFree]!,
              onChanged: (isChecked) {
                ref.read(filtersProvider.notifier).SetFilter(Filter.glutenFree, isChecked);
              },
              title: Text(
                'Gluten-free',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include gluten-free meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
        
             SwitchListTile(
             value: activeFilters[Filter.lactoseFree]!,
              onChanged: (isChecked) {
                ref.read(filtersProvider.notifier).SetFilter(Filter.lactoseFree, isChecked);
              },
              title: Text(
                'Lactose-free',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include lactose-free meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
        
            SwitchListTile(
              value: activeFilters[Filter.vegetarain]!,
              onChanged: (isChecked) {
                ref.read(filtersProvider.notifier).SetFilter(Filter.vegetarain, isChecked);
              },
              title: Text(
                'Vegetarian',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include vegetrain meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
        
            SwitchListTile(
              value: activeFilters[Filter.vegan]!,
              onChanged: (isChecked) {
                ref.read(filtersProvider.notifier).SetFilter(Filter.vegan, isChecked);
              },
              title: Text(
                'Vegan',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include vagan meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
          ],
        ),
      );
  }
}
