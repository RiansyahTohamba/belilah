ActiveAdmin.register Purchase,namespace: :customers  do
  actions :index, :destroy, :show
  scope_to :current_user
  controller do
    def resource
       Order.new.detail_for_admin(current_user.id,params[:id])
    end
  end
  index do
    id_column
    column :amount , :sortable => :amount do |cur|
            number_to_currency cur.amount
    end
    column :card
    column :created_at
    column :updated_at
    actions
  end
end
ActiveAdmin.register Purchase,namespace: :admin  do
  index do
    id_column
    column :amount , :sortable => :amount do |cur|
            number_to_currency cur.amount
    end
    column :card
    column :created_at
    column :updated_at
    actions
  end
end