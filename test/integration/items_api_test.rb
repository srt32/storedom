require 'pry'
require 'test_helper'

class ItemsAPITest < ActionDispatch::IntegrationTest

  def test_it_gets_a_list_of_one_item
    Item.create(:name => "mondo robot")
    get "/api/v1/items"
    assert_equal 200, response.status

    body = JSON.parse(response.body)
    items = body["items"]

    names = items.map { |item| item["name"] }

    assert_equal ["mondo robot"], names
  end

end
