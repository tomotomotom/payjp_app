class ItemsController < ApplicationController
  def index
    @items = Item.all  # 全商品の情報を取得
  end
end
