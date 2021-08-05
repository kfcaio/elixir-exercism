defmodule Bob do
  @spec hey(String.t()) :: String.t()
  def hey(input) do
    new_input = String.trim(input)

    cond do
      String.ends_with?(new_input, "?") and not is_uppercase?(input) ->
        "Sure."

      String.ends_with?(new_input, "?") and is_uppercase?(input) ->
        "Calm down, I know what I'm doing!"

      String.trim(new_input) == "" ->
        "Fine. Be that way!"

      is_uppercase?(new_input) and not String.ends_with?(input, "?") ->
        "Whoa, chill out!"

      new_input ->
        "Whatever."
    end
  end

  defp is_uppercase?(input) do
    letters = Enum.filter(String.graphemes(input), &String.match?(&1, ~r"\p{L}"))

    if letters == [] do
      false
    else
      Enum.all?(letters, &String.match?(&1, ~r"\p{Lu}"))
    end
  end
end
