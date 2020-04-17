defmodule CovidWeb.VirusView do
    use CovidWeb, :view
    alias Covid.Virus.Bean

    def covid_19 do
        "COVID"
    end

    def upper_case_name(%Bean{name: name}) do
        name
            |> String.replace(" ", "")
            |> String.upcase
    end
end