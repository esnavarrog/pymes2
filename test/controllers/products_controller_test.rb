require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { address: @product.address, articles_id: @product.articles_id, body: @product.body, email: @product.email, facebook: @product.facebook, horaA: @product.horaA, horaC: @product.horaC, img: @product.img, info: @product.info, minA: @product.minA, minC: @product.minC, phone: @product.phone, tiempoEspera: @product.tiempoEspera, title: @product.title, twitter: @product.twitter, view: @product.view } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { address: @product.address, articles_id: @product.articles_id, body: @product.body, email: @product.email, facebook: @product.facebook, horaA: @product.horaA, horaC: @product.horaC, img: @product.img, info: @product.info, minA: @product.minA, minC: @product.minC, phone: @product.phone, tiempoEspera: @product.tiempoEspera, title: @product.title, twitter: @product.twitter, view: @product.view } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
