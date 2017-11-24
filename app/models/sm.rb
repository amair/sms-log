class Sm < ApplicationRecord
    
    validates_presence_of :mobile, :content, :username, :timestamp, :digest
    
end
