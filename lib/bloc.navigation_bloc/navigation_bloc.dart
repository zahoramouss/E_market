import 'package:bloc/bloc.dart';

import 'package:emarket/screen/bottmbar.dart';
import '../screen/28.dart';
import '../screen/aboutus.dart';
// import '../screen/FAQs.dart';

enum NavigationEvents {
  BottomNavBarClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
  FAQsClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc() : super(/*Home*/ BottomNavBar());

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.BottomNavBarClickedEvent:
        yield BottomNavBar();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield AboutUs();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield MyOrdersPage();
        break;
      case NavigationEvents.FAQsClickedEvent:
        // yield FAQs();
        break;
    }
  }
}
