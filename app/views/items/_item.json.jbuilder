json.extract! item, :id, :type, :title, :subtitle, :writer, :created_by, :date, :content, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
