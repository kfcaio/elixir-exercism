defmodule HelloWorld do
  @moduledoc """
  Módulo _supimpa_ para **testar** docs

  ## Exemplo
    iex> o que rodar aqui?
    :nao_sei
  
  ## Mais um exemplo
    ...
  """

  @doc """
  Simply returns "Hello, World!"
  """
  @spec hello :: String.t()
  def hello do
    "Hello, World!"
  end
end
