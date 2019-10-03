class Noun < ApplicationRecord
  enum gender: %i[male female]
end
