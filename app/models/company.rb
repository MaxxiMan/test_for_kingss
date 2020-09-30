# frozen_string_literal: true

class Company < ApplicationRecord
  has_many :tag_companies
  has_many :tags, through: :tag_companies
  has_many :contacts

  scope :with_contacts_for, lambda { |user_id|
                              joins("LEFT OUTER JOIN contacts ON contacts.company_id = companies.id AND
                                      contacts.user_id = #{user_id}")
                                .select('companies.*', 'COUNT(contacts.company_id) as count_contacts')
                                .group('companies.id').order('companies.name ASC')
                            }
end
