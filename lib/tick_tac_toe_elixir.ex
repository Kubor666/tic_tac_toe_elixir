defmodule Ttt do
  def new_board do
    for col <- 1..3,
        row <- 1..3,
        into: %{},
        do: {{col, row}, " "}
  end

  def put(board, {col, row}, val) do
    put(board, col, row, val)
  end

  def put(board, col, row, val), do: Map.put(board, {col, row}, val)

  def fill(board, list, which) do
    Enum.reduce(list, board, fn point, acc -> put(acc, point, which) end)
  end

  def fill_example_1(board) do
    xs = [{1, 1}, {2, 2}, {3, 3}]
    ys = [{2, 1}, {3, 1}, {1, 2}]

    board
    |> fill(xs, "X")
    |> fill(ys, "O")
  end

  def print(board) do
    for row <- 1..3 do
      for col <- 1..3 do
        " " <> board[{col, row}]
      end
      |> Enum.join(" |")
    end
    |> Enum.join("\n---+---+---\n")
    |> IO.puts()
  end

  def run do
    new_board()
    |> fill_example_1()
    |> print
  end
end
