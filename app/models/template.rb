class Template < ActiveRecord::Base
  has_many :replacements

  before_destroy :ensure_not_referenced

  private

  def ensure_not_referenced
    if replacements.empty?
      return true
    else
      errors.add(:base, 'Replacement present')
      return false
    end
  end

end
