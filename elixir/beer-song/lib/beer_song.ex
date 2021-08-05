defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t()
  def verse(number) do
    cond do
      1 < number and number < 100 ->
        "#{number}" <>
          " bottles of beer on the wall, " <>
          "#{number} bottles of beer." <>
          "\nTake one down and pass it around, " <>
          if number > 2,
            do: "#{number - 1} bottles of beer on the wall.\n",
            else: "1 bottle of beer on the wall.\n"

      number == 1 ->
        "1 bottle of beer on the wall, 1 bottle of beer." <>
          "\nTake it down and pass it around, no more bottles of beer on the wall.\n"

      number == 0 ->
        "No more bottles of beer on the wall, no more bottles of beer." <>
          "\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t()) :: String.t()
  def lyrics(range) do
    Enum.map_join(
      range,
      "\n",
      &verse(&1)
    )
  end

  @spec lyrics :: String.t()
  def lyrics() do
    lyrics(99..0)
  end
end
