lass BookSerializer
  include FastJsonapi::ObjectSerializer

  attributes :title, :image_url, :likes, :remarks, :category_id
  
end