defmodule Covid.Virus.Entity do
    # defstruct [:code, :name, :description]
    use Ecto.Schema
    import Ecto.Changeset    
    alias Covid.Virus.Entity

    schema "viruses" do
        field :code, :string
        field :name, :string
        field :description, :string

        timestamps()
    end

    @doc false
    def changeset(%Entity{} = virus, attrs) do
        virus
        |> cast(attrs, [:code, :name, :description])
    end
end
