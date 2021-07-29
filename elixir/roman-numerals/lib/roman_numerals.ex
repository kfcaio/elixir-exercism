defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    m = ["", "M", "MM", "MMM"]
    c = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
    x = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
    i = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]

    thousands = Enum.at(m, Integer.floor_div(number, 1000))
    hundreds = Enum.at(c, Integer.floor_div(Integer.mod(number, 1000), 100))
    tens = Enum.at(x, Integer.floor_div(Integer.mod(number, 100), 10))
    ones = Enum.at(i, Integer.mod(number, 10))

    thousands <> hundreds <> tens <> ones
  end
end
