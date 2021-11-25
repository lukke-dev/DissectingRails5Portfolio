class Portfolio < ApplicationRecord
  include Placeholder
  accepts_nested_attributes_for :technologies, reject_if: ->(attrs) { attrs['name'].blank? }

  has_many :technologies

  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'angular')
  end

  scope :ruby_portfolio_items, -> { where(subtitle: 'ruby') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
