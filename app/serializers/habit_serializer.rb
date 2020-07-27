class HabitSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :created_at
  has_many :logs, serializer: LogSerializer
end
