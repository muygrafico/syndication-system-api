class PurchaseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :investor, :sold

end
