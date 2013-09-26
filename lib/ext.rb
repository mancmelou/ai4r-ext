module Ai4r                                                                                            
  module Data                                                                                          
    module Proximity                                                                                   
      # Cosine similarity is a measure of similarity between two vectors                               
      # of an inner product space that measures the cosine of the                                      
      # angle between them (http://en.wikipedia.org/wiki/Cosine_similarity).                           
      #                                                                                                
      # Parameters a and b are vectors with continuous attributes.                                     
      #                                                                                                
      # D = sum(a[i] * b[i]) / sqrt(sum(a[i]**2)) * sqrt(sum(b[i]**2))                                 
      def self.cosine_distance(a,b)                                                                    
        dot_product = 0.0                                                                              
        norm_a = 0.0                                                                                   
        norm_b = 0.0                                                                                   
        magnitude = 0.0                                                                                
                                                                                                       
        a.each_index do |i|                                                                            
          dot_product += a[i] * b[i]                                                                   
          norm_a += a[i] ** 2                                                                          
          norm_b += b[i] ** 2                                                                          
        end                                                                                            
                                                                                                       
        magnitude = Math.sqrt(norm_a) * Math.sqrt(norm_b)                                              
        dot_product / magnitude                                                                        
      end                                                                                              
    end                                                                                                
  end                                                                                                  
end 
