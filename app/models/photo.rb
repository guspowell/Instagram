class Photo < ActiveRecord::Base

  # has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  # has_attached_file :image,
  #   styles: {
  #     thumbnail: '200x200^',
  #     preview: '800x800^'
  #   },
  #   convert_options: {
  #     thumbnail: " -gravity center -crop '200x200+0+0'",
  #     preview: " -gravity center -crop '800x800+0+0'"
  #   },
  # default_url: "/images/:style/missing.png"

  belongs_to :user
  has_many :endorsements

  has_attached_file :image,
      styles: {
        :thumb => '500x500^',
        :preview => '800x800^'
      },
      convert_options: {
        :thumb => " -gravity center -crop '200x200+0+0'",
        :preview => " -gravity center -crop '800x800+0+0'"
      }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
