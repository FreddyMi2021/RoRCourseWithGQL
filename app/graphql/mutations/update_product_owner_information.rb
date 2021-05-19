class Mutations::UpdateProductOwnerInformation < Mutations::BaseMutation
  argument :id, ID, required: true, default_value: nil
  argument :name, String, required: false, default_value: nil
  argument :email, String, required: false, default_value: nil

  field :product_owner, Types::ProductOwnerType, null: false
  field :errors, [String], null: false

  def resolve(id:, name:, email:)
    product_owner = ProductOwner.find(id)
    if product_owner.update(
      name: name,
      email: email
    )
      {
        product_owner: product_owner,
        errors: []
      }
    else
      {
        product_owner: nil,
        errors: product_owner.errors.full_messages
      }
    end
  end
end
