defmodule Boxicons do
  @moduledoc """
  Provides precompiled icon compiles from [boxicons.com](boxicons.com).

  ## Usage

  Boxicons come in three styles – regular, solid, and logo.

  By default, the icon components will use the regular style, but the `solid` attributes may be passed to select styling,
  for example:

  ```heex
  <Boxicons.sushi />
  <Boxicons.sushi solid />
  ```

  You can also pass arbitrary HTML attributes to the components:

   ```heex
  <Boxicons.sushi class="w-2 h-2" />
  <Boxicons.sushi solid class="w-2 h-2" />
  ```

  ## Boxicons License Attribution

  The MIT License (MIT)

  Copyright (c) 2015-2021 Aniket Suvarna

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
  """
  use Phoenix.Component

  defp svg(assigns, regular, solid) do
    assigns =
      case assigns do
        %{solid: false} -> assign(assigns, paths: regular)
        %{solid: true} -> assign(assigns, paths: solid)
      end
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="none" viewBox="0 0 24 24" fill="currentColor" {@rest}>
      <%%= {:safe, @paths} %>
    </svg>
    """
  end

  defp svg(assigns, regular) do
    assigns = assign(assigns, paths: regular)
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="none" viewBox="0 0 24 24" fill="currentColor" {@rest}>
      <%%= {:safe, @paths} %>
    </svg>
    """
  end

  <%= for {func, [regular, solid]} <- @icons do %>
  @doc """
  Renders the `<%= func %>` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.<%= func %> />
  <Boxicons.<%= func %> class="w-4 h-4" />
  <Boxicons.<%= func %> solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def <%= func %>(assigns) do
    svg(assigns, ~S|<%= regular %>|, ~S|<%= solid %>|)
  end
  <% end %>

  <%= for {func, [regular]} <- @icons do %>
  @doc """
  Renders the `<%= func %>` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.<%= func %> />
  <Boxicons.<%= func %> class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def <%= func %>(assigns) do
    svg(assigns, ~S|<%= regular %>|)
  end
  <% end %>
end
