class Testimonial < ActiveRecord::Base
	mount_uploader :file, FileUploader
end
