module Api
  class BaseApiController < ApplicationController
    respond_to :json
    before_filter :restrict_access # you can use @resource in the others controllers.
    skip_before_filter :authenticate_user! #skip devise auth in all api calls.

    private

    def restrict_access
      authenticate_or_request_with_http_basic do |email, password|
        valid_resources?(email, password)
      end
    end

    def resource(email)
      @resource =|| User.find_by(email: email)
    end

    def valid_resources?(email, password)
      @resource.try(:valid_password?, password)
    end

    def set_locale
      I18n.locale = :en #all the api calls sould use 'en' locales.
    end
  end
end
