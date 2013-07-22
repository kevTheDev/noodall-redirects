require 'noodall/editable_rewrite_helper'

module Noodall

  class EditableRewrite < Rack::Rewrite
  
    include ::EditableRewriteHelper
  
    def call(env)
      request_path = build_path_from_env(env)
    
      unless asset_request?(request_path) # don't redirect for asset requests
        if matched_rule = RewriteRule.find_by_from(request_path)
          rack_response = matched_rule.apply!(env)
          # Don't invoke the app if applying the rule returns a rack response
          return rack_response unless rack_response === true
        end
      end

      @app.call(env)
    end

    # Construct the URL (without domain) from PATH_INFO and QUERY_STRING
    def build_path_from_env(env)
      path = env['PATH_INFO']
      path += "?#{env['QUERY_STRING']}" unless env['QUERY_STRING'].nil? || env['QUERY_STRING'].empty?
      path
    end
  
  end

end