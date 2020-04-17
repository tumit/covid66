defmodule Covid.Service do
    alias Covid.Virus.Bean
    alias Covid.Repo

    def list_viruses do
        Bean |> Repo.all
        # [
        #     %Bean{code: "001", name: "covid 19"},
        #     %Bean{code: "002", name: "covid 20"},
        #     %Bean{code: "003", name: "covid 21"}
        # ]
    end

    def get_virus_by_code(code) do
        Bean |> Repo.get_by(code: code)
    end
end