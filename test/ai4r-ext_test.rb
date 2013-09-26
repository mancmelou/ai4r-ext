# Author::    Vladimir Ivic
# License::   MPL 1.1
# Project::   ai4r
# Url::       http://www.ai4r.org/
#
# You can redistribute it and/or modify it under the terms of 
# the Mozilla Public License version 1.1  as published by the 
# Mozilla Foundation at http://www.mozilla.org/MPL/MPL-1.1.txt

require 'test/unit'
require 'ai4r-ext'

module Ai4r
  module Data
    class ProximityTest < Test::Unit::TestCase
          
      @@delta = 0.0001    
      @@data1 = [rand*10, rand*10, rand*-10]
      @@data2 = [rand*10, rand*-10, rand*10]
      
      def test_cosine_distance
          assert_equal 0, Proximity.cosine_distance(@@data1, @@data1)
          assert_equal  Proximity.cosine_distance(@@data1, @@data2), 
                        Proximity.cosine_distance(@@data2, @@data1)
          assert 1 == Proximity.cosine_distance(@@data1, @@data1)
          assert_equal 1, Proximity.cosine_distance([3,0], [4,0])
      end
    end
  end
end
