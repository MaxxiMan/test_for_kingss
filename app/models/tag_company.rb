# frozen_string_literal: true

class TagCompany < ApplicationRecord
  belongs_to :tag
  belongs_to :company
end
