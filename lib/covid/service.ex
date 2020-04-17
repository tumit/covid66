defmodule Covid.Service do
    alias Covid.Virus.Bean

    def list_viruses do
        [
            %Bean{code: "001", name: "covid 19"},
            %Bean{code: "002", name: "covid 20"},
            %Bean{code: "003", name: "covid 21"}
        ]
    end

    def get_virus_by_code(code) do
        viruses = list_viruses
        Enum.find(viruses, fn v -> v.code == code end)
    end
end