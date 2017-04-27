class Meal < ApplicationRecord
  belongs_to :user
  has_many :foods, dependent: :destroy
  accepts_nested_attributes_for :foods,
    allow_destroy: true, reject_if: lambda {|attr| attr[:name].blank? or attr[:cals].blank? or attr[:sugar].blank? or attr[:protein].blank? or attr[:fat].blank? or attr[:carb].blank?}
end
