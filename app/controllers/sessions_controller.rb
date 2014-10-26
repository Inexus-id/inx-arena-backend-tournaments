module Api
  class SessionsController < Api::BaseApiController

    def login
      authenticate_or_request_with_http_basic do |email, password|
        restrict_access(email, password) ? login_suceeded : login_not_succeded
      end
    end

    private

    def login_succeded
      render :json => {
        :status => :ok,
        :user => @resource.to_builder
      }
    end

    def login_not_succeded
      render :json => {
        :status => 401,
        :error => "Not authorized\n"
      }.to_json, :status => 401
    end
  end
end
