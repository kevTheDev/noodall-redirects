module Noodall

  class RewriteRule < Rack::Rewrite::Rule
    include MongoMapper::Document

    key :rule_type, Symbol
    key :from, String, required: true, index: true
    key :to, String, required: true
    key :options, Hash

    validates :rule_type, inclusion: { in: [:r301, :r302] }

    def convert_rule_type_to_symbol
      self.rule_type = rule_type.to_sym if rule_type.is_a? String
    end
    before_validation :convert_rule_type_to_symbol

  end

end