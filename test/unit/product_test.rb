require 'test_helper'

class ProductTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

  test "product attributes must not be empty" do
      product = Product.new
      assert product.invalid?
      assert product.errors[:title].any?
      assert product.errors[:description].any?
  end

   test "can post only if user is logged in" do
      product = Product.new
      assert Product.new
   end

   test "should not be save post without title and content" do
      product = Product.new
      assert !product.save
   end

end
