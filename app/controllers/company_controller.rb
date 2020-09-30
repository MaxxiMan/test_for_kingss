# frozen_string_literal: true

class CompanyController < ApplicationController
  def index
    render file: "#{Rails.root}/public/404", layout: false, status: :not_found if params[:user_id].blank?
    @companies = Company.includes(:tags)
                        .with_contacts_for(params[:user_id])
                        .page(params[:page])
                        .per(params[:per_page])
  end
end
