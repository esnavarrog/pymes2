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

    fill_in "Address", with: @product.address
    fill_in "Articles", with: @product.articles_id
    fill_in "Body", with: @product.body
    fill_in "Email", with: @product.email
    fill_in "Facebook", with: @product.facebook
    fill_in "Horaa", with: @product.horaA
    fill_in "Horac", with: @product.horaC
    fill_in "Img", with: @product.img
    fill_in "Info", with: @product.info
    fill_in "Mina", with: @product.minA
    fill_in "Minc", with: @product.minC
    fill_in "Phone", with: @product.phone
    fill_in "Tiempoespera", with: @product.tiempoEspera
    fill_in "Title", with: @product.title
    fill_in "Twitter", with: @product.twitter
    check "View" if @product.view
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Address", with: @product.address
    fill_in "Articles", with: @product.articles_id
    fill_in "Body", with: @product.body
    fill_in "Email", with: @product.email
    fill_in "Facebook", with: @product.facebook
    fill_in "Horaa", with: @product.horaA
    fill_in "Horac", with: @product.horaC
    fill_in "Img", with: @product.img
    fill_in "Info", with: @product.info
    fill_in "Mina", with: @product.minA
    fill_in "Minc", with: @product.minC
    fill_in "Phone", with: @product.phone
    fill_in "Tiempoespera", with: @product.tiempoEspera
    fill_in "Title", with: @product.title
    fill_in "Twitter", with: @product.twitter
    check "View" if @product.view
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
