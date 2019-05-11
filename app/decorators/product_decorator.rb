module ProductDecorator
  def full_price
    "#{price} #{unit}"
  end

  def link
    link_to full_price, website
  end
end
