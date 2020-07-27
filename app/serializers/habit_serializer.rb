class HabitSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  belongs_to :user
end
