class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :monster_id
end
