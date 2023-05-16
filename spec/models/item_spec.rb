require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "Attributes" do
    subject { Item.column_names }

    it { is_expected.to include "name" }
  end

  describe "Methods" do
    describe "#message" do
      it "returns a valid message" do
        item = Item.create(name: 'iPhone')
        expect(item.message).to eq "Item name is iPhone"
      end

      it "returns a valid message second way" do
        item = Item.create(name: 'iPhone 12348989483948394893849389483989283048203840283048209389402839048209384092830948209348902898402938042893048209348')
        expect(item.message).not_to eq ""
      end
    end
  end
end