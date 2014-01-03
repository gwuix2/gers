class Archive < ActiveRecord::Base
  before_save :mydate

  def mydate
  	if self.adate.nil?
  		self.adate = Time.now
  	end
  end
end
