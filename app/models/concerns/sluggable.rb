module Sluggable
  extend ActiveSupport::Concern

  included do
    before_validation :generate_slug
  end

  def generate_slug
    if self.title.present?
      self.slug = self.title.parameterize
      if self.class.where( slug: self.slug ).where.not( id: self.id ).exists?
        self.slug = self.slug + "-" + SecureRandom.hex(3)
      end
    end
  end

  def to_param
    self.slug
  end
end
