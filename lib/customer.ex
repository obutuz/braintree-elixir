defmodule Braintree.Customer do
  @type timestamp :: {{integer, integer, integer}, {integer, integer, integer}}

  @type t :: %__MODULE__{
               id:              String.t,
               company:         String.t,
               email:           String.t,
               fax:             String.t,
               first_name:      String.t,
               last_name:       String.t,
               phone:           String.t,
               website:         String.t,
               created_at:      timestamp,
               updated_at:      timestamp,
               addresses:       [],
               credit_cards:    [],
               paypal_accounts: []
             }

  defstruct id:              nil,
            company:         nil,
            email:           nil,
            fax:             nil,
            first_name:      nil,
            last_name:       nil,
            phone:           nil,
            website:         nil,
            created_at:      nil,
            updated_at:      nil,
            addresses:       [],
            credit_cards:    [],
            paypal_accounts: []

  def create(_params \\ :empty) do
    {:ok, %__MODULE__{}}
  end
end