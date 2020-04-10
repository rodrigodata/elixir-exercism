defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
              |> String.downcase
              |> String.replace(~r/[,.:"@£$%^&*!]/, "")
              |> String.split(~r/[ _]+/, trim: true)
              |> Enum.reduce(%{}, &process_word/2)
  end

  def process_word(word_list, map) do 
        Map.update(map, word_list, 1, &(&1 + 1))
  end
end