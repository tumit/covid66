defmodule CovidWeb.VirusController do
    use CovidWeb, :controller
    alias Covid.Service
    alias Covid.Virus.Entity
    alias Covid.Repo

    def index(conn, _params) do
        viruses = Service.list_viruses
        changeset = Entity.changeset(%Entity{}, %{}) 
        render(conn, "index.html", viruses: viruses, changeset: changeset)
    end

    def show(conn, %{"code" => code}) do
        virus = Service.get_virus_by_code(code)
        render(conn, "show.html", virus: virus)
    end


    def create(conn, %{"entity" => entity_params}) do
        %Entity{}
        |> Entity.changeset(entity_params)
        |> Repo.insert
        |> case do
            {:ok, virus} ->
                conn
                |> put_flash(:info, "Virus created successfully.")
                |> redirect(to: Routes.virus_path(conn, :index))
            {:error, %Ecto.Changeset{} = changeset} ->
                render(conn, "index.html", changeset: changeset)
            end
    end
end