class Endpoint < ActiveRecord::Base
  attr_accessible :url, :extension, :name
  
  def self.search(search)
    if search
      ActiveSupport::Notifications.instrument("endpoints.search", :search => search)
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
