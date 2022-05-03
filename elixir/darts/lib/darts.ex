defmodule Darts do
  @type position :: {number, number}



  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    landed_at = landing_spot({x,y})

    cond do
      landed_at > 10 -> 0
      landed_at > 5 -> 1
      landed_at > 1 -> 5
      true -> 10
    end
  end


  defp landing_spot({x, y}) do
    :math.sqrt(x*x + y*y)
  end
end
