ActiveAdmin.register Order,namespace: :customers do
  scope_to :current_user
  
  permit_params :name, :address, :email, :status
end

ActiveAdmin.register Order,namespace: :admin do
  permit_params :name, :address, :email, :status
end
