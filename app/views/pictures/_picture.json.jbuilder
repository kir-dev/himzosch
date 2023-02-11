json.extract! picture, :id, :name, :img, :created_at, :updated_at
json.url picture_url(picture, format: :json)
json.img url_for(picture.img)
