defmodule HighScore do

  @initial_score 0

  def new(), do: %{}

  def add_player(scores, name, score \\ @initial_score) do
    Map.put(scores, name, score)
  end

  def remove_player(scores, name) do
    Map.delete(scores,name)
  end

  def reset_score(scores, name) do
    scores
    |> add_player(name)
  end

  def update_score(scores, name, score) do
    scores
    |> Map.update(
        name,
        score,
        fn cs ->
          cs + score
        end
      )
  end

  def get_players(scores) do
    scores |> Map.keys
  end
end
