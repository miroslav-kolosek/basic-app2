class UserTest < ActiveSupport::TestCase
  test 'valid item' do
    item = Item.create(name: 'iPhone')
    assert item.valid?
  end

  test 'message is valid' do
    item = Item.create(name: 'iPhone')
    assert item.message == "Item name is iPhone"
  end

  test 'empty name message' do
    item = Item.create
    assert item.message == "Item name is empty."
  end

  test 'another test' do
    item = Item.create
    assert item.message == "Item name is empty."
  end
end