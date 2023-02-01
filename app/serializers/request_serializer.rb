class RequestSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :age, :gender, :date_of_birth, :height, :weight, :about, :motivation, :user_id
end
