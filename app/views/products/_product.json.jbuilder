json.extract! product, :id, :title, :view, :body, :img, :phone, :email, :address, :facebook, :twitter, :articles_id, :info, :horaA, :minA, :horaC, :minC, :tiempoEspera, :created_at, :updated_at
json.url product_url(product, format: :json)
