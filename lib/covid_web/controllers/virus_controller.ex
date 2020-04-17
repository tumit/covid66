defmodule CovidWeb.VirusController do
    use CovidWeb, :controller
    alias Covid.Service

    def index(conn, _params) do
        viruses = Service.list_viruses
        render(conn, "index.html", viruses: viruses)
    end

    def show(conn, %{"code" => code}) do
        virus = Service.get_virus_by_code(code)
        render(conn, "show.html", virus: virus)
    end

end