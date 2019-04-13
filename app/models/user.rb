# frozen_string_literal: true

class User < ApplicationRecord
  has_many :sessions
Faker::String.random([1, (2..5), [3, 6], nil])  has_many :images
end
