defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
        convert(get_number_length(number), number)
  end
  
  def convert(number_length, number) do 
      case number_length do
        1 -> 
          IO.puts "Numero de tamanho #{number_length} para o numero #{number}"
          #map_numerals = %{ 1 => "I", 5 => "V", 10 => "X" }
          map_numerals = %{ "I" => 1, "V" => 5, "X" => 10 }

          Enum.map(map_numerals, fn x ->  
          
          _tmp = Map.get(map_numerals, x)
          IO.puts(x)
          check(Map.get(map_numerals, x) - number, x, number) 
          
          end)
        2 -> IO.puts "Numero de tamanho #{number_length} para o numero #{number}"
        3 -> IO.puts "Numero de tamanho #{number_length} para o numero #{number}"
        4 -> IO.puts "Numero de tamanho #{number_length} para o numero #{number}"
        _ -> IO.puts("I didn't understand. Please, confirm your input and try again.")
      end
  end

  def get_number_length(number) do
      Integer.to_charlist(number) |> length
  end


  def check(number_result, roman_numeral, number) when number_result <= 0 do 
        IO.inspect(roman_numeral)
        IO.inspect(number)
  end

  # def indef() do
  #   %{
  #       I -> 1,
  #       V -> 5,
  #       X -> 10,
  #       L -> 50,
  #       C -> 100,
  #       D -> 500,
  #       M -> 1000 
  #     }
  # end
end

RomanNumerals.numeral(9)
RomanNumerals.numeral(13)
RomanNumerals.numeral(376)
RomanNumerals.numeral(2009)
RomanNumerals.numeral(20088)


#  def convert(number_length, number) do 
#       case number_length do
#         1 -> 
#           IO.puts "Numero de tamanho #{number_length} para o numero #{number}"
#           case rem(10, number) do
#              1 -> IO.inspect("Sobrou 1")
#              5 -> IO.inspect("Sobrou 5")
#              x -> IO.inspect("Sobrou #{x}")
#           end
#         2 -> IO.puts "Numero de tamanho #{number_length} para o numero #{number}"
#         3 -> IO.puts "Numero de tamanho #{number_length} para o numero #{number}"
#         4 -> IO.puts "Numero de tamanho #{number_length} para o numero #{number}"
#         _ -> IO.puts("I didn't understand. Please, confirm your input and try again.")
#       end
#   end