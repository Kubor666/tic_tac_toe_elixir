defmodule TTT do
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
    one = [{1, 1}]
    two = [{2, 1}]
    three = [{3, 1}]
    four = [{1, 2}]
    five = [{2, 2}]
    six = [{3, 2}]
    seven = [{1, 3}]
    eight = [{2, 3}]
    nine = [{3, 3}]

    board_map =
      board
      |> fill(one, "1")
      |> fill(two, "2")
      |> fill(three, "3")
      |> fill(four, "4")
      |> fill(five, "5")
      |> fill(six, "6")
      |> fill(seven, "7")
      |> fill(eight, "8")
      |> fill(nine, "9")

    print(board_map)
    TTT.PlayersTurn.player_1_turn(board_map)
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
  end
end
