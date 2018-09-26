module TechnicalTest; end

Dir[File.dirname(__FILE__) + '/technical_test/*.rb'].each { |file| require file }
