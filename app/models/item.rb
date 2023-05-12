class Item < ApplicationRecord
  def message
    if name.present?
      "Item name is #{name}"
    else
      "Item name is empty."
    end
  end

  def check
    is_rails_testing_env = Rails.env.test? ? true : false
    puts "This is just one long line to make Rubocop fail. Nothing Else" if is_rails_testing_env && Item.count > 1 && Item.count < 10
  end
end
