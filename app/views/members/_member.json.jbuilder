json.extract! member, :id, :name, :rank, :bio, :image, :created_at, :updated_at
json.url member_url(member, format: :json)
json.image url_for(member.image)
