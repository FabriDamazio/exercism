defmodule TakeANumber do
  def start() do
    spawn(fn ->
      receive_loop()
    end)
  end

  def receive_loop, do: receive_loop(0)

  def receive_loop(state) do
    receive do
      {:report_state, sender_pid} ->
        send(sender_pid, state)
        receive_loop(state)

      {:take_a_number, sender_pid} ->
        new_state = state + 1
        send(sender_pid, new_state)
        receive_loop(new_state)

      :stop -> nil

      _ ->
        receive_loop(state)
    end
  end
end
