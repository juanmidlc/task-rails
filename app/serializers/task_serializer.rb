class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :color, :expires_at, :start_at

  belongs_to :category, serializer: CategorySerializer
end
