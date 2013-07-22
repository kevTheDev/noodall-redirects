require 'rack/rewrite'
require 'noodall/redirects/engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3
require_relative 'noodall/editable_rewrite'