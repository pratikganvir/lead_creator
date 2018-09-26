class ApplicationController < ActionController::Base
  before_action :add_cors_headers

  private

	def add_cors_headers
	  headers['Access-Control-Allow-Origin'] = "*"
	  headers['Access-Control-Allow-Methods'] = 'POST'
	  allow_headers = request.headers["Access-Control-Request-Headers"]
	  if allow_headers.nil?
	    #shouldn't happen, but better be safe
	    allow_headers = 'Origin, Authorization, Accept, Content-Type'
	  end
	  headers['Access-Control-Allow-Headers'] = allow_headers
	  headers['Access-Control-Allow-Credentials'] = 'true'
	  headers['Access-Control-Max-Age'] = '1728000'
	end
end
