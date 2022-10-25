defmodule CardGameAlpha.Player do
  @enforce_keys [:id, :name]
  defstruct [:id, :name]

  alias CardGameAlpha.Player

  def new(name) do
    %Player{id: SecureRandom.hex(), name: name}
  end
end
