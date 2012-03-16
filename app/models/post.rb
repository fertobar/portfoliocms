class Post < ActiveRecord::Base
  belongs_to :section
  belongs_to :post_format

  has_attached_file :paperclip_asset, :styles => { :medium => "300x200>" }

  attr_accessor :delete_paperclip_asset

  validates :section, presence: true
  validates :post_format, presence: true
  validates :text, presence: true
  before_validation { self.paperclip_asset = nil if self.delete_paperclip_asset == '1' }

  scope :normal, joins(:post_format).where('post_formats.name = ?', 'Normal')
  scope :item, joins(:post_format).where('post_formats.name = ?', 'Item')

end
