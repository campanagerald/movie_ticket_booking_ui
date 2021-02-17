import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants.dart';
import '../../providers.dart';
import 'widgets/movie_list.dart';

class HomePage extends StatelessWidget {
  Widget _appBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Hi, Gerald Campana',
        style: Theme.of(context).textTheme.headline6.copyWith(
              color: kSecondaryTextColor.shade400,
            ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        Container(
          margin: EdgeInsets.only(top: 10, right: kDefaultPadding),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'),
            radius: 22,
          ),
        ),
      ],
    );
  }

  Text _headerText(BuildContext context) {
    return Text(
      'Select Your\nMovie',
      style: Theme.of(context).textTheme.headline2.copyWith(
            color: kPrimaryTextColor,
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headerText(context),
          SizedBox(height: 15),
          Expanded(
            child: Consumer(
              builder: (context, watch, child) {
                final state = watch(moviePageControllerProvider.state);

                return state.when(
                  initial: () => SizedBox.shrink(),
                  loading: () => Center(child: CircularProgressIndicator()),
                  loaded: (movies) => MovieList(movies: movies),
                  error: (error) => Center(
                    child: Text(error),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        appBar: _appBar(context),
        body: _body(context),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 50, vertical: kDefaultPadding),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BottomNavigationBar(
              selectedFontSize: 0,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.blue),
                  label: '',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.stairs, color: Colors.grey), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search, color: Colors.grey), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.assignment, color: Colors.grey), label: '')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
