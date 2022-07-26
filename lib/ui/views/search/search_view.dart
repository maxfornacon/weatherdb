import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:weather/ui/views/search/search_viewmodel.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
      viewModelBuilder: () => SearchViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Search'),
          ),
          body: _body(model: model),
        );
      },
    );
  }

  Widget _body({required SearchViewModel model}) {
    return const Center(
      child: Text('Search'),
    );
  }
}
