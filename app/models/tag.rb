# frozen_string_literal: true

class Tag < ApplicationRecord
  has_many :tag_companies
  has_many :companies, through: :tag_companies
end
