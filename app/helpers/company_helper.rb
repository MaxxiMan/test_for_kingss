# frozen_string_literal: true

module CompanyHelper
  def company_tags(company)
    company.tags.map(&:name).join(', ')
  end
end
