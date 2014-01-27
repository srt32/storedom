class Api::V1::ItemsController < ActionController::Base
  def index
    items = Item.all
    render json: {items: items}
  end
end
