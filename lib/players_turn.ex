defmodule TTT.PlayersTurn do
  def player_1_turn(board) do
    player_choice = IO.gets("Press the number where you want to put X: ")
    replace_symbol(board, player_choice)
  end

  def replace_symbol(board, player_choice) do
    TTT.BoardTurnPlayer1.fill_board(board, player_choice)
  end
end
