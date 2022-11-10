defmodule CardGameAlphaWeb.GameStore do
  use Agent

  def start_link(initial_value) do
    Agent.start_link(fn -> initial_value end, name: __MODULE__)
  end

  def echos do
    Agent.get(__MODULE__, & &1)
  end

  def shout(text) do
    Agent.update(__MODULE__, &([&1 | text]))
  end
end
