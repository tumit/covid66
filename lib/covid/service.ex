defmodule Covid.Service do
    alias Covid.Virus.Entity
    alias Covid.Repo

    def list_viruses do
        Entity |> Repo.all
        # [
        #     %Bean{code: "001", name: "covid 19"},
        #     %Bean{code: "002", name: "covid 20"},
        #     %Bean{code: "003", name: "covid 21"}
        # ]
    end

    def get_virus_by_code(code) do
        Entity |> Repo.get_by(code: code)
    end
end