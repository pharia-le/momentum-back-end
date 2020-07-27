class LogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :done, :date
end
