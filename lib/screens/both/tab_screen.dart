import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/widgets/homeworks/add_homework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:edulb/domain/user_data.dart';
import 'package:edulb/screens/both/homework_screen.dart';
import 'package:edulb/screens/students/exams_screen.dart';
import 'package:edulb/widgets/core/user_bloc_get_user_data.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs-screen';
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  String gradeId;
  List _pages;
  bool hasInit = false;
  UserData userData;
  @override
  void didChangeDependencies() {
    if (hasInit == false) {
      userData = context.bloc<AuthBloc>().state.getUserData();

      gradeId = ModalRoute.of(context).settings.arguments;
      _pages = [
        HomeworkScreen(gradeId),
        ExamsScreen(),
      ];
      hasInit = true;
    }
    super.didChangeDependencies();
  }

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(
      () {
        _selectedPageIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_selectedPageIndex == 0 ? 'Homeworks' : 'Exams'),
      //   actions: [
      //     if (_selectedPageIndex == 0)
      //       IconButton(
      //         icon: Icon(Icons.add),
      //         onPressed: () => CustomBuilders.showResponsiveBottomSheet(
      //           context: context,
      //           child: AddHomework(gradeId),
      //         ),
      //       ),
      //   ],
      // ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(
              Icons.library_books,
            ),
            title: Text(
              'Homeworks',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
            ),
            title: Text(
              'Exams',
            ),
          ),
        ],
      ),
      floatingActionButton: _selectedPageIndex == 0
          ? FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => CustomBuilders.showResponsiveBottomSheet(
                context: context,
                child: AddHomework(gradeId),
              ),
            )
          : Container(),
    );
  }
}
