class BookSerializer
    include FastJsonapi::ObjectSerializer
    # belongs_to :category
    attributes :title, :image_url, :likes, :remarks, :category_id
end