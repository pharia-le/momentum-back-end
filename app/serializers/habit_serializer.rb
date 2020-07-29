class HabitSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :created_at, :logs
end
