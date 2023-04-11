defmodule TTT.BoardTurnPlayer1 do
  def put(board, {col, row}, val) do
    put(board, col, row, val)
  end

  def put(board, col, row, val), do: Map.put(board, {col, row}, val)

  def fill(board, list, which) do
    Enum.reduce(list, board, fn point, acc -> put(acc, point, which) end)
  end

  def fill_board(board, "1\n") do
    x = [{1, 1}]

    board
    |> fill(x, "X")
    |> TTT.print()
  end

  def fill_board(board, "2\n") do
    x = [{2, 1}]

    board
    |> fill(x, "X")
    |> TTT.print()
  end

  def fill_board(board, "3\n") do
    x = [{3, 1}]

    board
    |> fill(x, "X")
    |> TTT.print()
  end

  def fill_board(board, "4\n") do
    x = [{1, 2}]

    board
    |> fill(x, "X")
    |> TTT.print()
  end

  def fill_board(board, "5\n") do
    x = [{2, 2}]

    board
    |> fill(x, "X")
    |> TTT.print()
  end

  def fill_board(board, "6\n") do
    x = [{3, 2}]

    board
    |> fill(x, "X")
    |> TTT.print()
  end

  def fill_board(board, "7\n") do
    x = [{1, 3}]

    board
    |> fill(x, "X")
    |> TTT.print()
  end

  def fill_board(board, "8\n") do
    x = [{2, 3}]

    board
    |> fill(x, "X")
    |> TTT.print()
  end

  def fill_board(board, "9\n") do
    x = [{3, 3}]

    board
    |> fill(x, "X")
    |> TTT.print()
  end
end
