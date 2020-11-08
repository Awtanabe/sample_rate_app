class ApplicationController < ActionController::Base

  def customeerrror

    render template: "errors/customeerrror"
  end
end
