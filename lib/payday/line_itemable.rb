# Include this module into your line item implementation to make sure that Payday stays happy
# with it, or just make sure that your line item implements the amount method.
module Payday::LineItemable
  # Returns the total amount for this {LineItemable}, or +price * quantity+
  def amount
    price * quantity
  end

  def amount_tax
    price * quantity * (1 + ( tax? ? tax : 0))
  end

  def tax_percent
    "#{(tax * 100).to_s}%"
  end

end
