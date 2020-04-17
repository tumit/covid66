defmodule CovidWeb.VirusView do
    use CovidWeb, :view
    alias Covid.Virus.Entity

    def covid_19 do
        "COVID"
    end

    def upper_case_name(%Entity{name: name}) do
        name
            |> String.replace(" ", "")
            |> String.upcase
    end
end