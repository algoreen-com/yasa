class Country < ActiveRecord::Base
has_many :addresses, dependent: :destroy
end
