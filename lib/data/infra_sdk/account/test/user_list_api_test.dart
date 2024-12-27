import 'package:test/test.dart';
import 'package:account_sdk/account_sdk.dart';


/// tests for UserListApi
void main() {
  final instance = AccountSdk().getUserListApi();

  group(UserListApi, () {
    // Add an item to a user's list
    //
    //Future<ListItemInfo> listItemControllerAddItemToList(AddListItemDTO addListItemDTO) async
    test('test listItemControllerAddItemToList', () async {
      // TODO
    });

    // Get all list items for the current user
    //
    //Future listItemControllerGetUserList() async
    test('test listItemControllerGetUserList', () async {
      // TODO
    });

    // Remove an item from a user's list
    //
    //Future listItemControllerRemoveItemFromList(num itemId) async
    test('test listItemControllerRemoveItemFromList', () async {
      // TODO
    });

  });
}
