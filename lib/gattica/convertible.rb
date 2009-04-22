module Gattica
  
  # Common output methods that are sharable
  
  module Convertible
    
    # output as hash
    def to_h
      output = {}
      instance_variables.each do |var|
        output.merge!({ var[1..-1] => instance_variable_get(var) }) unless var == '@xml'    # exclude the whole XML dump
      end
      output
    end
    
    # output nice inspect syntax
    def to_s
      to_h.inspect
    end
    
    alias inspect to_s
    
    def to_query
      to_h.to_query
    end
    
  end
end