class Competition < ActiveRecord::Base
	validates :name, :pointsflag, :setsflag, :mvpflag, presence: true
	validates :name, uniqueness: {case_sensitive: false}
	has_many :divisions
end
