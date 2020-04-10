defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do

    rna = dna 
          
          |> Enum.map(fn x -> conv(x) end)

    rna

  end

  def conv(?G) do
     ?C
  end

  def conv(?C) do
     ?G
  end

  def conv(?T) do
     ?A
  end

  def conv(?A) do
     ?U
  end

  def conv(other) do 
    IO.inspect(other)
  end
end