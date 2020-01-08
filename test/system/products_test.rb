require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Area", with: @product.area_id
    fill_in "Close date", with: @product.close_date
    fill_in "Company", with: @product.company_id
    fill_in "Description", with: @product.description
    fill_in "Industry", with: @product.industry_id
    fill_in "Name", with: @product.name
    fill_in "Open date", with: @product.open_date
    fill_in "State", with: @product.state
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Area", with: @product.area_id
    fill_in "Close date", with: @product.close_date
    fill_in "Company", with: @product.company_id
    fill_in "Description", with: @product.description
    fill_in "Industry", with: @product.industry_id
    fill_in "Name", with: @product.name
    fill_in "Open date", with: @product.open_date
    fill_in "State", with: @product.state
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
