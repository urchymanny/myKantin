json.extract! dish, :id, :title, :description, :price, :image, :created_at, :updated_at
json.url dish_url(dish, format: :json)
