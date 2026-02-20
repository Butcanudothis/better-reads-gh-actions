module Sluggable
  extend ActiveSupport::Concern

  included do
    before_validation :generate_slug
  end

  def generate_slug
    return unless title.present?

    self.slug = title.parameterize
    return unless self.class.where( slug: slug ).where.not( id: id ).exists?

    self.slug = slug + '-' + SecureRandom.hex( 3 )
  end

  def to_param
    slug
  end
end
