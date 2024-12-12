defmodule Phoenixcountup do
  def component do
    quote do
      use Phoenix.Component

      # import Phoenixcountup.Helpers

      # alias OrangeCmsWeb.Components.LadUI.LadJS
      alias Phoenix.LiveView.JS

      defp classes(input) do
        TwMerge.merge(input)
      end
    end
  end

  @doc """
  When used, dispatch to the appropriate macro.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end

  defmacro __using__(_) do
    quote do
      import Phoenixcountup.Countup
    end
  end
end
