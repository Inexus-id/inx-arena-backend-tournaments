module Api
  class BaseApiController < ApplicationController
    respond_to :json
    before_filter :check_auth


    def check_auth
      authenticate_or_request_with_http_basic do |username, password|
        @resource = User.find_by_email(username)
        if @resource.valid_password?(password)
          sign_in :user, @resource
        end
      end
    end

    def set_locale
      I18n.locale = :en #all the api calls sould use 'en' locales.
    end
  end
end
