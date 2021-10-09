// Import the test package and Counter class
import 'package:m_constructions/domain/item_list/product_model.dart';
import 'package:m_constructions/utils/validate_email.dart';
import 'package:test/test.dart';

void main() {
  test('item object must be converted into valid json file', () {
    final itemDTO = Item(id: "1", quantity: 12, title: "title");

    var result = itemDTO.toJson();

    expect(result, {"id": "1", "quantity": 12, "title": "title"});
  });
}
