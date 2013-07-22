module EditableRewriteHelper

  def asset_request?(request_path)
    request_path.include?('assets')
  end
  
end