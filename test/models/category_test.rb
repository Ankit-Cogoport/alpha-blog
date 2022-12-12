require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
    def setup
        @category = Category.new(name: "Sports")
    end

    test "category should be valid" do 
        assert @category.valid?
    end

    test "name should be present" do 
        @category.name= " "
        assert_not @category.valid?
    end

    test "name should be unique" do 
        @category.save
        @category_new = Category.new(name: "Sports")
        assert_not @category_new.valid?
    end

    test "name should not be too long" do 
        @category.name="ahjdkcngfjfygjhjgghbgvvhhbbhvhbhbbhbkbh"
        assert_not @category.valid?
    end

    test "name should not be too short" do 
        @category.name="New"
        assert_not @category.valid?
    end
end