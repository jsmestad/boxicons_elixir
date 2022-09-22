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
    <svg
      xmlns="http://www.w3.org/2000/svg"
      aria-hidden="true"
      viewBox="0 0 24 24"
      fill="currentColor"
      {@rest}
    >
      <%= {:safe, @paths} %>
    </svg>
    """
  end

  defp svg(assigns, regular) do
    assigns = assign(assigns, paths: regular)

    ~H"""
    <svg
      xmlns="http://www.w3.org/2000/svg"
      aria-hidden="true"
      viewBox="0 0 24 24"
      fill="currentColor"
      {@rest}
    >
      <%= {:safe, @paths} %>
    </svg>
    """
  end

  @doc """
  Renders the `video` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.video />
  <Boxicons.video class="w-4 h-4" />
  <Boxicons.video solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def video(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 7c0-1.103-.897-2-2-2H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-3.333L22 17V7l-4 3.333V7zm-1.998 10H4V7h12l.001 4.999L16 12l.001.001.001 4.999z"/>|,
      ~S|<path d="M18 7c0-1.103-.897-2-2-2H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-3.333L22 17V7l-4 3.333V7z"/>|
    )
  end

  @doc """
  Renders the `error` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.error />
  <Boxicons.error class="w-4 h-4" />
  <Boxicons.error solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def error(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.001 10h2v5h-2zM11 16h2v2h-2z"/><path d="M13.768 4.2C13.42 3.545 12.742 3.138 12 3.138s-1.42.407-1.768 1.063L2.894 18.064a1.986 1.986 0 0 0 .054 1.968A1.984 1.984 0 0 0 4.661 21h14.678c.708 0 1.349-.362 1.714-.968a1.989 1.989 0 0 0 .054-1.968L13.768 4.2zM4.661 19 12 5.137 19.344 19H4.661z"/>|,
      ~S|<path d="M12.884 2.532c-.346-.654-1.422-.654-1.768 0l-9 17A.999.999 0 0 0 3 21h18a.998.998 0 0 0 .883-1.467L12.884 2.532zM13 18h-2v-2h2v2zm-2-4V9h2l.001 5H11z"/>|
    )
  end

  @doc """
  Renders the `barcode` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.barcode />
  <Boxicons.barcode class="w-4 h-4" />
  <Boxicons.barcode solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def barcode(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 4H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2zM4 18V6h16v12z"/><path d="M6 8h2v8H6zm3 0h1v8H9zm8 0h1v8h-1zm-4 0h3v8h-3zm-2 0h1v8h-1z"/>|,
      ~S|<path d="M20 4H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2zM8 17H5V7h3zm2 0H9V7h1zm2 0h-1V7h1zm4 0h-3V7h3zm3 0h-2V7h2z"/>|
    )
  end

  @doc """
  Renders the `dizzy` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dizzy />
  <Boxicons.dizzy class="w-4 h-4" />
  <Boxicons.dizzy solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dizzy(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M10.707 12.293 9.414 11l1.293-1.293-1.414-1.414L8 9.586 6.707 8.293 5.293 9.707 6.586 11l-1.293 1.293 1.414 1.414L8 12.414l1.293 1.293zm6.586-4L16 9.586l-1.293-1.293-1.414 1.414L14.586 11l-1.293 1.293 1.414 1.414L16 12.414l1.293 1.293 1.414-1.414L17.414 11l1.293-1.293zM10 16h4v2h-4z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zM8 12.414l-1.293 1.293-1.414-1.414L6.586 11 5.293 9.707l1.414-1.414L8 9.586l1.293-1.293 1.414 1.414L9.414 11l1.293 1.293-1.414 1.414L8 12.414zM14 18h-4v-2h4v2zm4.707-5.707-1.414 1.414L16 12.414l-1.293 1.293-1.414-1.414L14.586 11l-1.293-1.293 1.414-1.414L16 9.586l1.293-1.293 1.414 1.414L17.414 11l1.293 1.293z"/>|
    )
  end

  @doc """
  Renders the `window_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.window_alt />
  <Boxicons.window_alt class="w-4 h-4" />
  <Boxicons.window_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def window_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zm0 2 .001 4H4V5h16zM4 19v-8h16.001l.001 8H4z"/><path d="M14 6h2v2h-2zm3 0h2v2h-2z"/>|,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zm-3 3h2v2h-2V6zm-3 0h2v2h-2V6zM4 19v-9h16.001l.001 9H4z"/>|
    )
  end

  @doc """
  Renders the `folder_plus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.folder_plus />
  <Boxicons.folder_plus class="w-4 h-4" />
  <Boxicons.folder_plus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def folder_plus(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 9h-2v3H8v2h3v3h2v-3h3v-2h-3z"/><path d="M20 5h-8.586L9.707 3.293A.996.996 0 0 0 9 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2zM4 19V7h16l.002 12H4z"/>|,
      ~S|<path d="M20 5h-9.586L8.707 3.293A.997.997 0 0 0 8 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2zm-4 9h-3v3h-2v-3H8v-2h3V9h2v3h3v2z"/>|
    )
  end

  @doc """
  Renders the `fridge` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.fridge />
  <Boxicons.fridge class="w-4 h-4" />
  <Boxicons.fridge solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def fridge(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 2H6c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 2 .001 5H10V7H8v2H6V4h12zM6 20v-9h2v3h2v-3h8.001l.001 9H6z"/>|,
      ~S|<path d="M18 2H6c-1.103 0-2 .897-2 2v5h4V6h2v3h10V4c0-1.103-.897-2-2-2zm-8 13H8v-5H4v10c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V10H10v5z"/>|
    )
  end

  @doc """
  Renders the `bone` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bone />
  <Boxicons.bone class="w-4 h-4" />
  <Boxicons.bone solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bone(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.049 4.951a3.953 3.953 0 0 0-1.028-1.801c-1.51-1.51-4.146-1.51-5.656 0a4.009 4.009 0 0 0-.618 4.86l-3.714 3.714c-1.505-.89-3.591-.649-4.86.618a4.004 4.004 0 0 0 0 5.657 3.946 3.946 0 0 0 1.8 1.028c.178.681.53 1.302 1.028 1.8A3.966 3.966 0 0 0 8.829 22a3.973 3.973 0 0 0 2.828-1.172 4.007 4.007 0 0 0 .617-4.859l3.714-3.714c1.507.891 3.593.65 4.861-.619a4.003 4.003 0 0 0 0-5.656 3.942 3.942 0 0 0-1.8-1.029zm.387 5.271c-.756.755-2.073.756-2.829 0l-.707-.707-6.363 6.364.707.707a2.003 2.003 0 0 1 0 2.828c-.757.757-2.074.755-2.829 0a1.963 1.963 0 0 1-.571-1.31l-.047-.9-.9-.047a1.972 1.972 0 0 1-1.31-.571 2.003 2.003 0 0 1 0-2.829c.377-.377.879-.585 1.413-.585s1.036.208 1.414.585l.707.707 6.364-6.363-.707-.707a2.003 2.003 0 0 1 0-2.829c.756-.754 2.072-.754 2.828 0 .343.343.546.809.572 1.312l.048.897.897.048c.503.026.969.229 1.312.572.377.378.585.88.585 1.414s-.207 1.036-.584 1.414z"/>|,
      ~S|<path d="M18.852 5.148a3.317 3.317 0 0 0-.96-2.183 3.333 3.333 0 1 0-4.713 4.714l-5.499 5.5a3.333 3.333 0 1 0-4.714 4.713c.606.606 1.39.918 2.183.96.042.793.354 1.576.96 2.183a3.333 3.333 0 1 0 4.713-4.714l5.499-5.499a3.333 3.333 0 1 0 4.714-4.713 3.313 3.313 0 0 0-2.183-.961z"/>|
    )
  end

  @doc """
  Renders the `cloud_rain` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cloud_rain />
  <Boxicons.cloud_rain class="w-4 h-4" />
  <Boxicons.cloud_rain solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cloud_rain(assigns) do
    svg(
      assigns,
      ~S|<path d="M8 13h2v7H8zm3 2h2v7h-2zm3-2h2v7h-2z"/><path d="M18.944 10.113C18.507 6.671 15.56 4.001 12 4.001c-2.756 0-5.15 1.611-6.243 4.15C3.609 8.793 2 10.82 2 13.001c0 2.757 2.243 5 5 5v-2c-1.654 0-3-1.346-3-3 0-1.403 1.199-2.756 2.673-3.015l.581-.103.192-.559C8.149 7.274 9.895 6.001 12 6.001c2.757 0 5 2.243 5 5v1h1c1.103 0 2 .897 2 2s-.897 2-2 2h-1v2h1c2.206 0 4-1.794 4-4a4.008 4.008 0 0 0-3.056-3.888z"/>|,
      ~S|<path d="M18.944 10.112C18.507 6.67 15.56 4 12 4 9.244 4 6.85 5.611 5.757 8.15 3.609 8.792 2 10.82 2 13c0 2.757 2.243 5 5 5h1v3h2v-3h4v3h2v-3h2c2.206 0 4-1.794 4-4a4.01 4.01 0 0 0-3.056-3.888z"/><path d="M11 19h2v3h-2z"/>|
    )
  end

  @doc """
  Renders the `mouse` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.mouse />
  <Boxicons.mouse class="w-4 h-4" />
  <Boxicons.mouse solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def mouse(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.975 22H12c3.859 0 7-3.14 7-7V9c0-3.841-3.127-6.974-6.981-7h-.06C8.119 2.022 5 5.157 5 9v6c0 3.86 3.129 7 6.975 7zM7 9a5.007 5.007 0 0 1 4.985-5C14.75 4.006 17 6.249 17 9v6c0 2.757-2.243 5-5 5h-.025C9.186 20 7 17.804 7 15V9z"/><path d="M11 6h2v6h-2z"/>|,
      ~S|<path d="M11.975 22H12c3.859 0 7-3.14 7-7V9c0-3.841-3.127-6.974-6.981-7h-.06C8.119 2.022 5 5.157 5 9v6c0 3.86 3.129 7 6.975 7zM11 6h2v6h-2V6z"/>|
    )
  end

  @doc """
  Renders the `magnet` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.magnet />
  <Boxicons.magnet class="w-4 h-4" />
  <Boxicons.magnet solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def magnet(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3h-3c-1.103 0-2 .897-2 2v8c0 1.103-.897 2-2 2s-2-.897-2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v8c0 4.963 4.037 9 9 9s9-4.037 9-9V5c0-1.103-.897-2-2-2zm-3 2h3v3h-3V5zM5 5h3v3H5V5zm7 15c-3.859 0-7-3.141-7-7v-3h3v3c0 2.206 1.794 4 4 4s4-1.794 4-4v-3h3v3c0 3.859-3.141 7-7 7z"/>|,
      ~S|<path d="M8 3H5a1 1 0 0 0-1 1v3h5V4a1 1 0 0 0-1-1zm7 1v3h5V4a1 1 0 0 0-1-1h-3a1 1 0 0 0-1 1zm0 10a3 3 0 0 1-6 0V9H4v5a8 8 0 0 0 16 0V9h-5v5z"/>|
    )
  end

  @doc """
  Renders the `mask` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.mask />
  <Boxicons.mask class="w-4 h-4" />
  <Boxicons.mask solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def mask(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 6H5C3.346 6 2 7.346 2 9v5c0 2.206 1.794 4 4 4h1.637c1.166 0 2.28-.557 2.981-1.491.66-.879 2.104-.88 2.764.001A3.744 3.744 0 0 0 16.363 18H18c2.206 0 4-1.794 4-4V9c0-1.654-1.346-3-3-3zm1 8c0 1.103-.897 2-2 2h-1.637c-.54 0-1.057-.259-1.382-.69-.71-.948-1.797-1.492-2.981-1.492s-2.271.544-2.981 1.491A1.741 1.741 0 0 1 7.637 16H6c-1.103 0-2-.897-2-2V9c0-.551.448-1 1-1h14c.552 0 1 .449 1 1v5z"/>|,
      ~S|<path d="M19 6H5C3.346 6 2 7.346 2 9v5c0 2.206 1.794 4 4 4h1.637c1.166 0 2.28-.557 2.981-1.491.66-.879 2.104-.88 2.764.001A3.744 3.744 0 0 0 16.363 18H18c2.206 0 4-1.794 4-4V9c0-1.654-1.346-3-3-3zM7.5 13C6.119 13 5 12.328 5 11.5S6.119 10 7.5 10s2.5.672 2.5 1.5S8.881 13 7.5 13zm9 0c-1.381 0-2.5-.672-2.5-1.5s1.119-1.5 2.5-1.5 2.5.672 2.5 1.5-1.119 1.5-2.5 1.5z"/>|
    )
  end

  @doc """
  Renders the `brush` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.brush />
  <Boxicons.brush class="w-4 h-4" />
  <Boxicons.brush solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def brush(assigns) do
    svg(
      assigns,
      ~S|<path d="M13.707 2.293a.999.999 0 0 0-1.414 0l-5.84 5.84c-.015-.001-.029-.009-.044-.009a.997.997 0 0 0-.707.293L4.288 9.831a2.985 2.985 0 0 0-.878 2.122c0 .802.313 1.556.879 2.121l.707.707-2.122 2.122A2.92 2.92 0 0 0 2 19.012a2.968 2.968 0 0 0 1.063 2.308c.519.439 1.188.68 1.885.68.834 0 1.654-.341 2.25-.937l2.04-2.039.707.706c1.134 1.133 3.109 1.134 4.242.001l1.415-1.414a.997.997 0 0 0 .293-.707c0-.026-.013-.05-.015-.076l5.827-5.827a.999.999 0 0 0 0-1.414l-8-8zm-.935 16.024a1.023 1.023 0 0 1-1.414-.001l-1.414-1.413a.999.999 0 0 0-1.414 0l-2.746 2.745a1.19 1.19 0 0 1-.836.352.91.91 0 0 1-.594-.208A.978.978 0 0 1 4 19.01a.959.959 0 0 1 .287-.692l2.829-2.829a.999.999 0 0 0 0-1.414L5.701 12.66a.99.99 0 0 1-.292-.706c0-.268.104-.519.293-.708l.707-.707 7.071 7.072-.708.706zm1.889-2.392L8.075 9.339 13 4.414 19.586 11l-4.925 4.925z"/>|,
      ~S|<path d="m21.207 11.278-2.035-2.035-1.415-1.415-5.035-5.035a.999.999 0 0 0-1.414 0L6.151 7.949 4.736 9.363a2.985 2.985 0 0 0-.878 2.122c0 .802.313 1.556.879 2.121l.707.707-2.122 2.122a2.925 2.925 0 0 0-.873 2.108 2.968 2.968 0 0 0 1.063 2.308 2.92 2.92 0 0 0 1.886.681c.834 0 1.654-.341 2.25-.937l2.039-2.039.707.706c1.133 1.133 3.107 1.134 4.242.001l.708-.707.569-.569.138-.138 5.156-5.157a.999.999 0 0 0 0-1.414zm-7.277 5.865-.708.706a1.021 1.021 0 0 1-1.414 0l-1.414-1.413a.999.999 0 0 0-1.414 0l-2.746 2.745a1.192 1.192 0 0 1-.836.352.914.914 0 0 1-.595-.208.981.981 0 0 1-.354-.782.955.955 0 0 1 .287-.692l2.829-2.829a.999.999 0 0 0 0-1.414l-1.414-1.415c-.189-.188-.293-.438-.293-.706s.104-.519.293-.708l.707-.707 3.536 3.536 3.536 3.535z"/>|
    )
  end

  @doc """
  Renders the `movie_play` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.movie_play />
  <Boxicons.movie_play class="w-4 h-4" />
  <Boxicons.movie_play solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def movie_play(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zm.001 6c-.001 0-.001 0 0 0h-.465l-2.667-4H20l.001 4zM9.536 9 6.869 5h2.596l2.667 4H9.536zm5 0-2.667-4h2.596l2.667 4h-2.596zM4 5h.465l2.667 4H4V5zm0 14v-8h16l.002 8H4z"/><path d="m10 18 5.5-3-5.5-3z"/>|,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zm.001 6c-.001 0-.001 0 0 0h-.465l-2.667-4H20l.001 4zM15.5 15 10 18v-6l5.5 3zm-.964-6-2.667-4h2.596l2.667 4h-2.596zm-2.404 0H9.536L6.869 5h2.596l2.667 4zM4 5h.465l2.667 4H4V5z"/>|
    )
  end

  @doc """
  Renders the `color` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.color />
  <Boxicons.color class="w-4 h-4" />
  <Boxicons.color solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def color(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2a10 10 0 1 0 10 10A10 10 0 0 0 12 2zm0 13a3 3 0 1 1 3-3 3 3 0 0 1-3 3zm2.75-7.17A5 5 0 0 0 13 7.1v-3a7.94 7.94 0 0 1 3.9 1.62zM11 7.1a5 5 0 0 0-1.75.73L7.1 5.69A7.94 7.94 0 0 1 11 4.07zM7.83 9.25A5 5 0 0 0 7.1 11h-3a7.94 7.94 0 0 1 1.59-3.9zM7.1 13a5 5 0 0 0 .73 1.75L5.69 16.9A7.94 7.94 0 0 1 4.07 13zm2.15 3.17a5 5 0 0 0 1.75.73v3a7.94 7.94 0 0 1-3.9-1.62zm3.75.73a5 5 0 0 0 1.75-.73l2.15 2.14a7.94 7.94 0 0 1-3.9 1.62zm3.17-2.15A5 5 0 0 0 16.9 13h3a7.94 7.94 0 0 1-1.62 3.9zM16.9 11a5 5 0 0 0-.73-1.75l2.14-2.15a7.94 7.94 0 0 1 1.62 3.9z"/>|,
      ~S|<path d="M7.08 11.25A4.84 4.84 0 0 1 8 9.05L4.43 5.49A9.88 9.88 0 0 0 2 11.25zM9.05 8a4.84 4.84 0 0 1 2.2-.91V2a9.88 9.88 0 0 0-5.76 2.43zm3.7-6v5A4.84 4.84 0 0 1 15 8l3.56-3.56A9.88 9.88 0 0 0 12.75 2zM8 15a4.84 4.84 0 0 1-.91-2.2H2a9.88 9.88 0 0 0 2.39 5.76zm3.25 1.92a4.84 4.84 0 0 1-2.2-.92l-3.56 3.57A9.88 9.88 0 0 0 11.25 22zM16 9.05a4.84 4.84 0 0 1 .91 2.2h5a9.88 9.88 0 0 0-2.39-5.76zM15 16a4.84 4.84 0 0 1-2.2.91v5a9.88 9.88 0 0 0 5.76-2.39zm1.92-3.25A4.84 4.84 0 0 1 16 15l3.56 3.56A9.88 9.88 0 0 0 22 12.75z"/>|
    )
  end

  @doc """
  Renders the `hotel` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hotel />
  <Boxicons.hotel class="w-4 h-4" />
  <Boxicons.hotel solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def hotel(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.205 7H12a1 1 0 0 0-1 1v7H4V6H2v14h2v-3h16v3h2v-8.205A4.8 4.8 0 0 0 17.205 7zM13 15V9h4.205A2.798 2.798 0 0 1 20 11.795V15h-7z"/>|,
      ~S|<path d="M18.205 7H12v8H4V6H2v14h2v-3h16v3h2v-4c0-.009-.005-.016-.005-.024H22V11c0-2.096-1.698-4-3.795-4z"/>|
    )
  end

  @doc """
  Renders the `file_blank` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_blank />
  <Boxicons.file_blank class="w-4 h-4" />
  <Boxicons.file_blank solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def file_blank(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.937 8.68c-.011-.032-.02-.063-.033-.094a.997.997 0 0 0-.196-.293l-6-6a.997.997 0 0 0-.293-.196c-.03-.014-.062-.022-.094-.033a.991.991 0 0 0-.259-.051C13.04 2.011 13.021 2 13 2H6c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V9c0-.021-.011-.04-.013-.062a.99.99 0 0 0-.05-.258zM16.586 8H14V5.414L16.586 8zM6 20V4h6v5a1 1 0 0 0 1 1h5l.002 10H6z"/>|,
      ~S|<path d="M6 2a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6H6zm8 7h-1V4l5 5h-4z"/>|
    )
  end

  @doc """
  Renders the `alarm_exclamation` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.alarm_exclamation />
  <Boxicons.alarm_exclamation class="w-4 h-4" />
  <Boxicons.alarm_exclamation solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def alarm_exclamation(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 22c4.879 0 9-4.121 9-9s-4.121-9-9-9-9 4.121-9 9 4.121 9 9 9zm0-16c3.794 0 7 3.206 7 7s-3.206 7-7 7-7-3.206-7-7 3.206-7 7-7zm5.284-2.293 1.412-1.416 3.01 3-1.413 1.417zM5.282 2.294 6.7 3.706l-2.99 3-1.417-1.413z"/><path d="M11 9h2v5h-2zm0 6h2v2h-2z"/>|,
      ~S|<path d="m17.284 3.707 1.412-1.416 3.01 3-1.413 1.417zm-10.586 0-2.99 2.999L2.29 5.294l2.99-3zM12 4c-4.879 0-9 4.121-9 9s4.121 9 9 9 9-4.121 9-9-4.121-9-9-9zm1 14h-2v-2h2v2zm0-4h-2V8h2v6z"/>|
    )
  end

  @doc """
  Renders the `area` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.area />
  <Boxicons.area class="w-4 h-4" />
  <Boxicons.area solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def area(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 5v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2zm16.002 14H5V5h14l.002 14z"/><path d="M15 12h2V7h-5v2h3zm-3 3H9v-3H7v5h5z"/>|,
      ~S|<path d="M3 19a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14zm9-13h6v6h-2V8h-4V6zm-6 6h2v4h4v2H6v-6z"/>|
    )
  end

  @doc """
  Renders the `bar_chart_alt_2` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bar_chart_alt_2 />
  <Boxicons.bar_chart_alt_2 class="w-4 h-4" />
  <Boxicons.bar_chart_alt_2 solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bar_chart_alt_2(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 7h-4V4c0-1.103-.897-2-2-2h-4c-1.103 0-2 .897-2 2v5H4c-1.103 0-2 .897-2 2v9a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1V9c0-1.103-.897-2-2-2zM4 11h4v8H4v-8zm6-1V4h4v15h-4v-9zm10 9h-4V9h4v10z"/>|,
      ~S|<path d="M6 21H3a1 1 0 0 1-1-1v-8a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1zm7 0h-3a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v17a1 1 0 0 1-1 1zm7 0h-3a1 1 0 0 1-1-1V9a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v11a1 1 0 0 1-1 1z"/>|
    )
  end

  @doc """
  Renders the `brain` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.brain />
  <Boxicons.brain class="w-4 h-4" />
  <Boxicons.brain solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def brain(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.864 8.465a3.505 3.505 0 0 0-3.03-4.449A3.005 3.005 0 0 0 14 2a2.98 2.98 0 0 0-2 .78A2.98 2.98 0 0 0 10 2c-1.301 0-2.41.831-2.825 2.015a3.505 3.505 0 0 0-3.039 4.45A4.028 4.028 0 0 0 2 12c0 1.075.428 2.086 1.172 2.832A4.067 4.067 0 0 0 3 16c0 1.957 1.412 3.59 3.306 3.934A3.515 3.515 0 0 0 9.5 22c.979 0 1.864-.407 2.5-1.059A3.484 3.484 0 0 0 14.5 22a3.51 3.51 0 0 0 3.19-2.06 4.006 4.006 0 0 0 3.138-5.108A4.003 4.003 0 0 0 22 12a4.028 4.028 0 0 0-2.136-3.535zM9.5 20c-.711 0-1.33-.504-1.47-1.198L7.818 18H7c-1.103 0-2-.897-2-2 0-.352.085-.682.253-.981l.456-.816-.784-.51A2.019 2.019 0 0 1 4 12c0-.977.723-1.824 1.682-1.972l1.693-.26-1.059-1.346a1.502 1.502 0 0 1 1.498-2.39L9 6.207V5a1 1 0 0 1 2 0v13.5c0 .827-.673 1.5-1.5 1.5zm9.575-6.308-.784.51.456.816c.168.3.253.63.253.982 0 1.103-.897 2-2.05 2h-.818l-.162.802A1.502 1.502 0 0 1 14.5 20c-.827 0-1.5-.673-1.5-1.5V5c0-.552.448-1 1-1s1 .448 1 1.05v1.207l1.186-.225a1.502 1.502 0 0 1 1.498 2.39l-1.059 1.347 1.693.26A2.002 2.002 0 0 1 20 12c0 .683-.346 1.315-.925 1.692z"/>|,
      ~S|<path d="M3.299 17.596c.432 1.332 1.745 2.182 3.146 2.182H6.5A2.78 2.78 0 0 0 9.223 22c.457 0 .884-.115 1.262-.313a.992.992 0 0 0 .515-.882V3.027a.997.997 0 0 0-.785-.983 2.324 2.324 0 0 0-1.479.201c-.744.356-1.18 1.151-1.18 1.978v.055a2.778 2.778 0 0 0-2.744 4.433A3.327 3.327 0 0 0 2 12c0 1.178.611 2.211 1.533 2.812-.43.771-.571 1.746-.234 2.784zm15.889-8.885a2.778 2.778 0 0 0-2.744-4.433v-.055c0-.826-.437-1.622-1.181-1.978a2.32 2.32 0 0 0-1.478-.201.998.998 0 0 0-.785.983v17.777c0 .365.192.712.516.882.378.199.804.314 1.261.314a2.78 2.78 0 0 0 2.723-2.223h.056c1.4 0 2.714-.85 3.146-2.182.337-1.038.196-2.013-.234-2.784A3.35 3.35 0 0 0 22 12a3.327 3.327 0 0 0-2.812-3.289z"/>|
    )
  end

  @doc """
  Renders the `cuboid` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cuboid />
  <Boxicons.cuboid class="w-4 h-4" />
  <Boxicons.cuboid solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cuboid(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.707 2.293A.996.996 0 0 0 16 2H8c-.414 0-.785.255-.934.641l-5 13a.999.999 0 0 0 .227 1.066l5 5A.996.996 0 0 0 8 22h8c.414 0 .785-.255.934-.641l5-13a.999.999 0 0 0-.227-1.066l-5-5zM18.585 7h-5.171l-3-3h5.172l2.999 3zM8.381 4.795l3.438 3.438-4.462 10.71-3.19-3.191L8.381 4.795zM15.313 20h-6.23l4.583-11h5.878l-4.231 11z"/>|,
      ~S|<path d="M16.707 2.293A.996.996 0 0 0 16 2H8c-.414 0-.785.255-.934.641l-5 13a.999.999 0 0 0 .227 1.066l5 5A.996.996 0 0 0 8 22h8c.414 0 .785-.255.934-.641l5-13a.999.999 0 0 0-.227-1.066l-5-5zM18.585 7h-5.171l-3-3h5.172l2.999 3zm-3.272 13h-6.23l4.583-11h5.878l-4.231 11z"/>|
    )
  end

  @doc """
  Renders the `log_in` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.log_in />
  <Boxicons.log_in class="w-4 h-4" />
  <Boxicons.log_in solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def log_in(assigns) do
    svg(
      assigns,
      ~S|<path d="m13 16 5-4-5-4v3H4v2h9z"/><path d="M20 3h-9c-1.103 0-2 .897-2 2v4h2V5h9v14h-9v-4H9v4c0 1.103.897 2 2 2h9c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2z"/>|,
      ~S|<path d="M18.5 2h-13a.5.5 0 0 0-.5.5V11h6V8l5 4-5 4v-3H5v8.5a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-19a.5.5 0 0 0-.5-.5z"/>|
    )
  end

  @doc """
  Renders the `traffic_cone` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.traffic_cone />
  <Boxicons.traffic_cone class="w-4 h-4" />
  <Boxicons.traffic_cone solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def traffic_cone(assigns) do
    svg(
      assigns,
      ~S|<path d="M13.943 2.667A1 1 0 0 0 13 2h-2a1 1 0 0 0-.943.667L4.292 19H2v2h20v-2h-2.292L13.943 2.667zM15.47 13H8.53l1.06-3h4.82l1.06 3zm-3.763-9h.586l1.412 4h-3.41l1.412-4zM7.825 15h8.35l1.412 4H6.413l1.412-4z"/>|,
      ~S|<path d="M18.649 16H5.352l-1.06 3H2v2h20v-2h-2.292zM6.057 14h11.886l-1.412-4H7.469zM13 2h-2a1 1 0 0 0-.943.667L8.175 8h7.65l-1.882-5.333A1 1 0 0 0 13 2z"/>|
    )
  end

  @doc """
  Renders the `cctv` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cctv />
  <Boxicons.cctv class="w-4 h-4" />
  <Boxicons.cctv solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cctv(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.916 9.564a.998.998 0 0 0-.513-1.316L7.328 2.492c-.995-.438-2.22.051-2.645 1.042l-2.21 5.154a2.001 2.001 0 0 0 1.052 2.624L9.563 13.9 8.323 17H4v-3H2v8h2v-3h4.323c.823 0 1.552-.494 1.856-1.258l1.222-3.054 5.205 2.23a1 1 0 0 0 1.31-.517l.312-.71 1.701.68 2-5-1.536-.613.523-1.194zm-4.434 5.126L4.313 9.475l2.208-5.152 12.162 5.354-2.201 5.013z"/>|,
      ~S|<path d="M18.618 7.462 6.403 2.085a1.007 1.007 0 0 0-.77-.016 1.002 1.002 0 0 0-.552.537l-3 7a1 1 0 0 0 .525 1.313L9.563 13.9 8.323 17H4v-3H2v8h2v-3h4.323c.823 0 1.552-.494 1.856-1.258l1.222-3.054 3.419 1.465a1 1 0 0 0 1.311-.518l3-6.857a1 1 0 0 0-.513-1.316zm1.312 8.91-1.858-.742 1.998-5 1.858.741z"/>|
    )
  end

  @doc """
  Renders the `share` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.share />
  <Boxicons.share class="w-4 h-4" />
  <Boxicons.share solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def share(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 7.05V4a1 1 0 0 0-1-1 1 1 0 0 0-.7.29l-7 7a1 1 0 0 0 0 1.42l7 7A1 1 0 0 0 11 18v-3.1h.85a10.89 10.89 0 0 1 8.36 3.72 1 1 0 0 0 1.11.35A1 1 0 0 0 22 18c0-9.12-8.08-10.68-11-10.95zm.85 5.83a14.74 14.74 0 0 0-2 .13A1 1 0 0 0 9 14v1.59L4.42 11 9 6.41V8a1 1 0 0 0 1 1c.91 0 8.11.2 9.67 6.43a13.07 13.07 0 0 0-7.82-2.55z"/>|,
      ~S|<path d="M11 6.914V2.586L6.293 7.293l-3.774 3.774 3.841 3.201L11 18.135V13.9c8.146-.614 11 4.1 11 4.1 0-2.937-.242-5.985-2.551-8.293C16.765 7.022 12.878 6.832 11 6.914z"/>|
    )
  end

  @doc """
  Renders the `extension` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.extension />
  <Boxicons.extension class="w-4 h-4" />
  <Boxicons.extension solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def extension(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 10V7c0-1.103-.897-2-2-2h-3c0-1.654-1.346-3-3-3S8 3.346 8 5H5c-1.103 0-2 .897-2 2v3.881l.659.239C4.461 11.41 5 12.166 5 13s-.539 1.59-1.341 1.88L3 15.119V19c0 1.103.897 2 2 2h3.881l.239-.659C9.41 19.539 10.166 19 11 19s1.59.539 1.88 1.341l.239.659H17c1.103 0 2-.897 2-2v-3c1.654 0 3-1.346 3-3s-1.346-3-3-3zm0 4h-2l-.003 5h-2.545c-.711-1.22-2.022-2-3.452-2s-2.741.78-3.452 2H5v-2.548C6.22 15.741 7 14.43 7 13s-.78-2.741-2-3.452V7h5V5a1 1 0 0 1 2 0v2h5v5h2a1 1 0 0 1 0 2z"/>|,
      ~S|<path d="M19 10V7c0-1.103-.897-2-2-2h-3c0-1.654-1.346-3-3-3S8 3.346 8 5H5c-1.103 0-2 .897-2 2v4h1a2 2 0 0 1 0 4H3v4c0 1.103.897 2 2 2h4v-1a2 2 0 0 1 4 0v1h4c1.103 0 2-.897 2-2v-3c1.654 0 3-1.346 3-3s-1.346-3-3-3z"/>|
    )
  end

  @doc """
  Renders the `confused` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.confused />
  <Boxicons.confused class="w-4 h-4" />
  <Boxicons.confused solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def confused(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="m8.124 16.992-.248-1.984 8-1 .248 1.984z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-5 8.5a1.5 1.5 0 1 1 3.001.001A1.5 1.5 0 0 1 7 10.5zm1.124 6.492-.248-1.984 8-1 .248 1.984-8 1zm7.369-5.006a1.494 1.494 0 1 1 .001-2.987 1.494 1.494 0 0 1-.001 2.987z"/>|
    )
  end

  @doc """
  Renders the `minus_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.minus_circle />
  <Boxicons.minus_circle class="w-4 h-4" />
  <Boxicons.minus_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def minus_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 11h10v2H7z"/><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm5 11H7v-2h10v2z"/>|
    )
  end

  @doc """
  Renders the `briefcase` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.briefcase />
  <Boxicons.briefcase class="w-4 h-4" />
  <Boxicons.briefcase solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def briefcase(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 6h-3V4c0-1.103-.897-2-2-2H9c-1.103 0-2 .897-2 2v2H4c-1.103 0-2 .897-2 2v11c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2zm-5-2v2H9V4h6zM8 8h12v3H4V8h4zM4 19v-6h6v2h4v-2h6l.001 6H4z"/>|,
      ~S|<path d="M20 6h-3V4c0-1.103-.897-2-2-2H9c-1.103 0-2 .897-2 2v2H4c-1.103 0-2 .897-2 2v3h20V8c0-1.103-.897-2-2-2zM9 4h6v2H9V4zm5 10h-4v-2H2v7c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2v-7h-8v2z"/>|
    )
  end

  @doc """
  Renders the `chevron_right` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevron_right />
  <Boxicons.chevron_right class="w-4 h-4" />
  <Boxicons.chevron_right solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevron_right(assigns) do
    svg(
      assigns,
      ~S|<path d="M10.707 17.707 16.414 12l-5.707-5.707-1.414 1.414L13.586 12l-4.293 4.293z"/>|,
      ~S|<path d="M10.061 19.061 17.121 12l-7.06-7.061-2.122 2.122L12.879 12l-4.94 4.939z"/>|
    )
  end

  @doc """
  Renders the `no_entry` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.no_entry />
  <Boxicons.no_entry class="w-4 h-4" />
  <Boxicons.no_entry solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def no_entry(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 10h10v4H7z"/><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm5 12H7v-4h10v4z"/>|
    )
  end

  @doc """
  Renders the `dice_3` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dice_3 />
  <Boxicons.dice_3 class="w-4 h-4" />
  <Boxicons.dice_3 solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dice_3(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM5 19V5h14l.002 14H5z"/>|,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM8 9.5a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 8 9.5zm4 4a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 12 13.5zm4 4a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 16 17.5z"/>|
    )
  end

  @doc """
  Renders the `right_arrow` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.right_arrow />
  <Boxicons.right_arrow class="w-4 h-4" />
  <Boxicons.right_arrow solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def right_arrow(assigns) do
    svg(
      assigns,
      ~S|<path d="M5.536 21.886a1.004 1.004 0 0 0 1.033-.064l13-9a1 1 0 0 0 0-1.644l-13-9A.998.998 0 0 0 5 3v18a1 1 0 0 0 .536.886zM7 4.909 17.243 12 7 19.091V4.909z"/>|,
      ~S|<path d="M5.536 21.886a1.004 1.004 0 0 0 1.033-.064l13-9a1 1 0 0 0 0-1.644l-13-9A1 1 0 0 0 5 3v18a1 1 0 0 0 .536.886z"/>|
    )
  end

  @doc """
  Renders the `buildings` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.buildings />
  <Boxicons.buildings class="w-4 h-4" />
  <Boxicons.buildings solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def buildings(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 2H9c-1.103 0-2 .897-2 2v6H5c-1.103 0-2 .897-2 2v9a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1V4c0-1.103-.897-2-2-2zM5 12h6v8H5v-8zm14 8h-6v-8c0-1.103-.897-2-2-2H9V4h10v16z"/><path d="M11 6h2v2h-2zm4 0h2v2h-2zm0 4.031h2V12h-2zM15 14h2v2h-2zm-8 .001h2v2H7z"/>|,
      ~S|<path d="M7 14.001h2v2H7z"/><path d="M19 2h-8a2 2 0 0 0-2 2v6H5c-1.103 0-2 .897-2 2v9a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1V4a2 2 0 0 0-2-2zM5 20v-8h6v8H5zm9-12h-2V6h2v2zm4 8h-2v-2h2v2zm0-4h-2v-2h2v2zm0-4h-2V6h2v2z"/>|
    )
  end

  @doc """
  Renders the `message_square_error` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_square_error />
  <Boxicons.message_square_error class="w-4 h-4" />
  <Boxicons.message_square_error solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_square_error(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm4 14c0 2.206-1.794 4-4 4H4V8c0-2.206 1.794-4 4-4h8c2.206 0 4 1.794 4 4v8z"/><path d="M11 6h2v8h-2zm0 10h2v2h-2z"/>|,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm-3 16h-2v-2h2v2zm0-4h-2V6h2v8z"/>|
    )
  end

  @doc """
  Renders the `book` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.book />
  <Boxicons.book class="w-4 h-4" />
  <Boxicons.book solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def book(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 22h15v-2H6.012C5.55 19.988 5 19.805 5 19s.55-.988 1.012-1H21V4c0-1.103-.897-2-2-2H6c-1.206 0-3 .799-3 3v14c0 2.201 1.794 3 3 3zM5 8V5c0-.805.55-.988 1-1h13v12H5V8z"/><path d="M8 6h9v2H8z"/>|,
      ~S|<path d="M6.012 18H21V4a2 2 0 0 0-2-2H6c-1.206 0-3 .799-3 3v14c0 2.201 1.794 3 3 3h15v-2H6.012C5.55 19.988 5 19.805 5 19s.55-.988 1.012-1zM8 6h9v2H8V6z"/>|
    )
  end

  @doc """
  Renders the `credit_card_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.credit_card_alt />
  <Boxicons.credit_card_alt class="w-4 h-4" />
  <Boxicons.credit_card_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def credit_card_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 13.5c0-.815.396-1.532 1-1.988A2.47 2.47 0 0 0 11.5 11a2.5 2.5 0 1 0 0 5 2.47 2.47 0 0 0 1.5-.512 2.486 2.486 0 0 1-1-1.988z"/><path d="M20 4H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zM4 18V6h16l.002 12H4z"/>|,
      ~S|<path d="M20 4H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm-7.5 12a2.5 2.5 0 1 1 0-5 2.47 2.47 0 0 1 1.5.512c-.604.456-1 1.173-1 1.988s.396 1.532 1 1.988a2.47 2.47 0 0 1-1.5.512zm4 0a2.5 2.5 0 1 1 0-5 2.5 2.5 0 0 1 0 5z"/>|
    )
  end

  @doc """
  Renders the `rectangle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.rectangle />
  <Boxicons.rectangle class="w-4 h-4" />
  <Boxicons.rectangle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def rectangle(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM4 19V5h16l.001 14H4z"/>|,
      ~S|<path d="M3 20h18a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1z"/>|
    )
  end

  @doc """
  Renders the `camera_movie` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.camera_movie />
  <Boxicons.camera_movie class="w-4 h-4" />
  <Boxicons.camera_movie solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def camera_movie(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 11c0-.959-.68-1.761-1.581-1.954C16.779 8.445 17 7.75 17 7c0-2.206-1.794-4-4-4-1.517 0-2.821.857-3.5 2.104C8.821 3.857 7.517 3 6 3 3.794 3 2 4.794 2 7c0 .902.312 1.727.817 2.396A1.994 1.994 0 0 0 2 11v8c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-2.638l4 2v-7l-4 2V11zm-5-6c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2zM6 5c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2zM4 19v-8h12l.002 8H4z"/>|,
      ~S|<path d="M18 11c0-.959-.68-1.761-1.581-1.954C16.779 8.445 17 7.75 17 7c0-2.206-1.794-4-4-4-1.516 0-2.822.857-3.5 2.104C8.822 3.857 7.516 3 6 3 3.794 3 2 4.794 2 7c0 .902.312 1.726.817 2.396A1.993 1.993 0 0 0 2 11v8c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-2.637l4 2v-7l-4 2V11zm-5-6c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2zM6 5c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2z"/>|
    )
  end

  @doc """
  Renders the `filter_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.filter_alt />
  <Boxicons.filter_alt class="w-4 h-4" />
  <Boxicons.filter_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def filter_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 3H5a1 1 0 0 0-1 1v2.59c0 .523.213 1.037.583 1.407L10 13.414V21a1.001 1.001 0 0 0 1.447.895l4-2c.339-.17.553-.516.553-.895v-5.586l5.417-5.417c.37-.37.583-.884.583-1.407V4a1 1 0 0 0-1-1zm-6.707 9.293A.996.996 0 0 0 14 13v5.382l-2 1V13a.996.996 0 0 0-.293-.707L6 6.59V5h14.001l.002 1.583-5.71 5.71z"/>|,
      ~S|<path d="M13 20v-4.586L20.414 8c.375-.375.586-.884.586-1.415V4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v2.585c0 .531.211 1.04.586 1.415L11 15.414V22l2-2z"/>|
    )
  end

  @doc """
  Renders the `circle_three_quarter` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.circle_three_quarter />
  <Boxicons.circle_three_quarter class="w-4 h-4" />
  <Boxicons.circle_three_quarter solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def circle_three_quarter(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2h-1v9H2v1a10 10 0 0 0 17.07 7.07A10 10 0 0 0 12 2zm5.66 15.66A8 8 0 0 1 4.06 13H13V4.06a8 8 0 0 1 4.66 13.6z"/>|,
      ~S|<path d="M12 2h-1v9H2v1a10 10 0 0 0 17.07 7.07A10 10 0 0 0 12 2z"/>|
    )
  end

  @doc """
  Renders the `shower` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shower />
  <Boxicons.shower class="w-4 h-4" />
  <Boxicons.shower solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def shower(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 18.33A6.78 6.78 0 0 0 19.5 15a6.73 6.73 0 0 0-1.5 3.33 1.51 1.51 0 1 0 3 0zM11 20.33A6.78 6.78 0 0 0 9.5 17 6.73 6.73 0 0 0 8 20.33 1.59 1.59 0 0 0 9.5 22a1.59 1.59 0 0 0 1.5-1.67zM14.5 22a1.59 1.59 0 0 0 1.5-1.67A6.78 6.78 0 0 0 14.5 17a6.73 6.73 0 0 0-1.5 3.33A1.59 1.59 0 0 0 14.5 22zM3 18.33A1.59 1.59 0 0 0 4.5 20 1.59 1.59 0 0 0 6 18.33 6.78 6.78 0 0 0 4.5 15 6.73 6.73 0 0 0 3 18.33zM13 4.07V2h-2v2.07A8 8 0 0 0 4 12H2v2h20v-2h-2a8 8 0 0 0-7-7.93zM6 12a6 6 0 0 1 12 0z"/>|,
      ~S|<path d="M21 18.33A6.78 6.78 0 0 0 19.5 15a6.73 6.73 0 0 0-1.5 3.33 1.51 1.51 0 1 0 3 0zM11 20.33A6.78 6.78 0 0 0 9.5 17 6.73 6.73 0 0 0 8 20.33 1.59 1.59 0 0 0 9.5 22a1.59 1.59 0 0 0 1.5-1.67zM16 20.33A6.78 6.78 0 0 0 14.5 17a6.73 6.73 0 0 0-1.5 3.33A1.59 1.59 0 0 0 14.5 22a1.59 1.59 0 0 0 1.5-1.67zM6 18.33A6.78 6.78 0 0 0 4.5 15 6.73 6.73 0 0 0 3 18.33 1.59 1.59 0 0 0 4.5 20 1.59 1.59 0 0 0 6 18.33zM2 12h20v2H2zM13 4.07V2h-2v2.07A8 8 0 0 0 4.07 11h15.86A8 8 0 0 0 13 4.07z"/>|
    )
  end

  @doc """
  Renders the `map_pin` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.map_pin />
  <Boxicons.map_pin class="w-4 h-4" />
  <Boxicons.map_pin solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def map_pin(assigns) do
    svg(
      assigns,
      ~S|<path d="m12 17 1-2V9.858c1.721-.447 3-2 3-3.858 0-2.206-1.794-4-4-4S8 3.794 8 6c0 1.858 1.279 3.411 3 3.858V15l1 2zM10 6c0-1.103.897-2 2-2s2 .897 2 2-.897 2-2 2-2-.897-2-2z"/><path d="m16.267 10.563-.533 1.928C18.325 13.207 20 14.584 20 16c0 1.892-3.285 4-8 4s-8-2.108-8-4c0-1.416 1.675-2.793 4.267-3.51l-.533-1.928C4.197 11.54 2 13.623 2 16c0 3.364 4.393 6 10 6s10-2.636 10-6c0-2.377-2.197-4.46-5.733-5.437z"/>|,
      ~S|<path d="m12 17 1-2V9.858c1.721-.447 3-2 3-3.858 0-2.206-1.794-4-4-4S8 3.794 8 6c0 1.858 1.279 3.411 3 3.858V15l1 2z"/><path d="m16.267 10.563-.533 1.928C18.325 13.207 20 14.584 20 16c0 1.892-3.285 4-8 4s-8-2.108-8-4c0-1.416 1.675-2.793 4.267-3.51l-.533-1.928C4.197 11.54 2 13.623 2 16c0 3.364 4.393 6 10 6s10-2.636 10-6c0-2.377-2.197-4.46-5.733-5.437z"/>|
    )
  end

  @doc """
  Renders the `message_alt_detail` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_alt_detail />
  <Boxicons.message_alt_detail class="w-4 h-4" />
  <Boxicons.message_alt_detail solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_alt_detail(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 2c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.586L12 21.414 15.414 18H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5zm14 14h-4.414L12 18.586 9.414 16H5V4h14v12z"/><path d="M7 7h10v2H7zm0 4h7v2H7z"/>|,
      ~S|<path d="m8.5 18 3.5 4 3.5-4H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.5zM7 7h10v2H7V7zm0 4h7v2H7v-2z"/>|
    )
  end

  @doc """
  Renders the `comment_detail` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.comment_detail />
  <Boxicons.comment_detail class="w-4 h-4" />
  <Boxicons.comment_detail solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def comment_detail(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 7h10v2H7zm0 4h7v2H7z"/><path d="M20 2H4c-1.103 0-2 .897-2 2v18l5.333-4H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14H6.667L4 18V4h16v12z"/>|,
      ~S|<path d="M20 1.999H4c-1.103 0-2 .897-2 2v18l4-4h14c1.103 0 2-.897 2-2v-12c0-1.103-.897-2-2-2zm-6 11H7v-2h7v2zm3-4H7v-2h10v2z"/>|
    )
  end

  @doc """
  Renders the `right_top_arrow_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.right_top_arrow_circle />
  <Boxicons.right_top_arrow_circle class="w-4 h-4" />
  <Boxicons.right_top_arrow_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def right_top_arrow_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12.006 2.007a9.927 9.927 0 0 0-7.071 2.922c-3.898 3.899-3.898 10.243 0 14.142 1.885 1.885 4.396 2.923 7.071 2.923s5.187-1.038 7.071-2.923c3.898-3.898 3.898-10.242 0-14.142a9.928 9.928 0 0 0-7.071-2.922zm5.657 15.649c-1.507 1.507-3.517 2.337-5.657 2.337s-4.15-.83-5.657-2.337c-3.118-3.119-3.118-8.194 0-11.313 1.507-1.507 3.516-2.336 5.657-2.336s4.15.829 5.657 2.336c3.118 3.119 3.118 8.194 0 11.313z"/><path d="m11.467 11.125-3.214 3.214 1.414 1.414 3.214-3.214 2.125 2.124V9H9.343z"/>|,
      ~S|<path d="M19.071 4.929c-3.899-3.898-10.243-3.898-14.143 0-3.898 3.899-3.898 10.244 0 14.143 3.899 3.898 10.243 3.898 14.143 0 3.899-3.9 3.899-10.244 0-14.143zm-3.536 10.607-2.828-2.829-3.535 3.536-1.414-1.414 3.535-3.536-2.828-2.829h7.07v7.072z"/>|
    )
  end

  @doc """
  Renders the `info_square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.info_square />
  <Boxicons.info_square class="w-4 h-4" />
  <Boxicons.info_square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def info_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4a1 1 0 0 0-1 1v16a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zm-1 16H5V5h14v14z"/><path d="M11 7h2v2h-2zm0 4h2v6h-2z"/>|,
      ~S|<path d="M3 4v16a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1zm8 3h2v2h-2V7zm0 4h2v6h-2v-6z"/>|
    )
  end

  @doc """
  Renders the `zoom_out` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.zoom_out />
  <Boxicons.zoom_out class="w-4 h-4" />
  <Boxicons.zoom_out solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def zoom_out(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 9h8v2H6z"/><path d="M10 18a7.952 7.952 0 0 0 4.897-1.688l4.396 4.396 1.414-1.414-4.396-4.396A7.952 7.952 0 0 0 18 10c0-4.411-3.589-8-8-8s-8 3.589-8 8 3.589 8 8 8zm0-14c3.309 0 6 2.691 6 6s-2.691 6-6 6-6-2.691-6-6 2.691-6 6-6z"/>|,
      ~S|<path d="M10 18a7.952 7.952 0 0 0 4.897-1.688l4.396 4.396 1.414-1.414-4.396-4.396A7.952 7.952 0 0 0 18 10c0-4.411-3.589-8-8-8s-8 3.589-8 8 3.589 8 8 8zM6 9h8v2H6V9z"/>|
    )
  end

  @doc """
  Renders the `objects_horizontal_left` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.objects_horizontal_left />
  <Boxicons.objects_horizontal_left class="w-4 h-4" />
  <Boxicons.objects_horizontal_left solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def objects_horizontal_left(assigns) do
    svg(
      assigns,
      ~S|<path d="M2 2h2v20H2zM21 13H7a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1v-5a1 1 0 0 0-1-1zm-1 5H8v-3h12zM7 11h10a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1zm1-5h8v3H8z"/>|,
      ~S|<path d="M2 2h2v20H2z"/>|
    )
  end

  @doc """
  Renders the `calendar` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.calendar />
  <Boxicons.calendar class="w-4 h-4" />
  <Boxicons.calendar solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def calendar(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 11h2v2H7zm0 4h2v2H7zm4-4h2v2h-2zm0 4h2v2h-2zm4-4h2v2h-2zm0 4h2v2h-2z"/><path d="M5 22h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zM19 8l.001 12H5V8h14z"/>|,
      ~S|<path d="M21 20V6c0-1.103-.897-2-2-2h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2zM9 18H7v-2h2v2zm0-4H7v-2h2v2zm4 4h-2v-2h2v2zm0-4h-2v-2h2v2zm4 4h-2v-2h2v2zm0-4h-2v-2h2v2zm2-5H5V7h14v2z"/>|
    )
  end

  @doc """
  Renders the `exit` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.exit />
  <Boxicons.exit class="w-4 h-4" />
  <Boxicons.exit solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def exit(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.002 3h-14c-1.103 0-2 .897-2 2v4h2V5h14v14h-14v-4h-2v4c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.898-2-2-2z"/><path d="m11 16 5-4-5-4v3.001H3v2h8z"/>|,
      ~S|<path d="M5.002 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2h-14c-1.103 0-2 .897-2 2v6.001H10V7l6 5-6 5v-3.999H3.002V19c0 1.103.897 2 2 2z"/>|
    )
  end

  @doc """
  Renders the `chevron_up` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevron_up />
  <Boxicons.chevron_up class="w-4 h-4" />
  <Boxicons.chevron_up solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevron_up(assigns) do
    svg(
      assigns,
      ~S|<path d="m6.293 13.293 1.414 1.414L12 10.414l4.293 4.293 1.414-1.414L12 7.586z"/>|,
      ~S|<path d="m12 6.879-7.061 7.06 2.122 2.122L12 11.121l4.939 4.94 2.122-2.122z"/>|
    )
  end

  @doc """
  Renders the `cable_car` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cable_car />
  <Boxicons.cable_car class="w-4 h-4" />
  <Boxicons.cable_car solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cable_car(assigns) do
    svg(
      assigns,
      ~S|<path d="m2 9.76 9-2.45V10H7a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2v-8a2 2 0 0 0-2-2h-4V6.76l9-2.45V2.24L2 7.69zM11 12v3H7v-3zm6 0v8H7v-3h10v-2h-4v-3z"/>|,
      ~S|<path d="m2 9.76 9-2.45V10H7a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2v-8a2 2 0 0 0-2-2h-4V6.76l9-2.45V2.24L2 7.69zM11 12v3H7v-3zm6 0v3h-4v-3z"/>|
    )
  end

  @doc """
  Renders the `certification` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.certification />
  <Boxicons.certification class="w-4 h-4" />
  <Boxicons.certification solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def certification(assigns) do
    svg(
      assigns,
      ~S|<path d="M2.06 14.68a1 1 0 0 0 .46.6l1.91 1.11v2.2a1 1 0 0 0 1 1h2.2l1.11 1.91a1 1 0 0 0 .86.5 1 1 0 0 0 .51-.14l1.9-1.1 1.91 1.1a1 1 0 0 0 1.37-.36l1.1-1.91h2.2a1 1 0 0 0 1-1v-2.2l1.91-1.11a1 1 0 0 0 .37-1.36L20.76 12l1.11-1.91a1 1 0 0 0-.37-1.36l-1.91-1.1v-2.2a1 1 0 0 0-1-1h-2.2l-1.1-1.91a1 1 0 0 0-.61-.46 1 1 0 0 0-.76.1L12 3.26l-1.9-1.1a1 1 0 0 0-1.36.36L7.63 4.43h-2.2a1 1 0 0 0-1 1v2.2l-1.9 1.1a1 1 0 0 0-.37 1.37l1.1 1.9-1.1 1.91a1 1 0 0 0-.1.77zm3.22-3.17L4.39 10l1.55-.9a1 1 0 0 0 .49-.86V6.43h1.78a1 1 0 0 0 .87-.5L10 4.39l1.54.89a1 1 0 0 0 1 0l1.55-.89.91 1.54a1 1 0 0 0 .87.5h1.77v1.78a1 1 0 0 0 .5.86l1.54.9-.89 1.54a1 1 0 0 0 0 1l.89 1.54-1.54.9a1 1 0 0 0-.5.86v1.78h-1.83a1 1 0 0 0-.86.5l-.89 1.54-1.55-.89a1 1 0 0 0-1 0l-1.51.89-.89-1.54a1 1 0 0 0-.87-.5H6.43v-1.78a1 1 0 0 0-.49-.81l-1.55-.9.89-1.54a1 1 0 0 0 0-1.05z"/>|,
      ~S|<path d="M2.047 14.667a.992.992 0 0 0 .466.607l1.909 1.104v2.199a1 1 0 0 0 1 1h2.199l1.104 1.91a1.002 1.002 0 0 0 1.366.366L12 20.75l1.91 1.104a1.002 1.002 0 0 0 1.366-.366l1.103-1.909h2.199a1 1 0 0 0 1-1V16.38l1.909-1.104a.999.999 0 0 0 .366-1.366L20.75 12l1.104-1.909a1 1 0 0 0-.366-1.366l-1.909-1.104V5.422a1 1 0 0 0-1-1H16.38l-1.103-1.909a1.004 1.004 0 0 0-.607-.466.994.994 0 0 0-.759.1L12 3.25l-1.909-1.104a.998.998 0 0 0-1.366.365l-1.104 1.91H5.422a1 1 0 0 0-1 1V7.62L2.513 8.725a1.001 1.001 0 0 0-.365 1.366L3.251 12l-1.104 1.909a1.003 1.003 0 0 0-.1.758z"/>|
    )
  end

  @doc """
  Renders the `comment_x` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.comment_x />
  <Boxicons.comment_x class="w-4 h-4" />
  <Boxicons.comment_x solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def comment_x(assigns) do
    svg(
      assigns,
      ~S|<path d="M9.707 13.707 12 11.414l2.293 2.293 1.414-1.414L13.414 10l2.293-2.293-1.414-1.414L12 8.586 9.707 6.293 8.293 7.707 10.586 10l-2.293 2.293z"/><path d="M20 2H4c-1.103 0-2 .897-2 2v18l5.333-4H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14H6.667L4 18V4h16v12z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v18l4-4h14c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm-3.294 11.543-1.414 1.414-3.293-3.292-3.292 3.292-1.414-1.414 3.292-3.292-3.292-3.293 1.414-1.414 3.292 3.292 3.293-3.292 1.414 1.414-3.292 3.293 3.292 3.292z"/>|
    )
  end

  @doc """
  Renders the `cart` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cart />
  <Boxicons.cart class="w-4 h-4" />
  <Boxicons.cart solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cart(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.822 7.431A1 1 0 0 0 21 7H7.333L6.179 4.23A1.994 1.994 0 0 0 4.333 3H2v2h2.333l4.744 11.385A1 1 0 0 0 10 17h8c.417 0 .79-.259.937-.648l3-8a1 1 0 0 0-.115-.921zM17.307 15h-6.64l-2.5-6h11.39l-2.25 6z"/>|,
      ~S|<path d="M21.822 7.431A1 1 0 0 0 21 7H7.333L6.179 4.23A1.994 1.994 0 0 0 4.333 3H2v2h2.333l4.744 11.385A1 1 0 0 0 10 17h8c.417 0 .79-.259.937-.648l3-8a1 1 0 0 0-.115-.921z"/>|
    )
  end

  @doc """
  Renders the `navigation` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.navigation />
  <Boxicons.navigation class="w-4 h-4" />
  <Boxicons.navigation solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def navigation(assigns) do
    svg(
      assigns,
      ~S|<path d="M2.002 9.63c-.023.411.207.794.581.966l7.504 3.442 3.442 7.503c.164.356.52.583.909.583l.057-.002a1 1 0 0 0 .894-.686l5.595-17.032c.117-.358.023-.753-.243-1.02s-.66-.358-1.02-.243L2.688 8.736a1 1 0 0 0-.686.894zm16.464-3.971-4.182 12.73-2.534-5.522a.998.998 0 0 0-.492-.492L5.734 9.841l12.732-4.182z"/>|,
      ~S|<path d="M2.002 9.538c-.023.411.207.794.581.966l7.504 3.442 3.442 7.503c.164.356.52.583.909.583l.057-.002a1 1 0 0 0 .894-.686l5.595-17.032c.117-.358.023-.753-.243-1.02s-.66-.358-1.02-.243L2.688 8.645a.997.997 0 0 0-.686.893z"/>|
    )
  end

  @doc """
  Renders the `music` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.music />
  <Boxicons.music class="w-4 h-4" />
  <Boxicons.music solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def music(assigns) do
    svg(
      assigns,
      ~S|<path d="m19.684 5.821-9-3.272A1.998 1.998 0 0 0 8 4.428v6.129A3.953 3.953 0 0 0 6 10c-2.206 0-4 1.794-4 4s1.794 4 4 4 4-1.794 4-4V4.428L19 7.7v6.856A3.962 3.962 0 0 0 17 14c-2.206 0-4 1.794-4 4s1.794 4 4 4 4-1.794 4-4V7.7c0-.838-.529-1.594-1.316-1.879zM6 16c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2zm11 4c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2z"/>|,
      ~S|<path d="M6 18.573c2.206 0 4-1.794 4-4V4.428L19 7.7v7.43a3.953 3.953 0 0 0-2-.557c-2.206 0-4 1.794-4 4s1.794 4 4 4 4-1.794 4-4V7a.998.998 0 0 0-.658-.939l-11-4A.999.999 0 0 0 8 3v8.13a3.953 3.953 0 0 0-2-.557c-2.206 0-4 1.794-4 4s1.794 4 4 4z"/>|
    )
  end

  @doc """
  Renders the `cheese` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cheese />
  <Boxicons.cheese class="w-4 h-4" />
  <Boxicons.cheese solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cheese(assigns) do
    svg(
      assigns,
      ~S|<path d="M15.16 2a1 1 0 0 0-.66.13l-12 7a.64.64 0 0 0-.13.1l-.1.08a1.17 1.17 0 0 0-.17.26.84.84 0 0 0-.1.43v10a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1V10a8.08 8.08 0 0 0-6.84-8zm0 2.05A6.07 6.07 0 0 1 19.93 9H6.7zM20 19H4v-8h16z"/>|,
      ~S|<path d="M15.16 2a1 1 0 0 0-.66.13l-12 7a.64.64 0 0 0-.13.1l-.1.08a1.17 1.17 0 0 0-.17.26.84.84 0 0 0-.1.43v10a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1V10a8.08 8.08 0 0 0-6.84-8zm0 2.05A6.07 6.07 0 0 1 19.93 9H6.7zM6.5 18A1.5 1.5 0 1 1 8 16.5 1.5 1.5 0 0 1 6.5 18zm5-3a1.5 1.5 0 1 1 1.5-1.5 1.5 1.5 0 0 1-1.5 1.5zm5.5 3a2 2 0 1 1 2-2 2 2 0 0 1-2 2z"/>|
    )
  end

  @doc """
  Renders the `moon` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.moon />
  <Boxicons.moon class="w-4 h-4" />
  <Boxicons.moon solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def moon(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.742 13.045a8.088 8.088 0 0 1-2.077.271c-2.135 0-4.14-.83-5.646-2.336a8.025 8.025 0 0 1-2.064-7.723A1 1 0 0 0 9.73 2.034a10.014 10.014 0 0 0-4.489 2.582c-3.898 3.898-3.898 10.243 0 14.143a9.937 9.937 0 0 0 7.072 2.93 9.93 9.93 0 0 0 7.07-2.929 10.007 10.007 0 0 0 2.583-4.491 1.001 1.001 0 0 0-1.224-1.224zm-2.772 4.301a7.947 7.947 0 0 1-5.656 2.343 7.953 7.953 0 0 1-5.658-2.344c-3.118-3.119-3.118-8.195 0-11.314a7.923 7.923 0 0 1 2.06-1.483 10.027 10.027 0 0 0 2.89 7.848 9.972 9.972 0 0 0 7.848 2.891 8.036 8.036 0 0 1-1.484 2.059z"/>|,
      ~S|<path d="M12 11.807A9.002 9.002 0 0 1 10.049 2a9.942 9.942 0 0 0-5.12 2.735c-3.905 3.905-3.905 10.237 0 14.142 3.906 3.906 10.237 3.905 14.143 0a9.946 9.946 0 0 0 2.735-5.119A9.003 9.003 0 0 1 12 11.807z"/>|
    )
  end

  @doc """
  Renders the `message_check` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_check />
  <Boxicons.message_check class="w-4 h-4" />
  <Boxicons.message_check solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_check(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3v3.767L13.277 18H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14h-7.277L9 18.233V16H4V4h16v12z"/><path d="m17.207 7.207-1.414-1.414L11 10.586 8.707 8.293 7.293 9.707 11 13.414z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .894-2 1.992v12.016C2 17.106 2.897 18 4 18h3v4l6.351-4H20c1.103 0 2-.894 2-1.992V3.992A1.998 1.998 0 0 0 20 2zm-9 11.914-3.707-3.707 1.414-1.414L11 11.086l4.793-4.793 1.414 1.414L11 13.914z"/>|
    )
  end

  @doc """
  Renders the `video_recording` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.video_recording />
  <Boxicons.video_recording class="w-4 h-4" />
  <Boxicons.video_recording solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def video_recording(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 9c0-1.103-.897-2-2-2h-1.434l-2.418-4.029A2.008 2.008 0 0 0 10.434 2H5v2h5.434l1.8 3H4c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-3l4 2v-7l-4 2V9zm-1.998 9H4V9h12l.001 4H16v1l.001.001.001 3.999z"/><path d="M6 14h6v2H6z"/>|,
      ~S|<path d="M18 9c0-1.103-.897-2-2-2h-1.434l-2.418-4.029A2.008 2.008 0 0 0 10.434 2H5v2h5.434l1.8 3H4c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-3l4 2v-7l-4 2V9zm-7 8H5v-2h6v2z"/>|
    )
  end

  @doc """
  Renders the `joystick_button` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.joystick_button />
  <Boxicons.joystick_button class="w-4 h-4" />
  <Boxicons.joystick_button solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def joystick_button(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 7h-3V4c0-1.103-.897-2-2-2H9c-1.103 0-2 .897-2 2v3H4c-1.103 0-2 .897-2 2v6c0 1.103.897 2 2 2h3v3c0 1.103.897 2 2 2h6c1.103 0 2-.897 2-2v-3h3c1.103 0 2-.897 2-2V9c0-1.103-.897-2-2-2zm0 8h-5v4h.001v1H9v-5H4V9h5V4h6v5h5v6z"/><path d="M8 14v-4l-3 2zm8 0 3-2-3-2zm-6-6h4l-2-3zm2 11 2-3h-4z"/>|,
      ~S|<path d="M20 8h-4V4a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v4H4a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h4v4a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2v-4h4a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2zM7 14l-3-2 3-2v4zm5 6-2-3h4l-2 3zm0-6a2 2 0 1 1 .001-4.001A2 2 0 0 1 12 14zm-2-7 2-3 2 3h-4zm7 7v-4l3 2-3 2z"/>|
    )
  end

  @doc """
  Renders the `captions` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.captions />
  <Boxicons.captions class="w-4 h-4" />
  <Boxicons.captions solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def captions(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 10v4c0 1.103.897 2 2 2h3v-2H8v-4h3V8H8c-1.103 0-2 .897-2 2zm7 0v4c0 1.103.897 2 2 2h3v-2h-3v-4h3V8h-3c-1.103 0-2 .897-2 2z"/><path d="M20 4H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zM4 18V6h16l.002 12H4z"/>|,
      ~S|<path d="M20 4H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm-9 6H8v4h3v2H8c-1.103 0-2-.897-2-2v-4c0-1.103.897-2 2-2h3v2zm7 0h-3v4h3v2h-3c-1.103 0-2-.897-2-2v-4c0-1.103.897-2 2-2h3v2z"/>|
    )
  end

  @doc """
  Renders the `shield` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shield />
  <Boxicons.shield class="w-4 h-4" />
  <Boxicons.shield solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def shield(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.995 6.903a.997.997 0 0 0-.547-.797l-7.973-4a.997.997 0 0 0-.895-.002l-8.027 4c-.297.15-.502.437-.544.767-.013.097-1.145 9.741 8.541 15.008a.995.995 0 0 0 .969-.009c9.307-5.259 8.514-14.573 8.476-14.967zm-8.977 12.944c-6.86-4.01-7.14-10.352-7.063-12.205l7.071-3.523 6.998 3.511c.005 1.87-.481 8.243-7.006 12.217z"/>|,
      ~S|<path d="m20.496 6.106-7.973-4a.997.997 0 0 0-.895-.002l-8.027 4c-.297.15-.502.437-.544.767-.013.097-1.145 9.741 8.541 15.008a.995.995 0 0 0 .969-.009c9.307-5.259 8.514-14.573 8.476-14.967a1 1 0 0 0-.547-.797z"/>|
    )
  end

  @doc """
  Renders the `toggle_left` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.toggle_left />
  <Boxicons.toggle_left class="w-4 h-4" />
  <Boxicons.toggle_left solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def toggle_left(assigns) do
    svg(
      assigns,
      ~S|<path d="M8 9c-1.628 0-3 1.372-3 3s1.372 3 3 3 3-1.372 3-3-1.372-3-3-3z"/><path d="M16 6H8c-3.3 0-5.989 2.689-6 6v.016A6.01 6.01 0 0 0 8 18h8a6.01 6.01 0 0 0 6-5.994V12c-.009-3.309-2.699-6-6-6zm0 10H8a4.006 4.006 0 0 1-4-3.99C4.004 9.799 5.798 8 8 8h8c2.202 0 3.996 1.799 4 4.006A4.007 4.007 0 0 1 16 16zm4-3.984.443-.004.557.004h-1z"/>|,
      ~S|<path d="M16 6H8c-3.296 0-5.982 2.682-6 5.986v.042A6.01 6.01 0 0 0 8 18h8a6.01 6.01 0 0 0 6-5.994v-.018C21.985 8.685 19.297 6 16 6zm-8 9c-1.627 0-3-1.373-3-3s1.373-3 3-3 3 1.373 3 3-1.373 3-3 3z"/>|
    )
  end

  @doc """
  Renders the `calendar_check` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.calendar_check />
  <Boxicons.calendar_check class="w-4 h-4" />
  <Boxicons.calendar_check solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def calendar_check(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 4h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm.002 16H5V8h14l.002 12z"/><path d="m11 17.414 5.707-5.707-1.414-1.414L11 14.586l-2.293-2.293-1.414 1.414z"/>|,
      ~S|<path d="M5 22h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zm6-3.586-3.707-3.707 1.414-1.414L11 15.586l4.293-4.293 1.414 1.414L11 18.414zM5 7h14v2H5V7z"/>|
    )
  end

  @doc """
  Renders the `building` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.building />
  <Boxicons.building class="w-4 h-4" />
  <Boxicons.building solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def building(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 2H6c-1.103 0-2 .897-2 2v17a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4c0-1.103-.897-2-2-2zm0 18H6V4h12v16z"/><path d="M8 6h3v2H8zm5 0h3v2h-3zm-5 4h3v2H8zm5 .031h3V12h-3zM8 14h3v2H8zm5 0h3v2h-3z"/>|,
      ~S|<path d="M17 2H7a2 2 0 0 0-2 2v17a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4a2 2 0 0 0-2-2zm-6 14H8v-2h3v2zm0-4H8v-2h3v2zm0-4H8V6h3v2zm5 8h-3v-2h3v2zm0-4h-3v-2h3v2zm0-4h-3V6h3v2z"/>|
    )
  end

  @doc """
  Renders the `award` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.award />
  <Boxicons.award class="w-4 h-4" />
  <Boxicons.award solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def award(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 8.999c0 1.902.765 3.627 2 4.89V21a.998.998 0 0 0 1.447.895L12 20.118l3.553 1.776a.992.992 0 0 0 .972-.043c.295-.183.475-.504.475-.851v-7.11a6.976 6.976 0 0 0 2-4.891C19 5.14 15.86 2 12 2S5 5.14 5 8.999zm7.447 9.106a1 1 0 0 0-.895 0L9 19.382v-4.067c.911.434 1.926.685 3 .685s2.089-.25 3-.685v4.066l-2.553-1.276zM12 4c2.756 0 5 2.242 5 4.999A5.006 5.006 0 0 1 12 14c-2.757 0-5-2.243-5-5.001A5.005 5.005 0 0 1 12 4z"/>|,
      ~S|<path d="M5 8.999a6.99 6.99 0 0 0 2.879 5.646l.001.001a6.972 6.972 0 0 0 1.881.979l.051.019a6.906 6.906 0 0 0 1.163.271 6.79 6.79 0 0 0 1.024.085H12c.35 0 .69-.034 1.027-.084l.182-.028c.336-.059.664-.139.981-.243l.042-.016C17 14.693 19 12.078 19 8.999 19 5.14 15.86 2 12 2S5 5.14 5 8.999zM12 4c2.756 0 5 2.242 5 4.999h-2A3.003 3.003 0 0 0 12 6V4zM7.521 16.795V22L12 20.5l4.479 1.5.001-5.205a8.932 8.932 0 0 1-8.959 0z"/>|
    )
  end

  @doc """
  Renders the `bowl_hot` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bowl_hot />
  <Boxicons.bowl_hot class="w-4 h-4" />
  <Boxicons.bowl_hot solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bowl_hot(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 10H3a1 1 0 0 0-1 1 10 10 0 0 0 5 8.66V21a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1v-1.34A10 10 0 0 0 22 11a1 1 0 0 0-1-1zm-5.45 8.16a1 1 0 0 0-.55.9V20H9v-.94a1 1 0 0 0-.55-.9A8 8 0 0 1 4.06 12h15.88a8 8 0 0 1-4.39 6.16zM9 9V7.93a4.53 4.53 0 0 0-1.28-3.15A2.49 2.49 0 0 1 7 3V2H5v1a4.53 4.53 0 0 0 1.28 3.17A2.49 2.49 0 0 1 7 7.93V9zm4 0V7.93a4.53 4.53 0 0 0-1.28-3.15A2.49 2.49 0 0 1 11 3V2H9v1a4.53 4.53 0 0 0 1.28 3.15A2.49 2.49 0 0 1 11 7.93V9zm4 0V7.93a4.53 4.53 0 0 0-1.28-3.15A2.49 2.49 0 0 1 15 3V2h-2v1a4.53 4.53 0 0 0 1.28 3.15A2.49 2.49 0 0 1 15 7.93V9z"/>|,
      ~S|<path d="M21 10H3a1 1 0 0 0-1 1 10 10 0 0 0 5 8.66V21a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1v-1.34A10 10 0 0 0 22 11a1 1 0 0 0-1-1zM9 9V7.93a4.51 4.51 0 0 0-1.28-3.15A2.49 2.49 0 0 1 7 3V2H5v1a4.51 4.51 0 0 0 1.28 3.17A2.49 2.49 0 0 1 7 7.93V9zm4 0V7.93a4.51 4.51 0 0 0-1.28-3.15A2.49 2.49 0 0 1 11 3V2H9v1a4.51 4.51 0 0 0 1.28 3.15A2.49 2.49 0 0 1 11 7.93V9zm4 0V7.93a4.51 4.51 0 0 0-1.28-3.15A2.49 2.49 0 0 1 15 3V2h-2v1a4.51 4.51 0 0 0 1.28 3.15A2.49 2.49 0 0 1 15 7.93V9z"/>|
    )
  end

  @doc """
  Renders the `message_alt_dots` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_alt_dots />
  <Boxicons.message_alt_dots class="w-4 h-4" />
  <Boxicons.message_alt_dots solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_alt_dots(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 2H5c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.586L12 21.414 15.414 18H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14h-4.414L12 18.586 9.414 16H5V4h14v12z"/>|,
      ~S|<path d="M19 2H5c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.5l3.5 4 3.5-4H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM9 12a2 2 0 1 1 .001-4.001A2 2 0 0 1 9 12zm6 0a2 2 0 1 1 .001-4.001A2 2 0 0 1 15 12z"/>|
    )
  end

  @doc """
  Renders the `time` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.time />
  <Boxicons.time class="w-4 h-4" />
  <Boxicons.time solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def time(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M13 7h-2v6h6v-2h-4z"/>|,
      ~S|<path d="M12.25 2c-5.514 0-10 4.486-10 10s4.486 10 10 10 10-4.486 10-10-4.486-10-10-10zM18 13h-6.75V6h2v5H18v2z"/>|
    )
  end

  @doc """
  Renders the `cube_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cube_alt />
  <Boxicons.cube_alt class="w-4 h-4" />
  <Boxicons.cube_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cube_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.895 3.553A1.001 1.001 0 0 0 17 3H7c-.379 0-.725.214-.895.553l-4 8a1 1 0 0 0 0 .895l4 8c.17.338.516.552.895.552h10c.379 0 .725-.214.895-.553l4-8a1 1 0 0 0 0-.895l-4-7.999zM19.382 11h-7.764l-3-6h7.764l3 6zM4.118 12 7 6.236 9.882 12 7 17.764 4.118 12zm12.264 7H8.618l3-6h7.764l-3 6z"/>|,
      ~S|<path d="M17.895 3.553A1.001 1.001 0 0 0 17 3H7c-.379 0-.725.214-.895.553l-4 8a1 1 0 0 0 0 .895l4 8c.17.338.516.552.895.552h10c.379 0 .725-.214.895-.553l4-8a1 1 0 0 0 0-.895l-4-7.999zM19.382 11h-7.764l-3-6h7.764l3 6zm-3 8H8.618l3-6h7.764l-3 6z"/>|
    )
  end

  @doc """
  Renders the `trophy` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.trophy />
  <Boxicons.trophy class="w-4 h-4" />
  <Boxicons.trophy solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def trophy(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 4h-3V3a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1v1H3a1 1 0 0 0-1 1v3c0 4.31 1.799 6.91 4.819 7.012A6.001 6.001 0 0 0 11 17.91V20H9v2h6v-2h-2v-2.09a6.01 6.01 0 0 0 4.181-2.898C20.201 14.91 22 12.31 22 8V5a1 1 0 0 0-1-1zM4 8V6h2v6.83C4.216 12.078 4 9.299 4 8zm8 8c-2.206 0-4-1.794-4-4V4h8v8c0 2.206-1.794 4-4 4zm6-3.17V6h2v2c0 1.299-.216 4.078-2 4.83z"/>|,
      ~S|<path d="M21 4h-3V3a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1v1H3a1 1 0 0 0-1 1v3c0 4.31 1.8 6.91 4.82 7A6 6 0 0 0 11 17.91V20H9v2h6v-2h-2v-2.09A6 6 0 0 0 17.18 15c3-.1 4.82-2.7 4.82-7V5a1 1 0 0 0-1-1zM4 8V6h2v6.83C4.22 12.08 4 9.3 4 8zm14 4.83V6h2v2c0 1.3-.22 4.08-2 4.83z"/>|
    )
  end

  @doc """
  Renders the `sad` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sad />
  <Boxicons.sad class="w-4 h-4" />
  <Boxicons.sad solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def sad(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M12 14c-3 0-4 3-4 3h8s-1-3-4-3z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-5 8.5a1.5 1.5 0 1 1 3.001.001A1.5 1.5 0 0 1 7 10.5zM8 17s1-3 4-3 4 3 4 3H8zm7.493-5.014a1.494 1.494 0 1 1 .001-2.987 1.494 1.494 0 0 1-.001 2.987z"/>|
    )
  end

  @doc """
  Renders the `file_find` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_find />
  <Boxicons.file_find class="w-4 h-4" />
  <Boxicons.file_find solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def file_find(assigns) do
    svg(
      assigns,
      ~S|<path d="M13.707 2.293A.996.996 0 0 0 13 2H6c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V9a.996.996 0 0 0-.293-.707l-6-6zM6 4h6.586L18 9.414l.002 9.174-2.568-2.568c.35-.595.566-1.281.566-2.02 0-2.206-1.794-4-4-4s-4 1.794-4 4 1.794 4 4 4c.739 0 1.425-.216 2.02-.566L16.586 20H6V4zm6 12c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2z"/>|,
      ~S|<path d="M6 22h12c.178 0 .348-.03.512-.074l-3.759-3.759A4.966 4.966 0 0 1 12 19c-2.757 0-5-2.243-5-5s2.243-5 5-5 5 2.243 5 5a4.964 4.964 0 0 1-.833 2.753l3.759 3.759c.044-.164.074-.334.074-.512V8l-6-6H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2z"/>|
    )
  end

  @doc """
  Renders the `message_square_x` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_square_x />
  <Boxicons.message_square_x class="w-4 h-4" />
  <Boxicons.message_square_x solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_square_x(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm4 14c0 2.206-1.794 4-4 4H4V8c0-2.206 1.794-4 4-4h8c2.206 0 4 1.794 4 4v8z"/><path d="M15.292 7.295 12 10.587 8.708 7.295 7.294 8.709l3.292 3.292-3.292 3.292 1.414 1.414L12 13.415l3.292 3.292 1.414-1.414-3.292-3.292 3.292-3.292z"/>|,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm.706 13.293-1.414 1.414L12 13.415l-3.292 3.292-1.414-1.414 3.292-3.292-3.292-3.292 1.414-1.414L12 10.587l3.292-3.292 1.414 1.414-3.292 3.292 3.292 3.292z"/>|
    )
  end

  @doc """
  Renders the `purchase_tag` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.purchase_tag />
  <Boxicons.purchase_tag class="w-4 h-4" />
  <Boxicons.purchase_tag solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def purchase_tag(assigns) do
    svg(
      assigns,
      ~S|<path d="M13.707 3.293A.996.996 0 0 0 13 3H4a1 1 0 0 0-1 1v9c0 .266.105.52.293.707l8 8a.997.997 0 0 0 1.414 0l9-9a.999.999 0 0 0 0-1.414l-8-8zM12 19.586l-7-7V5h7.586l7 7L12 19.586z"/>|,
      ~S|<path d="M12.586 2.586A2 2 0 0 0 11.172 2H4a2 2 0 0 0-2 2v7.172a2 2 0 0 0 .586 1.414l8 8a2 2 0 0 0 2.828 0l7.172-7.172a2 2 0 0 0 0-2.828l-8-8zM7 9a2 2 0 1 1 .001-4.001A2 2 0 0 1 7 9z"/>|
    )
  end

  @doc """
  Renders the `radio` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.radio />
  <Boxicons.radio class="w-4 h-4" />
  <Boxicons.radio solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def radio(assigns) do
    svg(
      assigns,
      ~S|<path d="m20.25 5.025-7.898-2.962-.703 1.873L14.484 5H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V7c0-1.018-.767-1.85-1.75-1.975zM4 19v-7h16v-2H4V7h16l.001 12H4z"/><path d="M6 15h4.999v2H6z"/>|,
      ~S|<path d="m20.249 5.025-7.897-2.962-.703 1.873L14.484 5H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V7c0-1.02-.766-1.851-1.751-1.975zM10 17H6v-2h4v2zm6.5 1a2.5 2.5 0 1 1 0-5 2.5 2.5 0 0 1 0 5zm3.5-7H4V7h16v4z"/>|
    )
  end

  @doc """
  Renders the `chat` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chat />
  <Boxicons.chat class="w-4 h-4" />
  <Boxicons.chat solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chat(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 18v3.766l1.515-.909L11.277 18H16c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2H4c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2h1zM4 8h12v8h-5.277L7 18.234V16H4V8z"/><path d="M20 2H8c-1.103 0-2 .897-2 2h12c1.103 0 2 .897 2 2v8c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2z"/>|,
      ~S|<path d="M4 18h2v4.081L11.101 18H16c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2H4c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2z"/><path d="M20 2H8c-1.103 0-2 .897-2 2h12c1.103 0 2 .897 2 2v8c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `happy_heart_eyes` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.happy_heart_eyes />
  <Boxicons.happy_heart_eyes class="w-4 h-4" />
  <Boxicons.happy_heart_eyes solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def happy_heart_eyes(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 18c4 0 5-4 5-4H7s1 4 5 4z"/><path d="M12 22c5.514 0 10-4.486 10-10S17.514 2 12 2 2 6.486 2 12s4.486 10 10 10zm0-18c4.411 0 8 3.589 8 8s-3.589 8-8 8-8-3.589-8-8 3.589-8 8-8z"/><path d="m8.535 12.634 2.05-2.083a1.485 1.485 0 0 0-.018-2.118 1.49 1.49 0 0 0-2.065-.034 1.488 1.488 0 0 0-2.067.068c-.586.6-.579 1.53.019 2.117l2.081 2.05zm7 0 2.05-2.083a1.485 1.485 0 0 0-.018-2.118 1.49 1.49 0 0 0-2.065-.034 1.488 1.488 0 0 0-2.068.067c-.586.6-.579 1.53.019 2.117l2.082 2.051z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zM6.435 8.467A1.49 1.49 0 0 1 8.502 8.4a1.49 1.49 0 0 1 2.065.033c.597.592.604 1.521.018 2.118l-2.05 2.083-2.082-2.05a1.484 1.484 0 0 1-.018-2.117zM12 18c-4 0-5-4-5-4h10s-1 4-5 4zm5.585-7.449-2.05 2.083-2.082-2.05a1.485 1.485 0 0 1-.019-2.117 1.49 1.49 0 0 1 2.068-.067 1.49 1.49 0 0 1 2.065.033c.597.591.605 1.521.018 2.118z"/>|
    )
  end

  @doc """
  Renders the `video_off` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.video_off />
  <Boxicons.video_off class="w-4 h-4" />
  <Boxicons.video_off solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def video_off(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 7c0-1.103-.897-2-2-2H6.414L3.707 2.293 2.293 3.707l18 18 1.414-1.414L18 16.586v-2.919L22 17V7l-4 3.333V7zm-2 7.586L8.414 7H16v7.586zM4 19h10.879l-2-2H4V8.121L2.145 6.265A1.977 1.977 0 0 0 2 7v10c0 1.103.897 2 2 2z"/>|,
      ~S|<path d="M4 19h10.879L2.145 6.265A1.977 1.977 0 0 0 2 7v10c0 1.103.897 2 2 2zM18 7c0-1.103-.897-2-2-2H6.414L3.707 2.293 2.293 3.707l18 18 1.414-1.414L18 16.586v-2.919L22 17V7l-4 3.333V7z"/>|
    )
  end

  @doc """
  Renders the `search_alt_2` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.search_alt_2 />
  <Boxicons.search_alt_2 class="w-4 h-4" />
  <Boxicons.search_alt_2 solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def search_alt_2(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.023 16.977a35.13 35.13 0 0 1-1.367-1.384c-.372-.378-.596-.653-.596-.653l-2.8-1.337A6.962 6.962 0 0 0 16 9c0-3.859-3.14-7-7-7S2 5.141 2 9s3.14 7 7 7c1.763 0 3.37-.66 4.603-1.739l1.337 2.8s.275.224.653.596c.387.363.896.854 1.384 1.367l1.358 1.392.604.646 2.121-2.121-.646-.604c-.379-.372-.885-.866-1.391-1.36zM9 14c-2.757 0-5-2.243-5-5s2.243-5 5-5 5 2.243 5 5-2.243 5-5 5z"/>|,
      ~S|<path d="M9 16c1.763 0 3.37-.66 4.603-1.739l1.337 2.8s.275.224.653.596c.387.363.896.854 1.384 1.367l1.358 1.392.604.646 2.121-2.121-.646-.604-1.392-1.358a35.13 35.13 0 0 1-1.367-1.384c-.372-.378-.596-.653-.596-.653l-2.8-1.337A6.967 6.967 0 0 0 16 9c0-3.859-3.141-7-7-7S2 5.141 2 9s3.141 7 7 7z"/>|
    )
  end

  @doc """
  Renders the `spreadsheet` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.spreadsheet />
  <Boxicons.spreadsheet class="w-4 h-4" />
  <Boxicons.spreadsheet solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def spreadsheet(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5zM5 19V5h14l.002 14H5z"/><path d="M7 7h1.998v2H7zm4 0h6v2h-6zm-4 4h1.998v2H7zm4 0h6v2h-6zm-4 4h1.998v2H7zm4 0h6v2h-6z"/>|,
      ~S|<path d="M3 5v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2zm7 2h8v2h-8V7zm0 4h8v2h-8v-2zm0 4h8v2h-8v-2zM6 7h2v2H6V7zm0 4h2v2H6v-2zm0 4h2v2H6v-2z"/>|
    )
  end

  @doc """
  Renders the `message_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_alt />
  <Boxicons.message_alt class="w-4 h-4" />
  <Boxicons.message_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 2H5c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.586L12 21.414 15.414 18H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14h-4.414L12 18.586 9.414 16H5V4h14v12z"/>|,
      ~S|<path d="M18.999 2h-14c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.5l3.5 4 3.5-4h3.5c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `store` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.store />
  <Boxicons.store class="w-4 h-4" />
  <Boxicons.store solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def store(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.148 2.971A2.008 2.008 0 0 0 17.434 2H6.566c-.698 0-1.355.372-1.714.971L2.143 7.485A.995.995 0 0 0 2 8a3.97 3.97 0 0 0 1 2.618V19c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2v-8.382A3.97 3.97 0 0 0 22 8a.995.995 0 0 0-.143-.515l-2.709-4.514zm.836 5.28A2.003 2.003 0 0 1 18 10c-1.103 0-2-.897-2-2 0-.068-.025-.128-.039-.192l.02-.004L15.22 4h2.214l2.55 4.251zM10.819 4h2.361l.813 4.065C13.958 9.137 13.08 10 12 10s-1.958-.863-1.993-1.935L10.819 4zM6.566 4H8.78l-.76 3.804.02.004C8.025 7.872 8 7.932 8 8c0 1.103-.897 2-2 2a2.003 2.003 0 0 1-1.984-1.749L6.566 4zM10 19v-3h4v3h-4zm6 0v-3c0-1.103-.897-2-2-2h-4c-1.103 0-2 .897-2 2v3H5v-7.142c.321.083.652.142 1 .142a3.99 3.99 0 0 0 3-1.357c.733.832 1.807 1.357 3 1.357s2.267-.525 3-1.357A3.99 3.99 0 0 0 18 12c.348 0 .679-.059 1-.142V19h-3z"/>|,
      ~S|<path d="M21.999 8a.997.997 0 0 0-.143-.515L19.147 2.97A2.01 2.01 0 0 0 17.433 2H6.565c-.698 0-1.355.372-1.714.971L2.142 7.485A.997.997 0 0 0 1.999 8c0 1.005.386 1.914 1 2.618V20a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1v-5h4v5a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1v-9.382c.614-.704 1-1.613 1-2.618zm-2.016.251A2.002 2.002 0 0 1 17.999 10c-1.103 0-2-.897-2-2 0-.068-.025-.128-.039-.192l.02-.004L15.219 4h2.214l2.55 4.251zm-9.977-.186L10.818 4h2.361l.813 4.065C13.957 9.138 13.079 10 11.999 10s-1.958-.862-1.993-1.935zM6.565 4h2.214l-.76 3.804.02.004c-.015.064-.04.124-.04.192 0 1.103-.897 2-2 2a2.002 2.002 0 0 1-1.984-1.749L6.565 4zm3.434 12h-4v-3h4v3z"/>|
    )
  end

  @doc """
  Renders the `dish` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dish />
  <Boxicons.dish class="w-4 h-4" />
  <Boxicons.dish solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dish(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 15c0-4.625-3.507-8.441-8-8.941V4h-2v2.059c-4.493.5-8 4.316-8 8.941v2h18v-2zM5 15c0-3.859 3.141-7 7-7s7 3.141 7 7H5zm-3 3h20v2H2z"/>|,
      ~S|<path d="M21 15c0-4.625-3.507-8.441-8-8.941V4h-2v2.059c-4.493.5-8 4.316-8 8.941v2h18v-2zM2 18h20v2H2z"/>|
    )
  end

  @doc """
  Renders the `alarm` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.alarm />
  <Boxicons.alarm class="w-4 h-4" />
  <Boxicons.alarm solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def alarm(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 4c-4.879 0-9 4.121-9 9s4.121 9 9 9 9-4.121 9-9-4.121-9-9-9zm0 16c-3.794 0-7-3.206-7-7s3.206-7 7-7 7 3.206 7 7-3.206 7-7 7z"/><path d="M13 12V8h-2v6h6v-2zm4.284-8.293 1.412-1.416 3.01 3-1.413 1.417zm-10.586 0-2.99 2.999L2.29 5.294l2.99-3z"/>|,
      ~S|<path d="M12 4c-4.878 0-9 4.122-9 9s4.122 9 9 9c4.879 0 9-4.122 9-9s-4.121-9-9-9zm5 10h-6V8h2v4h4v2zm3.292-7.292-3.01-3 1.412-1.417 3.01 3zM5.282 2.294 6.7 3.706l-2.99 3-1.417-1.413z"/>|
    )
  end

  @doc """
  Renders the `rocket` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.rocket />
  <Boxicons.rocket class="w-4 h-4" />
  <Boxicons.rocket solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def rocket(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.92 2.38A15.72 15.72 0 0 0 17.5 2a8.26 8.26 0 0 0-6 2.06Q9.89 5.67 8.31 7.27c-1.21-.13-4.08-.2-6 1.74a1 1 0 0 0 0 1.41l11.3 11.32a1 1 0 0 0 1.41 0c1.95-2 1.89-4.82 1.77-6l3.21-3.2c3.19-3.19 1.74-9.18 1.68-9.43a1 1 0 0 0-.76-.73zm-2.36 8.75L15 14.67a1 1 0 0 0-.27.9 6.81 6.81 0 0 1-.54 3.94L4.52 9.82a6.67 6.67 0 0 1 4-.5A1 1 0 0 0 9.39 9s1.4-1.45 3.51-3.56A6.61 6.61 0 0 1 17.5 4a14.51 14.51 0 0 1 2.33.2c.24 1.43.62 5.04-1.27 6.93z"/><path d="M5 16c-2 1-2 5-2 5a7.81 7.81 0 0 0 5-2z"/>|,
      ~S|<path d="M15.78 15.84S18.64 13 19.61 12c3.07-3 1.54-9.18 1.54-9.18S15 1.29 12 4.36C9.66 6.64 8.14 8.22 8.14 8.22S4.3 7.42 2 9.72L14.25 22c2.3-2.33 1.53-6.16 1.53-6.16zm-1.5-9a2 2 0 0 1 2.83 0 2 2 0 1 1-2.83 0zM3 21a7.81 7.81 0 0 0 5-2l-3-3c-2 1-2 5-2 5z"/>|
    )
  end

  @doc """
  Renders the `caret_down_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.caret_down_circle />
  <Boxicons.caret_down_circle class="w-4 h-4" />
  <Boxicons.caret_down_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def caret_down_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="m12 16 5-6H7z"/><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10c5.515 0 10-4.486 10-10S17.515 2 12 2zm0 14-5-6h10l-5 6z"/>|
    )
  end

  @doc """
  Renders the `map` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.map />
  <Boxicons.map class="w-4 h-4" />
  <Boxicons.map solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def map(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 14c2.206 0 4-1.794 4-4s-1.794-4-4-4-4 1.794-4 4 1.794 4 4 4zm0-6c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2z"/><path d="M11.42 21.814a.998.998 0 0 0 1.16 0C12.884 21.599 20.029 16.44 20 10c0-4.411-3.589-8-8-8S4 5.589 4 9.995c-.029 6.445 7.116 11.604 7.42 11.819zM12 4c3.309 0 6 2.691 6 6.005.021 4.438-4.388 8.423-6 9.73-1.611-1.308-6.021-5.294-6-9.735 0-3.309 2.691-6 6-6z"/>|,
      ~S|<path d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"/>|
    )
  end

  @doc """
  Renders the `smile` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.smile />
  <Boxicons.smile class="w-4 h-4" />
  <Boxicons.smile solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def smile(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M14.829 14.828a4.055 4.055 0 0 1-1.272.858 4.002 4.002 0 0 1-4.875-1.45l-1.658 1.119a6.063 6.063 0 0 0 1.621 1.62 5.963 5.963 0 0 0 2.148.903 6.042 6.042 0 0 0 2.415 0 5.972 5.972 0 0 0 2.148-.903c.313-.212.612-.458.886-.731.272-.271.52-.571.734-.889l-1.658-1.119a4.017 4.017 0 0 1-.489.592z"/>|,
      ~S|<path d="M12 22c5.514 0 10-4.486 10-10S17.514 2 12 2 2 6.486 2 12s4.486 10 10 10zm3.493-13a1.494 1.494 0 1 1-.001 2.987A1.494 1.494 0 0 1 15.493 9zm-4.301 6.919a4.108 4.108 0 0 0 1.616 0c.253-.052.505-.131.75-.233.234-.1.464-.224.679-.368.208-.142.407-.306.591-.489.183-.182.347-.381.489-.592l1.658 1.117a6.027 6.027 0 0 1-1.619 1.621 6.003 6.003 0 0 1-2.149.904 6.116 6.116 0 0 1-2.414-.001 5.919 5.919 0 0 1-2.148-.903 6.078 6.078 0 0 1-1.621-1.622l1.658-1.117c.143.211.307.41.488.59a3.988 3.988 0 0 0 2.022 1.093zM8.5 9a1.5 1.5 0 1 1-.001 3.001A1.5 1.5 0 0 1 8.5 9z"/>|
    )
  end

  @doc """
  Renders the `brightness_half` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.brightness_half />
  <Boxicons.brightness_half class="w-4 h-4" />
  <Boxicons.brightness_half solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def brightness_half(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.707 11.293-2-2L19 8.586V6a1 1 0 0 0-1-1h-2.586l-.707-.707-2-2a.999.999 0 0 0-1.414 0l-2 2L8.586 5H6a1 1 0 0 0-1 1v2.586l-.707.707-2 2a.999.999 0 0 0 0 1.414l2 2 .707.707V18a1 1 0 0 0 1 1h2.586l.707.707 2 2a.997.997 0 0 0 1.414 0l2-2 .707-.707H18a1 1 0 0 0 1-1v-2.586l.707-.707 2-2a.999.999 0 0 0 0-1.414zm-4.414 3-.293.293V17h-2.414l-.293.293-1 1L12 19.586l-1.293-1.293-1-1L9.414 17H7v-2.414l-.293-.293-1-1L4.414 12l1.293-1.293 1-1L7 9.414V7h2.414l.293-.293 1-1L12 4.414l1.293 1.293 1 1 .293.293H17v2.414l.293.293 1 1L19.586 12l-1.293 1.293-1 1z"/><path d="M12 8v8c2.206 0 4-1.794 4-4s-1.794-4-4-4z"/>|,
      ~S|<path d="M21.546 11.646 19 9.101V5.5a.5.5 0 0 0-.5-.5h-3.601l-2.546-2.546a.5.5 0 0 0-.707 0L9.101 5H5.5a.5.5 0 0 0-.5.5v3.601l-2.546 2.546a.5.5 0 0 0 0 .707L5 14.899V18.5a.5.5 0 0 0 .5.5h3.601l2.546 2.546a.5.5 0 0 0 .707 0L14.899 19H18.5a.5.5 0 0 0 .5-.5v-3.601l2.546-2.546a.5.5 0 0 0 0-.707zM12 8a4 4 0 0 1 0 8"/>|
    )
  end

  @doc """
  Renders the `copyright` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.copyright />
  <Boxicons.copyright class="w-4 h-4" />
  <Boxicons.copyright solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def copyright(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 22c5.421 0 10-4.579 10-10S17.421 2 12 2 2 6.579 2 12s4.579 10 10 10zm0-18c4.337 0 8 3.663 8 8s-3.663 8-8 8-8-3.663-8-8 3.663-8 8-8z"/><path d="M12 17c.901 0 2.581-.168 3.707-1.292l-1.414-1.416C13.85 14.735 12.992 15 12 15c-1.626 0-3-1.374-3-3s1.374-3 3-3c.993 0 1.851.265 2.293.707l1.414-1.414C14.582 7.168 12.901 7 12 7c-2.757 0-5 2.243-5 5s2.243 5 5 5z"/>|,
      ~S|<path d="M12 2C6.579 2 2 6.58 2 12s4.579 10 10 10 10-4.58 10-10S17.421 2 12 2zm0 13c.992 0 1.85-.265 2.293-.708l1.414 1.415C14.581 16.832 12.901 17 12 17c-2.757 0-5-2.243-5-5s2.243-5 5-5c.901 0 2.582.168 3.707 1.293l-1.414 1.414C13.851 9.264 12.993 9 12 9c-1.626 0-3 1.374-3 3s1.374 3 3 3z"/>|
    )
  end

  @doc """
  Renders the `wine` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.wine />
  <Boxicons.wine class="w-4 h-4" />
  <Boxicons.wine solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def wine(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.713 12.123c.264-.952.312-2.03.143-3.206l-.866-6.059A1 1 0 0 0 18 2H6a1 1 0 0 0-.99.858l-.865 6.058c-.169 1.177-.121 2.255.142 3.206.864 3.134 3.551 5.392 6.713 5.794V20H9v2h6v-2h-2v-2.084c3.162-.402 5.849-2.66 6.713-5.793zM17.133 4l.57 4H6.296l.571-4h10.266zM6.215 11.59c-.132-.474-.181-1.009-.159-1.59h11.889c.021.581-.028 1.116-.159 1.591A6.021 6.021 0 0 1 12 16a6.019 6.019 0 0 1-5.785-4.41z"/>|,
      ~S|<path d="M11 17.916V20H9v2h6v-2h-2v-2.084c3.162-.402 5.849-2.66 6.713-5.793.264-.952.312-2.03.143-3.206l-.866-6.059A1 1 0 0 0 18 2H6a1 1 0 0 0-.99.858l-.865 6.058c-.169 1.177-.121 2.255.143 3.206.863 3.134 3.55 5.392 6.712 5.794zM17.133 4l.57 4H6.296l.571-4h10.266z"/>|
    )
  end

  @doc """
  Renders the `paint_roll` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.paint_roll />
  <Boxicons.paint_roll class="w-4 h-4" />
  <Boxicons.paint_roll solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def paint_roll(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 2H7c-1.103 0-2 .897-2 2v3c0 1.103.897 2 2 2h11c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM7 7V4h11l.002 3H7z"/><path d="M13 15v-2c0-1.103-.897-2-2-2H4V5c-1.103 0-2 .897-2 2v4c0 1.103.897 2 2 2h7v2a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1v-5a1 1 0 0 0-1-1z"/>|,
      ~S|<path d="M18 2H7c-1.103 0-2 .897-2 2v3c0 1.103.897 2 2 2h11c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2z"/><path d="M13 15v-2c0-1.103-.897-2-2-2H4V5c-1.103 0-2 .897-2 2v4c0 1.103.897 2 2 2h7v2a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1v-5a1 1 0 0 0-1-1z"/>|
    )
  end

  @doc """
  Renders the `purchase_tag_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.purchase_tag_alt />
  <Boxicons.purchase_tag_alt class="w-4 h-4" />
  <Boxicons.purchase_tag_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def purchase_tag_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.707 2.293A.997.997 0 0 0 11 2H6a.997.997 0 0 0-.707.293l-3 3A.996.996 0 0 0 2 6v5c0 .266.105.52.293.707l10 10a.997.997 0 0 0 1.414 0l8-8a.999.999 0 0 0 0-1.414l-10-10zM13 19.586l-9-9V6.414L6.414 4h4.172l9 9L13 19.586z"/>|,
      ~S|<path d="M11.707 2.293A.996.996 0 0 0 11 2H6a.996.996 0 0 0-.707.293l-3 3A.996.996 0 0 0 2 6v5c0 .266.105.52.293.707l10 10a.997.997 0 0 0 1.414 0l8-8a.999.999 0 0 0 0-1.414l-10-10zM8.353 10a1.647 1.647 0 1 1-.001-3.293A1.647 1.647 0 0 1 8.353 10z"/>|
    )
  end

  @doc """
  Renders the `movie` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.movie />
  <Boxicons.movie class="w-4 h-4" />
  <Boxicons.movie solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def movie(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zm.001 6c-.001 0-.001 0 0 0h-.466l-2.667-4H20l.001 4zM9.535 9 6.868 5h2.597l2.667 4H9.535zm5 0-2.667-4h2.597l2.667 4h-2.597zM4 5h.465l2.667 4H4V5zm0 14v-8h16l.002 8H4z"/>|,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zm.001 6c-.001 0-.001 0 0 0h-.466l-2.667-4H20l.001 4zm-5.466 0-2.667-4h2.596l2.667 4h-2.596zm-2.404 0H9.535L6.869 5h2.596l2.666 4zM4 5h.465l2.667 4H4V5z"/>|
    )
  end

  @doc """
  Renders the `low_vision` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.low_vision />
  <Boxicons.low_vision class="w-4 h-4" />
  <Boxicons.low_vision solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def low_vision(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 4.998c-1.836 0-3.356.389-4.617.971L3.707 2.293 2.293 3.707l3.315 3.316c-2.613 1.952-3.543 4.618-3.557 4.66l-.105.316.105.316C2.073 12.382 4.367 19 12 19c1.835 0 3.354-.389 4.615-.971l3.678 3.678 1.414-1.414-3.317-3.317c2.614-1.952 3.545-4.618 3.559-4.66l.105-.316-.105-.316c-.022-.068-2.316-6.686-9.949-6.686zM4.074 12c.103-.236.274-.586.521-.989l5.867 5.867C6.249 16.23 4.523 13.035 4.074 12zm9.247 4.907-7.48-7.481a8.138 8.138 0 0 1 1.188-.982l8.055 8.054a8.835 8.835 0 0 1-1.763.409zm3.648-1.352-1.541-1.541c.354-.596.572-1.28.572-2.015 0-.474-.099-.924-.255-1.349A.983.983 0 0 1 15 11a1 1 0 0 1-1-1c0-.439.288-.802.682-.936A3.97 3.97 0 0 0 12 7.999c-.735 0-1.419.218-2.015.572l-1.07-1.07A9.292 9.292 0 0 1 12 6.998c5.351 0 7.425 3.847 7.926 5a8.573 8.573 0 0 1-2.957 3.557z"/>|,
      ~S|<path d="M12 4.998c-1.836 0-3.356.389-4.617.971L3.707 2.293 2.293 3.707l3.315 3.315c-2.613 1.952-3.543 4.618-3.557 4.66l-.105.316.105.316C2.073 12.382 4.367 19 12 19c1.835 0 3.354-.389 4.615-.971l3.678 3.678 1.414-1.414-3.317-3.317c2.614-1.952 3.545-4.618 3.559-4.66l.105-.316-.105-.316c-.022-.068-2.316-6.686-9.949-6.686zM12.043 7H12a5 5 0 0 1 5 5 4.894 4.894 0 0 1-.852 2.734l-.721-.721A3.919 3.919 0 0 0 16 11.999c0-.474-.099-.925-.255-1.349A.985.985 0 0 1 15 11a1 1 0 0 1-1-1c0-.439.288-.802.682-.936A3.965 3.965 0 0 0 12 7.999c-.735 0-1.419.218-2.015.572l-.72-.72C10.053 7.326 10.982 7 12 7h-.043L12 6.998l.043.002zm-7.969 4.999c.103-.235.274-.586.521-.989l5.867 5.867c-4.213-.647-5.939-3.842-6.388-4.878zm9.247 4.908-7.48-7.48a8.146 8.146 0 0 1 1.188-.984l8.055 8.055a8.835 8.835 0 0 1-1.763.409z"/>|
    )
  end

  @doc """
  Renders the `copy` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.copy />
  <Boxicons.copy class="w-4 h-4" />
  <Boxicons.copy solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def copy(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H10c-1.103 0-2 .897-2 2v4H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h10c1.103 0 2-.897 2-2v-4h4c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM4 20V10h10l.002 10H4zm16-6h-4v-4c0-1.103-.897-2-2-2h-4V4h10v10z"/>|,
      ~S|<path d="M14 8H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h10c1.103 0 2-.897 2-2V10c0-1.103-.897-2-2-2z"/><path d="M20 2H10a2 2 0 0 0-2 2v2h8a2 2 0 0 1 2 2v8h2a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2z"/>|
    )
  end

  @doc """
  Renders the `location_plus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.location_plus />
  <Boxicons.location_plus class="w-4 h-4" />
  <Boxicons.location_plus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def location_plus(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.42 21.815a1.004 1.004 0 0 0 1.16 0C12.884 21.598 20.029 16.44 20 10c0-4.411-3.589-8-8-8S4 5.589 4 9.996c-.029 6.444 7.116 11.602 7.42 11.819zM12 4c3.309 0 6 2.691 6 6.004.021 4.438-4.388 8.423-6 9.731-1.611-1.308-6.021-5.293-6-9.735 0-3.309 2.691-6 6-6z"/><path d="M11 14h2v-3h3V9h-3V6h-2v3H8v2h3z"/>|,
      ~S|<path d="M12 22s8.029-5.56 8-12c0-4.411-3.589-8-8-8S4 5.589 4 9.995C3.971 16.44 11.696 21.784 12 22zM8 9h3V6h2v3h3v2h-3v3h-2v-3H8V9z"/>|
    )
  end

  @doc """
  Renders the `objects_vertical_top` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.objects_vertical_top />
  <Boxicons.objects_vertical_top class="w-4 h-4" />
  <Boxicons.objects_vertical_top solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def objects_vertical_top(assigns) do
    svg(
      assigns,
      ~S|<path d="M2 2h20v2H2zM11 21V7a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1zm-2-1H6V8h3zM19 6h-5a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V7a1 1 0 0 0-1-1zm-1 10h-3V8h3z"/>|,
      ~S|<path d="M2 2h20v2H2z"/>|
    )
  end

  @doc """
  Renders the `baseball` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.baseball />
  <Boxicons.baseball class="w-4 h-4" />
  <Boxicons.baseball solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def baseball(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.99 2a9.937 9.937 0 0 0-7.071 2.938c-3.898 3.898-3.898 10.243 0 14.143 1.895 1.895 4.405 2.938 7.071 2.938s5.177-1.043 7.071-2.938c3.899-3.899 3.899-10.244 0-14.143A9.937 9.937 0 0 0 11.99 2zm5.657 15.667a7.957 7.957 0 0 1-3.816 2.129l-.001-.037a6.199 6.199 0 0 1 .421-2.259l-1.863-.729a8.188 8.188 0 0 0-.552 3.239 7.953 7.953 0 0 1-5.503-2.344 7.965 7.965 0 0 1-2.332-5.503c.08.002.16.005.24.005a8.16 8.16 0 0 0 2.988-.558l-.73-1.862a6.156 6.156 0 0 1-2.281.412 7.936 7.936 0 0 1 2.115-3.809 7.963 7.963 0 0 1 3.972-2.168 5.974 5.974 0 0 1-.357 1.95l1.881.681a7.92 7.92 0 0 0 .482-2.701c0-.033-.004-.065-.005-.098 2.013.079 3.9.896 5.342 2.336a7.959 7.959 0 0 1 2.324 5.348 7.908 7.908 0 0 0-2.787.473l.684 1.88a5.91 5.91 0 0 1 1.935-.361 7.953 7.953 0 0 1-2.157 3.976z"/><path d="M14.112 14.13a7.599 7.599 0 0 0-.926 1.121l1.656 1.12c.2-.296.43-.574.683-.826a6.428 6.428 0 0 1 1.178-.929l-1.049-1.703a8.408 8.408 0 0 0-1.542 1.217zM8.456 8.474a5.713 5.713 0 0 1-.827.681l1.119 1.658a7.72 7.72 0 0 0 1.122-.926 8.501 8.501 0 0 0 1.217-1.542L9.384 7.297a6.519 6.519 0 0 1-.928 1.177z"/>|,
      ~S|<path d="M21.984 12.236a9.966 9.966 0 0 0-2.913-7.308 9.966 9.966 0 0 0-7.308-2.913 9.04 9.04 0 0 1-.673 4.313l-1.84-.78a7.044 7.044 0 0 0 .526-3.284 9.927 9.927 0 0 0-4.847 2.665 9.924 9.924 0 0 0-2.666 4.852 7.082 7.082 0 0 0 2.576-.276l.575 1.916c-1.1.33-2.257.443-3.398.344a9.964 9.964 0 0 0 2.913 7.307 9.965 9.965 0 0 0 7.307 2.913 9.079 9.079 0 0 1 .344-3.398l1.916.575a7.06 7.06 0 0 0-.276 2.576 9.927 9.927 0 0 0 4.853-2.666 9.926 9.926 0 0 0 2.665-4.848 7.056 7.056 0 0 0-3.284.526l-.78-1.841a9.025 9.025 0 0 1 4.31-.673zM9.17 9.173a9.017 9.017 0 0 1-2.192 1.612l-.927-1.772a7.01 7.01 0 0 0 2.576-2.314l1.663 1.113c-.328.49-.705.948-1.12 1.361zm7.074 7.068a6.991 6.991 0 0 0-1.257 1.708l-1.772-.927a9.025 9.025 0 0 1 2.972-3.312l1.113 1.663a6.987 6.987 0 0 0-1.056.868z"/>|
    )
  end

  @doc """
  Renders the `card` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.card />
  <Boxicons.card class="w-4 h-4" />
  <Boxicons.card solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def card(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.999 17c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2h-12c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h12zm-12-12h12l.002 10H5.999V5zm-2 14h16v2h-16z"/>|,
      ~S|<path d="M18 17c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H6c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h12zM4 19h16v2H4z"/>|
    )
  end

  @doc """
  Renders the `comment_edit` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.comment_edit />
  <Boxicons.comment_edit class="w-4 h-4" />
  <Boxicons.comment_edit solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def comment_edit(assigns) do
    svg(
      assigns,
      ~S|<path d="m13.771 9.123-1.399-1.398-3.869 3.864v1.398h1.398zM14.098 6l1.398 1.398-1.067 1.067-1.398-1.398z"/><path d="M20 2H4c-1.103 0-2 .897-2 2v18l5.333-4H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14H6.667L4 18V4h16v12z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v18l4-4h14c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM8.999 14.987H7v-1.999l5.53-5.522 1.998 1.999-5.529 5.522zm6.472-6.464-1.999-1.999 1.524-1.523L16.995 7l-1.524 1.523z"/>|
    )
  end

  @doc """
  Renders the `been_here` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.been_here />
  <Boxicons.been_here class="w-4 h-4" />
  <Boxicons.been_here solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def been_here(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C7.589 2 4 5.589 4 9.995c-.029 6.445 7.116 11.604 7.42 11.819a.998.998 0 0 0 1.16 0C12.884 21.599 20.029 16.44 20 10c0-4.411-3.589-8-8-8zm0 17.735C10.389 18.427 5.979 14.441 6 10c0-3.309 2.691-6 6-6s6 2.691 6 6.005c.021 4.437-4.388 8.423-6 9.73z"/><path d="M11 11.586 8.707 9.293l-1.414 1.414L11 14.414l5.707-5.707-1.414-1.414z"/>|,
      ~S|<path d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm-1 13.414-3.707-3.707 1.414-1.414L11 12.586l5.293-5.293 1.414 1.414L11 15.414z"/>|
    )
  end

  @doc """
  Renders the `donate_heart` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.donate_heart />
  <Boxicons.donate_heart class="w-4 h-4" />
  <Boxicons.donate_heart solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def donate_heart(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 21h9.62a3.995 3.995 0 0 0 3.037-1.397l5.102-5.952a1 1 0 0 0-.442-1.6l-1.968-.656a3.043 3.043 0 0 0-2.823.503l-3.185 2.547-.617-1.235A3.98 3.98 0 0 0 9.146 11H4c-1.103 0-2 .897-2 2v6c0 1.103.897 2 2 2zm0-8h5.146c.763 0 1.448.423 1.789 1.105l.447.895H7v2h6.014a.996.996 0 0 0 .442-.11l.003-.001.004-.002h.003l.002-.001h.004l.001-.001c.009.003.003-.001.003-.001.01 0 .002-.001.002-.001h.001l.002-.001.003-.001.002-.001.002-.001.003-.001.002-.001c.003 0 .001-.001.002-.001l.003-.002.002-.001.002-.001.003-.001.002-.001h.001l.002-.001h.001l.002-.001.002-.001c.009-.001.003-.001.003-.001l.002-.001a.915.915 0 0 0 .11-.078l4.146-3.317c.262-.208.623-.273.94-.167l.557.186-4.133 4.823a2.029 2.029 0 0 1-1.52.688H4v-6zM16 2h-.017c-.163.002-1.006.039-1.983.705-.951-.648-1.774-.7-1.968-.704L12.002 2h-.004c-.801 0-1.555.313-2.119.878C9.313 3.445 9 4.198 9 5s.313 1.555.861 2.104l3.414 3.586a1.006 1.006 0 0 0 1.45-.001l3.396-3.568C18.688 6.555 19 5.802 19 5s-.313-1.555-.878-2.121A2.978 2.978 0 0 0 16.002 2H16zm1 3c0 .267-.104.518-.311.725L14 8.55l-2.707-2.843C11.104 5.518 11 5.267 11 5s.104-.518.294-.708A.977.977 0 0 1 11.979 4c.025.001.502.032 1.067.485.081.065.163.139.247.222l.707.707.707-.707c.084-.083.166-.157.247-.222.529-.425.976-.478 1.052-.484a.987.987 0 0 1 .701.292c.189.189.293.44.293.707z"/>|,
      ~S|<path d="M17.726 13.02 14 16H9v-1h4.065a.5.5 0 0 0 .416-.777l-.888-1.332A1.995 1.995 0 0 0 10.93 12H3a1 1 0 0 0-1 1v6a2 2 0 0 0 2 2h9.639a3 3 0 0 0 2.258-1.024L22 13l-1.452-.484a2.998 2.998 0 0 0-2.822.504zm1.532-5.63c.451-.465.73-1.108.73-1.818s-.279-1.353-.73-1.818A2.447 2.447 0 0 0 17.494 3S16.25 2.997 15 4.286C13.75 2.997 12.506 3 12.506 3a2.45 2.45 0 0 0-1.764.753c-.451.466-.73 1.108-.73 1.818s.279 1.354.73 1.818L15 12l4.258-4.61z"/>|
    )
  end

  @doc """
  Renders the `tv` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.tv />
  <Boxicons.tv class="w-4 h-4" />
  <Boxicons.tv solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def tv(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 6h-5.586l2.293-2.293-1.414-1.414L12 5.586 8.707 2.293 7.293 3.707 9.586 6H4c-1.103 0-2 .897-2 2v11c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2zM4 19V8h16l.002 11H4z"/>|,
      ~S|<path d="M20 6h-5.586l2.293-2.293-1.414-1.414L12 5.586 8.707 2.293 7.293 3.707 9.586 6H4c-1.103 0-2 .897-2 2v11c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `arrow_from_top` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.arrow_from_top />
  <Boxicons.arrow_from_top class="w-4 h-4" />
  <Boxicons.arrow_from_top solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def arrow_from_top(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 4h12v2H6zm6 16.414 6.707-6.707-1.414-1.414L13 16.586V8h-2v8.586l-4.293-4.293-1.414 1.414z"/>|,
      ~S|<path d="M6 4h12v2H6zm5 4v6H6l6 6 6-6h-5V8z"/>|
    )
  end

  @doc """
  Renders the `wallet_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.wallet_alt />
  <Boxicons.wallet_alt class="w-4 h-4" />
  <Boxicons.wallet_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def wallet_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H5C3.346 3 2 4.346 2 6v12c0 1.654 1.346 3 3 3h15c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM5 19c-.552 0-1-.449-1-1V6c0-.551.448-1 1-1h15v3h-6c-1.103 0-2 .897-2 2v4c0 1.103.897 2 2 2h6.001v3H5zm15-9v4h-6v-4h6z"/>|,
      ~S|<path d="M14 9h8v6h-8z"/><path d="M20 3H5C3.346 3 2 4.346 2 6v12c0 1.654 1.346 3 3 3h15c1.103 0 2-.897 2-2v-2h-8c-1.103 0-2-.897-2-2V9c0-1.103.897-2 2-2h8V5c0-1.103-.897-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `shocked` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shocked />
  <Boxicons.shocked class="w-4 h-4" />
  <Boxicons.shocked solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def shocked(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-5 8.5a1.5 1.5 0 1 1 3.001.001A1.5 1.5 0 0 1 7 10.5zm5 7.5c-1.657 0-3-1.119-3-2.5s1.343-2.5 3-2.5 3 1.119 3 2.5-1.343 2.5-3 2.5zm3.493-6.014a1.494 1.494 0 1 1 .001-2.987 1.494 1.494 0 0 1-.001 2.987z"/>|
    )
  end

  @doc """
  Renders the `wink_smile` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.wink_smile />
  <Boxicons.wink_smile class="w-4 h-4" />
  <Boxicons.wink_smile solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def wink_smile(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M14.828 14.828a3.988 3.988 0 0 1-2.02 1.09 4.108 4.108 0 0 1-1.616 0 4.103 4.103 0 0 1-.749-.232 4.161 4.161 0 0 1-.679-.368 4.115 4.115 0 0 1-1.082-1.082l-1.658 1.117c.215.319.462.619.733.889a5.991 5.991 0 0 0 8.485.002c.272-.271.52-.571.734-.891l-1.658-1.117c-.143.211-.307.41-.49.592z"/><path d="M15.5 10c-2 0-2.5 2-2.5 2h5s-.501-2-2.5-2z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zM8.5 9a1.5 1.5 0 1 1-.001 3.001A1.5 1.5 0 0 1 8.5 9zm7.741 7.244a5.982 5.982 0 0 1-3.034 1.634 6.042 6.042 0 0 1-3.541-.349 5.997 5.997 0 0 1-2.642-2.176l1.658-1.117c.143.211.307.41.488.59a3.988 3.988 0 0 0 1.273.86c.243.102.495.181.749.232a4.108 4.108 0 0 0 1.616 0c.253-.052.505-.131.75-.233.234-.1.464-.224.679-.368.208-.142.407-.306.591-.489.183-.182.347-.381.489-.592l1.658 1.117c-.214.32-.461.62-.734.891zM13 12s.5-2 2.5-2c1.999 0 2.5 2 2.5 2h-5z"/>|
    )
  end

  @doc """
  Renders the `receipt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.receipt />
  <Boxicons.receipt class="w-4 h-4" />
  <Boxicons.receipt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def receipt(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 11h-3V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v14c0 1.654 1.346 3 3 3h14c1.654 0 3-1.346 3-3v-6a1 1 0 0 0-1-1zM5 19a1 1 0 0 1-1-1V5h12v13c0 .351.061.688.171 1H5zm15-1a1 1 0 0 1-2 0v-5h2v5z"/><path d="M6 7h8v2H6zm0 4h8v2H6zm5 4h3v2h-3z"/>|,
      ~S|<path d="M20 12v6a1 1 0 0 1-2 0V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v14c0 1.654 1.346 3 3 3h14c1.654 0 3-1.346 3-3v-6h-2zm-6-1v2H6v-2h8zM6 9V7h8v2H6zm8 6v2h-3v-2h3z"/>|
    )
  end

  @doc """
  Renders the `notepad` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.notepad />
  <Boxicons.notepad class="w-4 h-4" />
  <Boxicons.notepad solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def notepad(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 4h-3V2h-2v2h-4V2H8v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zM5 20V7h14V6l.002 14H5z"/><path d="M7 9h10v2H7zm0 4h5v2H7z"/>|,
      ~S|<path d="M19 4h-3V2h-2v2h-4V2H8v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm-7 10H7v-2h5v2zm5-4H7V8h10v2z"/>|
    )
  end

  @doc """
  Renders the `basket` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.basket />
  <Boxicons.basket class="w-4 h-4" />
  <Boxicons.basket solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def basket(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 9h-1.42l-3.712-6.496-1.736.992L17.277 9H6.723l3.146-5.504-1.737-.992L4.42 9H3a1.001 1.001 0 0 0-.965 1.263l2.799 10.264A2.005 2.005 0 0 0 6.764 22h10.473c.898 0 1.692-.605 1.93-1.475l2.799-10.263A.998.998 0 0 0 21 9zm-3.764 11v1-1H6.764L4.31 11h15.38l-2.454 9z"/><path d="M9 13h2v5H9zm4 0h2v5h-2z"/>|,
      ~S|<path d="M8.132 2.504 4.42 9H3a1.001 1.001 0 0 0-.965 1.263l2.799 10.263A2.004 2.004 0 0 0 6.764 22h10.473c.898 0 1.692-.605 1.93-1.475l2.799-10.263A.998.998 0 0 0 21 9h-1.42l-3.712-6.496-1.736.992L17.277 9H6.723l3.145-5.504-1.736-.992zM14 13h2v5h-2v-5zm-6 0h2v5H8v-5z"/>|
    )
  end

  @doc """
  Renders the `sticker` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sticker />
  <Boxicons.sticker class="w-4 h-4" />
  <Boxicons.sticker solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def sticker(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.796 9.982C20.849 5.357 16.729 2 12 2 6.486 2 2 6.486 2 12c0 4.729 3.357 8.849 7.982 9.796a.988.988 0 0 0 .908-.272l10.633-10.633c.238-.238.34-.578.273-.909zM11 18a7.93 7.93 0 0 1 1.365-4.471 8.18 8.18 0 0 1 .978-1.186 8.211 8.211 0 0 1 1.184-.977 8.128 8.128 0 0 1 1.36-.738c.481-.203.986-.36 1.501-.466a8.112 8.112 0 0 1 2.17-.134l-8.529 8.529c-.013-.185-.029-.37-.029-.557zm-7-6c0-4.411 3.589-8 8-8 2.909 0 5.528 1.589 6.929 4.005a9.99 9.99 0 0 0-1.943.198c-.643.132-1.274.328-1.879.583a10.15 10.15 0 0 0-1.699.923c-.533.361-1.03.771-1.479 1.22s-.858.945-1.221 1.48c-.359.533-.67 1.104-.922 1.698A10.013 10.013 0 0 0 9 18c0 .491.048.979.119 1.461C6.089 18.288 4 15.336 4 12z"/>|,
      ~S|<path d="M18.5 11c-4.136 0-7.5 3.364-7.5 7.5 0 .871.157 1.704.432 2.482l9.551-9.551A7.462 7.462 0 0 0 18.5 11z"/><path d="M12 2C6.486 2 2 6.486 2 12c0 4.583 3.158 8.585 7.563 9.69A9.431 9.431 0 0 1 9 18.5C9 13.262 13.262 9 18.5 9c1.12 0 2.191.205 3.19.563C20.585 5.158 16.583 2 12 2z"/>|
    )
  end

  @doc """
  Renders the `dock_left` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dock_left />
  <Boxicons.dock_left class="w-4 h-4" />
  <Boxicons.dock_left solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dock_left(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2zM5 5h3v14H5zm5 14V5h9v14z"/>|,
      ~S|<path d="M21 19V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2zm-11 0V5h9l.002 14H10z"/>|
    )
  end

  @doc """
  Renders the `timer` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.timer />
  <Boxicons.timer class="w-4 h-4" />
  <Boxicons.timer solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def timer(assigns) do
    svg(
      assigns,
      ~S|<path d="m20.145 8.27 1.563-1.563-1.414-1.414L18.586 7c-1.05-.63-2.274-1-3.586-1-3.859 0-7 3.14-7 7s3.141 7 7 7 7-3.14 7-7a6.966 6.966 0 0 0-1.855-4.73zM15 18c-2.757 0-5-2.243-5-5s2.243-5 5-5 5 2.243 5 5-2.243 5-5 5z"/><path d="M14 10h2v4h-2zm-1-7h4v2h-4zM3 8h4v2H3zm0 8h4v2H3zm-1-4h3.99v2H2z"/>|,
      ~S|<path d="M13 3h4v2h-4zM3 8h4v2H3zm0 8h4v2H3zm-1-4h3.99v2H2zm19.707-5.293-1.414-1.414L18.586 7A6.937 6.937 0 0 0 15 6c-3.859 0-7 3.141-7 7s3.141 7 7 7 7-3.141 7-7a6.968 6.968 0 0 0-1.855-4.73l1.562-1.563zM16 14h-2V8.958h2V14z"/>|
    )
  end

  @doc """
  Renders the `speaker` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.speaker />
  <Boxicons.speaker class="w-4 h-4" />
  <Boxicons.speaker solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def speaker(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2zm0 18H6V4h12z"/><path d="M12 19a4 4 0 1 0-4-4 4 4 0 0 0 4 4zm0-6a2 2 0 1 1-2 2 2 2 0 0 1 2-2z"/>|,
      ~S|<path d="M18 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2zm-6 2a2 2 0 1 1-2 2 2 2 0 0 1 2-2zm0 16a5 5 0 1 1 5-5 5 5 0 0 1-5 5z"/>|
    )
  end

  @doc """
  Renders the `devices` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.devices />
  <Boxicons.devices class="w-4 h-4" />
  <Boxicons.devices solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def devices(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H7c-1.103 0-2 .897-2 2v2H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h6c1.103 0 2-.897 2-2h8c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM9.997 19H4V9h6l-.003 10zm10-2H12V9c0-1.103-.897-2-2-2H7V5h13l-.003 12z"/>|,
      ~S|<path d="M20 3H7c-1.103 0-2 .897-2 2v2H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h6c1.103 0 2-.897 2-2h8c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM6 9h4l-.003 9H4V9h2zm6 8V9c0-1.103-.897-2-2-2H7V5h11v12h-6z"/>|
    )
  end

  @doc """
  Renders the `cool` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cool />
  <Boxicons.cool class="w-4 h-4" />
  <Boxicons.cool solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cool(assigns) do
    svg(
      assigns,
      ~S|<path d="M14.683 14.828a4.055 4.055 0 0 1-1.272.858 4.002 4.002 0 0 1-4.875-1.45l-1.658 1.119a6.063 6.063 0 0 0 1.621 1.62 5.963 5.963 0 0 0 2.148.903 6.035 6.035 0 0 0 3.542-.35 6.048 6.048 0 0 0 1.907-1.284c.272-.271.52-.571.734-.889l-1.658-1.119a4.147 4.147 0 0 1-.489.592z"/><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 2c2.953 0 5.531 1.613 6.918 4H5.082C6.469 5.613 9.047 4 12 4zm0 16c-4.411 0-8-3.589-8-8 0-.691.098-1.359.264-2H5v1a2 2 0 0 0 2 2h2a2 2 0 0 0 2-2h2a2 2 0 0 0 2 2h2a2 2 0 0 0 2-2v-1h.736c.166.641.264 1.309.264 2 0 4.411-3.589 8-8 8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm4.095 14.244a5.982 5.982 0 0 1-3.034 1.634 6.05 6.05 0 0 1-2.414 0 5.919 5.919 0 0 1-2.148-.903 6.078 6.078 0 0 1-1.621-1.622l1.658-1.117c.143.211.307.41.488.59a3.988 3.988 0 0 0 1.273.86c.243.102.495.181.749.232a4.108 4.108 0 0 0 1.616 0c.253-.052.505-.131.75-.233.234-.1.464-.224.679-.368.208-.142.407-.306.591-.489.183-.182.347-.381.489-.592l1.658 1.117c-.215.32-.462.62-.734.891zM19 10a2 2 0 0 1-2 2h-2a2 2 0 0 1-2-2h-2a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V8h14v2z"/>|
    )
  end

  @doc """
  Renders the `cloud_download` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cloud_download />
  <Boxicons.cloud_download class="w-4 h-4" />
  <Boxicons.cloud_download solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cloud_download(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.948 11.112C18.511 7.67 15.563 5 12.004 5c-2.756 0-5.15 1.611-6.243 4.15-2.148.642-3.757 2.67-3.757 4.85 0 2.757 2.243 5 5 5h1v-2h-1c-1.654 0-3-1.346-3-3 0-1.404 1.199-2.757 2.673-3.016l.581-.102.192-.558C8.153 8.273 9.898 7 12.004 7c2.757 0 5 2.243 5 5v1h1c1.103 0 2 .897 2 2s-.897 2-2 2h-2v2h2c2.206 0 4-1.794 4-4a4.008 4.008 0 0 0-3.056-3.888z"/><path d="M13.004 14v-4h-2v4h-3l4 5 4-5z"/>|,
      ~S|<path d="M18.944 11.112C18.507 7.67 15.56 5 12 5 9.244 5 6.85 6.61 5.757 9.149 3.609 9.792 2 11.82 2 14c0 2.657 2.089 4.815 4.708 4.971V19H17.99v-.003L18 19c2.206 0 4-1.794 4-4a4.008 4.008 0 0 0-3.056-3.888zM8 12h3V9h2v3h3l-4 5-4-5z"/>|
    )
  end

  @doc """
  Renders the `book_heart` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.book_heart />
  <Boxicons.book_heart class="w-4 h-4" />
  <Boxicons.book_heart solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def book_heart(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 8v11c0 2.201 1.794 3 3 3h15v-2H6.012C5.55 19.988 5 19.806 5 19s.55-.988 1.012-1H21V4c0-1.103-.897-2-2-2H6c-1.206 0-3 .799-3 3v3zm3-4h13v12H5V5c0-.806.55-.988 1-1z"/><path d="m11.997 14 3.35-3.289a2.129 2.129 0 0 0 0-3.069 2.225 2.225 0 0 0-3.126 0l-.224.218-.224-.219a2.224 2.224 0 0 0-3.125 0 2.129 2.129 0 0 0 0 3.069L11.997 14z"/>|,
      ~S|<path d="M6.012 18H21V4c0-1.103-.897-2-2-2H6c-1.206 0-3 .799-3 3v14c0 2.201 1.794 3 3 3h15v-2H6.012C5.55 19.988 5 19.806 5 19c0-.101.009-.191.024-.273.112-.576.584-.717.988-.727zM8.648 7.642a2.224 2.224 0 0 1 3.125 0l.224.219.223-.219a2.225 2.225 0 0 1 3.126 0 2.129 2.129 0 0 1 0 3.069L11.998 14l-3.349-3.289a2.128 2.128 0 0 1-.001-3.069z"/>|
    )
  end

  @doc """
  Renders the `coffee` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.coffee />
  <Boxicons.coffee class="w-4 h-4" />
  <Boxicons.coffee solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def coffee(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 2h2v3H5zm4 0h2v3H9zm4 0h2v3h-2zm6 7h-2V7H3v11c0 1.654 1.346 3 3 3h8c1.654 0 3-1.346 3-3h2c1.103 0 2-.897 2-2v-5c0-1.103-.897-2-2-2zm-4 9a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1V9h10v9zm2-2v-5h2l.002 5H17z"/>|,
      ~S|<path d="M5 2h2v3H5zm4 0h2v3H9zm4 0h2v3h-2zm6 7h-2V8a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v10a3 3 0 0 0 3 3h8a3 3 0 0 0 3-3h2c1.103 0 2-.897 2-2v-5c0-1.103-.897-2-2-2zm-2 7v-5h2l.002 5H17z"/>|
    )
  end

  @doc """
  Renders the `message_rounded_detail` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_rounded_detail />
  <Boxicons.message_rounded_detail class="w-4 h-4" />
  <Boxicons.message_rounded_detail solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_rounded_detail(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.908 1.898 5.515 5 6.934V22l5.34-4.005C17.697 17.852 22 14.32 22 10c0-4.411-4.486-8-10-8zm0 14h-.333L9 18v-2.417l-.641-.247C5.67 14.301 4 12.256 4 10c0-3.309 3.589-6 8-6s8 2.691 8 6-3.589 6-8 6z"/><path d="M7 7h10v2H7zm0 4h7v2H7z"/>|,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.907 1.897 5.515 5 6.934V22l5.34-4.005C17.697 17.853 22 14.32 22 10c0-4.411-4.486-8-10-8zm2 11H7v-2h7v2zm3-4H7V7h10v2z"/>|
    )
  end

  @doc """
  Renders the `message_alt_check` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_alt_check />
  <Boxicons.message_alt_check class="w-4 h-4" />
  <Boxicons.message_alt_check solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_alt_check(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 4v12c0 1.103.897 2 2 2h3.586L12 21.414 15.414 18H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2zm2 0h14v12h-4.414L12 18.586 9.414 16H5V4z"/><path d="m17.207 7.207-1.414-1.414L11 10.586 8.707 8.293 7.293 9.707 11 13.414z"/>|,
      ~S|<path d="M3 4v12c0 1.103.897 2 2 2h3.5l3.5 4 3.5-4H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2zm5.707 4.293L11 10.586l4.793-4.793 1.414 1.414L11 13.414 7.293 9.707l1.414-1.414z"/>|
    )
  end

  @doc """
  Renders the `folder_open` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.folder_open />
  <Boxicons.folder_open class="w-4 h-4" />
  <Boxicons.folder_open solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def folder_open(assigns) do
    svg(
      assigns,
      ~S|<path d="M2.165 19.551c.186.28.499.449.835.449h15c.4 0 .762-.238.919-.606l3-7A.998.998 0 0 0 21 11h-1V7c0-1.103-.897-2-2-2h-6.1L9.616 3.213A.997.997 0 0 0 9 3H4c-1.103 0-2 .897-2 2v14h.007a1 1 0 0 0 .158.551zM17.341 18H4.517l2.143-5h12.824l-2.143 5zM18 7v4H6c-.4 0-.762.238-.919.606L4 14.129V7h14z"/>|,
      ~S|<path d="M2.165 19.551c.186.28.499.449.835.449h15c.4 0 .762-.238.919-.606l3-7A.998.998 0 0 0 21 11h-1V8c0-1.103-.897-2-2-2h-6.655L8.789 4H4c-1.103 0-2 .897-2 2v13h.007a1 1 0 0 0 .158.551zM18 8v3H6c-.4 0-.762.238-.919.606L4 14.129V8h14z"/>|
    )
  end

  @doc """
  Renders the `heart_square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.heart_square />
  <Boxicons.heart_square class="w-4 h-4" />
  <Boxicons.heart_square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def heart_square(assigns) do
    svg(
      assigns,
      ~S|<path d="m11.998 17 4.186-4.186a2.745 2.745 0 0 0 0-3.907 2.746 2.746 0 0 0-3.907 0l-.278.279-.279-.279a2.746 2.746 0 0 0-3.907 0 2.746 2.746 0 0 0 0 3.907L11.998 17z"/><path d="M21 4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v16a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1V4zm-2 15H5V5h14v14z"/>|,
      ~S|<path d="M4 21h16a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v16a1 1 0 0 0 1 1zM7.812 8.907a2.746 2.746 0 0 1 3.907 0l.279.279.278-.279a2.746 2.746 0 0 1 3.907 0 2.745 2.745 0 0 1 0 3.907L11.998 17l-4.187-4.186a2.747 2.747 0 0 1 .001-3.907z"/>|
    )
  end

  @doc """
  Renders the `layout` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.layout />
  <Boxicons.layout class="w-4 h-4" />
  <Boxicons.layout solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def layout(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zm0 2 .001 4H5V5h14zM5 11h8v8H5v-8zm10 8v-8h4.001l.001 8H15z"/>|,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v4h18V5c0-1.103-.897-2-2-2zM3 19c0 1.103.897 2 2 2h8V11H3v8zm12 2h4c1.103 0 2-.897 2-2v-8h-6v10z"/>|
    )
  end

  @doc """
  Renders the `eraser` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.eraser />
  <Boxicons.eraser class="w-4 h-4" />
  <Boxicons.eraser solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def eraser(assigns) do
    svg(
      assigns,
      ~S|<path d="m2.586 15.408 4.299 4.299a.996.996 0 0 0 .707.293h12.001v-2h-6.958l7.222-7.222c.78-.779.78-2.049 0-2.828L14.906 3a2.003 2.003 0 0 0-2.828 0l-4.75 4.749-4.754 4.843a2.007 2.007 0 0 0 .012 2.816zM13.492 4.414l4.95 4.95-2.586 2.586L10.906 7l2.586-2.586zM8.749 9.156l.743-.742 4.95 4.95-4.557 4.557a1.026 1.026 0 0 0-.069.079h-1.81l-4.005-4.007 4.748-4.837z"/>|,
      ~S|<path d="M12.48 3 7.73 7.75 3 12.59a2 2 0 0 0 0 2.82l4.3 4.3A1 1 0 0 0 8 20h12v-2h-7l7.22-7.22a2 2 0 0 0 0-2.83L15.31 3a2 2 0 0 0-2.83 0zM8.41 18l-4-4 4.75-4.84.74-.75 4.95 4.95-4.56 4.56-.07.08z"/>|
    )
  end

  @doc """
  Renders the `droplet` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.droplet />
  <Boxicons.droplet class="w-4 h-4" />
  <Boxicons.droplet solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def droplet(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 22c4.636 0 8-3.468 8-8.246C20 7.522 12.882 2.4 12.579 2.185a1 1 0 0 0-1.156-.001C11.12 2.397 4 7.503 4 13.75 4 18.53 7.364 22 12 22zm-.001-17.74C13.604 5.55 18 9.474 18 13.754 18 17.432 15.532 20 12 20s-6-2.57-6-6.25c0-4.29 4.394-8.203 5.999-9.49z"/>|,
      ~S|<path d="M12.6 2.4c-.4-.3-.9-.3-1.2 0C9.5 3.9 4 8.5 4 14c0 4.4 3.6 8 8 8s8-3.6 8-8c0-5.4-5.5-10.1-7.4-11.6"/>|
    )
  end

  @doc """
  Renders the `webcam` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.webcam />
  <Boxicons.webcam class="w-4 h-4" />
  <Boxicons.webcam solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def webcam(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2c-4.963 0-9 4.038-9 9 0 3.328 1.82 6.232 4.513 7.79l-2.067 1.378A1 1 0 0 0 6 22h12a1 1 0 0 0 .555-1.832l-2.067-1.378C19.18 17.232 21 14.328 21 11c0-4.962-4.037-9-9-9zm0 16c-3.859 0-7-3.141-7-7 0-3.86 3.141-7 7-7s7 3.14 7 7c0 3.859-3.141 7-7 7z"/><path d="M12 6c-2.757 0-5 2.243-5 5s2.243 5 5 5 5-2.243 5-5-2.243-5-5-5zm0 8c-1.654 0-3-1.346-3-3s1.346-3 3-3 3 1.346 3 3-1.346 3-3 3z"/>|,
      ~S|<path d="M12 2c-4.963 0-9 4.037-9 9 0 3.328 1.82 6.232 4.513 7.79l-2.067 1.378A1 1 0 0 0 6 22h12a1 1 0 0 0 .555-1.832l-2.067-1.378C19.18 17.232 21 14.328 21 11c0-4.963-4.037-9-9-9zm0 16c-3.859 0-7-3.141-7-7s3.141-7 7-7 7 3.141 7 7-3.141 7-7 7z"/><path d="M12 6c-2.757 0-5 2.243-5 5s2.243 5 5 5 5-2.243 5-5-2.243-5-5-5zm-1.5 5a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 10.5 11z"/>|
    )
  end

  @doc """
  Renders the `file` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file />
  <Boxicons.file class="w-4 h-4" />
  <Boxicons.file solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def file(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.903 8.586a.997.997 0 0 0-.196-.293l-6-6a.997.997 0 0 0-.293-.196c-.03-.014-.062-.022-.094-.033a.991.991 0 0 0-.259-.051C13.04 2.011 13.021 2 13 2H6c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V9c0-.021-.011-.04-.013-.062a.952.952 0 0 0-.051-.259c-.01-.032-.019-.063-.033-.093zM16.586 8H14V5.414L16.586 8zM6 20V4h6v5a1 1 0 0 0 1 1h5l.002 10H6z"/><path d="M8 12h8v2H8zm0 4h8v2H8zm0-8h2v2H8z"/>|,
      ~S|<path d="M18 22a2 2 0 0 0 2-2V8l-6-6H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12zM13 4l5 5h-5V4zM7 8h3v2H7V8zm0 4h10v2H7v-2zm0 4h10v2H7v-2z"/>|
    )
  end

  @doc """
  Renders the `video_plus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.video_plus />
  <Boxicons.video_plus class="w-4 h-4" />
  <Boxicons.video_plus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def video_plus(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 8H9v3H6v2h3v3h2v-3h3v-2h-3z"/><path d="M18 7c0-1.103-.897-2-2-2H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-3.333L22 17V7l-4 3.333V7zm-1.999 10H4V7h12v5l.001 5z"/>|,
      ~S|<path d="M18 7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-3.333L22 17V7l-4 3.333V7zm-4 6h-3v3H9v-3H6v-2h3V8h2v3h3v2z"/>|
    )
  end

  @doc """
  Renders the `rewind_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.rewind_circle />
  <Boxicons.rewind_circle class="w-4 h-4" />
  <Boxicons.rewind_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def rewind_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M11 16V8l-5 4zm6 0V8l-5 4z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.485 2 12s4.486 10 10 10c5.515 0 10-4.485 10-10S17.515 2 12 2zm5 14-6-4v4l-6-4 6-4v4l6-4v8z"/>|
    )
  end

  @doc """
  Renders the `bell` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bell />
  <Boxicons.bell class="w-4 h-4" />
  <Boxicons.bell solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bell(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 13.586V10c0-3.217-2.185-5.927-5.145-6.742C13.562 2.52 12.846 2 12 2s-1.562.52-1.855 1.258C7.185 4.074 5 6.783 5 10v3.586l-1.707 1.707A.996.996 0 0 0 3 16v2a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1v-2a.996.996 0 0 0-.293-.707L19 13.586zM19 17H5v-.586l1.707-1.707A.996.996 0 0 0 7 14v-4c0-2.757 2.243-5 5-5s5 2.243 5 5v4c0 .266.105.52.293.707L19 16.414V17zm-7 5a2.98 2.98 0 0 0 2.818-2H9.182A2.98 2.98 0 0 0 12 22z"/>|,
      ~S|<path d="M12 22a2.98 2.98 0 0 0 2.818-2H9.182A2.98 2.98 0 0 0 12 22zm7-7.414V10c0-3.217-2.185-5.927-5.145-6.742C13.562 2.52 12.846 2 12 2s-1.562.52-1.855 1.258C7.185 4.074 5 6.783 5 10v4.586l-1.707 1.707A.996.996 0 0 0 3 17v1a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1v-1a.996.996 0 0 0-.293-.707L19 14.586z"/>|
    )
  end

  @doc """
  Renders the `polygon` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.polygon />
  <Boxicons.polygon class="w-4 h-4" />
  <Boxicons.polygon solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def polygon(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.707 2.293A.996.996 0 0 0 16 2H8a.996.996 0 0 0-.707.293l-5 5A.996.996 0 0 0 2 8v8c0 .266.105.52.293.707l5 5A.996.996 0 0 0 8 22h8c.266 0 .52-.105.707-.293l5-5A.996.996 0 0 0 22 16V8a.996.996 0 0 0-.293-.707l-5-5zM20 15.586 15.586 20H8.414L4 15.586V8.414L8.414 4h7.172L20 8.414v7.172z"/>|,
      ~S|<path d="m21.707 7.293-5-5A.996.996 0 0 0 16 2H8a.996.996 0 0 0-.707.293l-5 5A.996.996 0 0 0 2 8v8c0 .266.105.52.293.707l5 5A.996.996 0 0 0 8 22h8c.266 0 .52-.105.707-.293l5-5A.996.996 0 0 0 22 16V8a.996.996 0 0 0-.293-.707z"/>|
    )
  end

  @doc """
  Renders the `bed` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bed />
  <Boxicons.bed class="w-4 h-4" />
  <Boxicons.bed solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bed(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 9.557V3h-2v2H6V3H4v6.557C2.81 10.25 2 11.525 2 13v4a1 1 0 0 0 1 1h1v4h2v-4h12v4h2v-4h1a1 1 0 0 0 1-1v-4c0-1.475-.811-2.75-2-3.443zM18 7v2h-5V7h5zM6 7h5v2H6V7zm14 9H4v-3c0-1.103.897-2 2-2h12c1.103 0 2 .897 2 2v3z"/>|,
      ~S|<path d="M20 9.556V3h-2v2H6V3H4v6.557C2.81 10.25 2 11.526 2 13v4a1 1 0 0 0 1 1h1v4h2v-4h12v4h2v-4h1a1 1 0 0 0 1-1v-4c0-1.474-.811-2.75-2-3.444zM11 9H6V7h5v2zm7 0h-5V7h5v2z"/>|
    )
  end

  @doc """
  Renders the `medal` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.medal />
  <Boxicons.medal class="w-4 h-4" />
  <Boxicons.medal solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def medal(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 22c3.859 0 7-3.141 7-7s-3.141-7-7-7c-3.86 0-7 3.141-7 7s3.14 7 7 7zm0-12c2.757 0 5 2.243 5 5s-2.243 5-5 5-5-2.243-5-5 2.243-5 5-5zm-1-8H7v5.518a8.957 8.957 0 0 1 4-1.459V2zm6 0h-4v4.059a8.957 8.957 0 0 1 4 1.459V2z"/><path d="m10.019 15.811-.468 2.726L12 17.25l2.449 1.287-.468-2.726 1.982-1.932-2.738-.398L12 11l-1.225 2.481-2.738.398z"/>|,
      ~S|<path d="M17 2h-4v4.059a8.946 8.946 0 0 1 4 1.459V2zm-6 0H7v5.518a8.946 8.946 0 0 1 4-1.459V2zm1 20a7 7 0 1 0 0-14 7 7 0 0 0 0 14zm-1.225-8.519L12 11l1.225 2.481 2.738.397-1.981 1.932.468 2.727L12 17.25l-2.449 1.287.468-2.727-1.981-1.932 2.737-.397z"/>|
    )
  end

  @doc """
  Renders the `message_square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_square />
  <Boxicons.message_square class="w-4 h-4" />
  <Boxicons.message_square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v12a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm4 13c0 2.206-1.794 4-4 4H4V8c0-2.206 1.794-4 4-4h8c2.206 0 4 1.794 4 4v7z"/>|,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6z"/>|
    )
  end

  @doc """
  Renders the `car` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.car />
  <Boxicons.car class="w-4 h-4" />
  <Boxicons.car solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def car(assigns) do
    svg(
      assigns,
      ~S|<path d="m20.772 10.156-1.368-4.105A2.995 2.995 0 0 0 16.559 4H7.441a2.995 2.995 0 0 0-2.845 2.051l-1.368 4.105A2.003 2.003 0 0 0 2 12v5c0 .753.423 1.402 1.039 1.743-.013.066-.039.126-.039.195V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-2h12v2a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-2.062c0-.069-.026-.13-.039-.195A1.993 1.993 0 0 0 22 17v-5c0-.829-.508-1.541-1.228-1.844zM4 17v-5h16l.002 5H4zM7.441 6h9.117c.431 0 .813.274.949.684L18.613 10H5.387l1.105-3.316A1 1 0 0 1 7.441 6z"/>|,
      ~S|<path d="m20.772 10.155-1.368-4.104A2.995 2.995 0 0 0 16.559 4H7.441a2.995 2.995 0 0 0-2.845 2.051l-1.368 4.104A2 2 0 0 0 2 12v5c0 .738.404 1.376 1 1.723V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-2h12v2a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-2.277A1.99 1.99 0 0 0 22 17v-5a2 2 0 0 0-1.228-1.845zM7.441 6h9.117c.431 0 .813.274.949.684L18.613 10H5.387l1.105-3.316A1 1 0 0 1 7.441 6zM5.5 16a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 5.5 16zm13 0a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 18.5 16z"/>|
    )
  end

  @doc """
  Renders the `bug` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bug />
  <Boxicons.bug class="w-4 h-4" />
  <Boxicons.bug solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bug(assigns) do
    svg(
      assigns,
      ~S|<path d="m16.895 6.519 2.813-2.812-1.414-1.414-2.846 2.846a6.575 6.575 0 0 0-.723-.454 5.778 5.778 0 0 0-5.45 0c-.25.132-.488.287-.722.453L5.707 2.293 4.293 3.707l2.813 2.812A8.473 8.473 0 0 0 5.756 9H2v2h2.307c-.065.495-.107.997-.107 1.5 0 .507.042 1.013.107 1.511H2v2h2.753c.013.039.021.08.034.118.188.555.421 1.093.695 1.6.044.081.095.155.141.234l-2.33 2.33 1.414 1.414 2.11-2.111a7.477 7.477 0 0 0 2.068 1.619c.479.253.982.449 1.496.58a6.515 6.515 0 0 0 3.237.001 6.812 6.812 0 0 0 1.496-.58c.465-.246.914-.55 1.333-.904.258-.218.5-.462.734-.716l2.111 2.111 1.414-1.414-2.33-2.33c.047-.08.098-.155.142-.236.273-.505.507-1.043.694-1.599.013-.039.021-.079.034-.118H22v-2h-2.308c.065-.499.107-1.004.107-1.511 0-.503-.042-1.005-.106-1.5H22V9h-3.756a8.494 8.494 0 0 0-1.349-2.481zM8.681 7.748c.445-.558.96-.993 1.528-1.294a3.773 3.773 0 0 1 3.581 0 4.894 4.894 0 0 1 1.53 1.295c.299.373.54.8.753 1.251H7.927c.214-.451.454-.879.754-1.252zM17.8 12.5c0 .522-.042 1.044-.126 1.553-.079.49-.199.973-.355 1.436a8.28 8.28 0 0 1-.559 1.288 7.59 7.59 0 0 1-.733 1.11c-.267.333-.56.636-.869.898-.31.261-.639.484-.979.664s-.695.317-1.057.41c-.04.01-.082.014-.122.023V14h-2v5.881c-.04-.009-.082-.013-.122-.023-.361-.093-.717-.23-1.057-.41s-.669-.403-.978-.664a6.462 6.462 0 0 1-.871-.899 7.402 7.402 0 0 1-.731-1.108 8.337 8.337 0 0 1-.56-1.289 9.075 9.075 0 0 1-.356-1.438A9.61 9.61 0 0 1 6.319 11H17.68c.079.491.12.995.12 1.5z"/>|,
      ~S|<path d="M6.787 7h10.426c-.108-.158-.201-.331-.318-.481l2.813-2.812-1.414-1.414-2.846 2.846a6.575 6.575 0 0 0-.723-.454 5.778 5.778 0 0 0-5.45 0c-.25.132-.488.287-.722.453L5.707 2.293 4.293 3.707l2.813 2.812c-.118.151-.21.323-.319.481zM5.756 9H2v2h2.307c-.065.495-.107.997-.107 1.5 0 .507.042 1.013.107 1.511H2v2h2.753c.013.039.021.08.034.118.188.555.421 1.093.695 1.6.044.081.095.155.141.234l-2.33 2.33 1.414 1.414 2.11-2.111a7.477 7.477 0 0 0 2.068 1.619c.479.253.982.449 1.496.58.204.052.411.085.618.118V16h2v5.914a6.23 6.23 0 0 0 .618-.118 6.812 6.812 0 0 0 1.496-.58c.465-.246.914-.55 1.333-.904.258-.218.5-.462.734-.716l2.111 2.111 1.414-1.414-2.33-2.33c.047-.08.098-.155.142-.236.273-.505.507-1.043.694-1.599.013-.039.021-.079.034-.118H22v-2h-2.308c.065-.499.107-1.004.107-1.511 0-.503-.042-1.005-.106-1.5H22V9H5.756z"/>|
    )
  end

  @doc """
  Renders the `comment_check` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.comment_check />
  <Boxicons.comment_check class="w-4 h-4" />
  <Boxicons.comment_check solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def comment_check(assigns) do
    svg(
      assigns,
      ~S|<path d="m17.207 8.207-1.414-1.414L11 11.586 8.707 9.293l-1.414 1.414L11 14.414z"/><path d="M20 2H4c-1.103 0-2 .897-2 2v18l5.333-4H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14H6.667L4 18V4h16v12z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v18l4-4h14c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm-9 11.914-3.707-3.707 1.414-1.414L11 11.086l4.793-4.793 1.414 1.414L11 13.914z"/>|
    )
  end

  @doc """
  Renders the `up_arrow` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.up_arrow />
  <Boxicons.up_arrow class="w-4 h-4" />
  <Boxicons.up_arrow solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def up_arrow(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 19h18a1.002 1.002 0 0 0 .823-1.569l-9-13c-.373-.539-1.271-.539-1.645 0l-9 13A.999.999 0 0 0 3 19zm9-12.243L19.092 17H4.908L12 6.757z"/>|,
      ~S|<path d="M3 19h18a1.002 1.002 0 0 0 .823-1.569l-9-13c-.373-.539-1.271-.539-1.645 0l-9 13A.999.999 0 0 0 3 19z"/>|
    )
  end

  @doc """
  Renders the `message_square_edit` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_square_edit />
  <Boxicons.message_square_edit class="w-4 h-4" />
  <Boxicons.message_square_edit solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_square_edit(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm4 14c0 2.206-1.794 4-4 4H4V8c0-2.206 1.794-4 4-4h8c2.206 0 4 1.794 4 4v8z"/><path d="M7 14.987v1.999h1.999l5.529-5.522-1.998-1.998zm8.47-4.465-1.998-2L14.995 7l2 1.999z"/>|,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zM8.999 17H7v-1.999l5.53-5.522 1.999 1.999L8.999 17zm6.473-6.465-1.999-1.999 1.524-1.523 1.999 1.999-1.524 1.523z"/>|
    )
  end

  @doc """
  Renders the `dice_4` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dice_4 />
  <Boxicons.dice_4 class="w-4 h-4" />
  <Boxicons.dice_4 solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dice_4(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM5 19V5h14l.002 14H5z"/>|,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM8 17.5a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 8 17.5zm0-8a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 8 9.5zm8 8a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 16 17.5zm0-8a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 16 9.5z"/>|
    )
  end

  @doc """
  Renders the `joystick_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.joystick_alt />
  <Boxicons.joystick_alt class="w-4 h-4" />
  <Boxicons.joystick_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def joystick_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M10 9H8v2H6v2h2v2h2v-2h2v-2h-2z"/><path d="M15 5H9a7 7 0 0 0-7 7 7 7 0 0 0 7 7h6a7 7 0 0 0 7-7 7 7 0 0 0-7-7zm0 12H9A5 5 0 1 1 9 7h6a5 5 0 1 1 0 10z"/>|,
      ~S|<path d="M16 6H8a6 6 0 0 0 0 12h8a6 6 0 0 0 0-12zm-5 7H9v2H7v-2H5v-2h2V9h2v2h2v2zm3.5 2a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm3-3a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>|
    )
  end

  @doc """
  Renders the `book_add` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.book_add />
  <Boxicons.book_add class="w-4 h-4" />
  <Boxicons.book_add solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def book_add(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 8v11c0 2.201 1.794 3 3 3h15v-2H6.012C5.55 19.988 5 19.806 5 19c0-.101.009-.191.024-.273.112-.576.584-.717.988-.727H21V4c0-1.103-.897-2-2-2H6c-1.206 0-3 .799-3 3v3zm3-4h13v12H5V5c0-.806.55-.988 1-1z"/><path d="M11 14h2v-3h3V9h-3V6h-2v3H8v2h3z"/>|,
      ~S|<path d="M6.012 18H21V4c0-1.103-.897-2-2-2H6c-1.206 0-3 .799-3 3v14c0 2.201 1.794 3 3 3h15v-2H6.012C5.55 19.988 5 19.806 5 19s.55-.988 1.012-1zM8 9h3V6h2v3h3v2h-3v3h-2v-3H8V9z"/>|
    )
  end

  @doc """
  Renders the `sun` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sun />
  <Boxicons.sun class="w-4 h-4" />
  <Boxicons.sun solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def sun(assigns) do
    svg(
      assigns,
      ~S|<path d="M6.993 12c0 2.761 2.246 5.007 5.007 5.007s5.007-2.246 5.007-5.007S14.761 6.993 12 6.993 6.993 9.239 6.993 12zM12 8.993c1.658 0 3.007 1.349 3.007 3.007S13.658 15.007 12 15.007 8.993 13.658 8.993 12 10.342 8.993 12 8.993zM10.998 19h2v3h-2zm0-17h2v3h-2zm-9 9h3v2h-3zm17 0h3v2h-3zM4.219 18.363l2.12-2.122 1.415 1.414-2.12 2.122zM16.24 6.344l2.122-2.122 1.414 1.414-2.122 2.122zM6.342 7.759 4.22 5.637l1.415-1.414 2.12 2.122zm13.434 10.605-1.414 1.414-2.122-2.122 1.414-1.414z"/>|,
      ~S|<path d="M6.995 12c0 2.761 2.246 5.007 5.007 5.007s5.007-2.246 5.007-5.007-2.246-5.007-5.007-5.007S6.995 9.239 6.995 12zM11 19h2v3h-2zm0-17h2v3h-2zm-9 9h3v2H2zm17 0h3v2h-3zM5.637 19.778l-1.414-1.414 2.121-2.121 1.414 1.414zM16.242 6.344l2.122-2.122 1.414 1.414-2.122 2.122zM6.344 7.759 4.223 5.637l1.415-1.414 2.12 2.122zm13.434 10.605-1.414 1.414-2.122-2.122 1.414-1.414z"/>|
    )
  end

  @doc """
  Renders the `mobile_vibration` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.mobile_vibration />
  <Boxicons.mobile_vibration class="w-4 h-4" />
  <Boxicons.mobile_vibration solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def mobile_vibration(assigns) do
    svg(
      assigns,
      ~S|<path d="M15.535 2.808c-.756-.756-2.072-.756-2.828 0l-9.899 9.899a2.001 2.001 0 0 0 0 2.828l5.657 5.657c.378.378.88.586 1.414.586s1.036-.208 1.414-.586l9.899-9.899c.378-.378.586-.88.586-1.414s-.208-1.036-.586-1.414l-5.657-5.657zm-5.656 16.97v1-1l-5.657-5.657 9.899-9.899 5.657 5.657-9.899 9.899z"/><path d="m15.707 21.707-1.414-1.414 6-6 1.414 1.415zM8.293 2.293l1.414 1.414-6 6-1.414-1.415z"/>|,
      ~S|<path d="M15.535 2.808a2.003 2.003 0 0 0-2.828 0l-9.899 9.899a2.001 2.001 0 0 0 0 2.828l5.657 5.657c.39.39.902.585 1.414.585s1.024-.195 1.414-.585l9.899-9.899c.78-.779.78-2.049 0-2.828l-5.657-5.657zM8.707 16.707a.999.999 0 1 1-1.414-1.414.999.999 0 1 1 1.414 1.414zm7 5-1.414-1.414 6-6 1.414 1.415zM8.293 2.293l1.414 1.414-6 6-1.414-1.415z"/>|
    )
  end

  @doc """
  Renders the `happy_beaming` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.happy_beaming />
  <Boxicons.happy_beaming class="w-4 h-4" />
  <Boxicons.happy_beaming solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def happy_beaming(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 18c4 0 5-4 5-4H7s1 4 5 4z"/><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="m13 12 2 .012c.012-.462.194-1.012 1-1.012s.988.55 1 1h2c0-1.206-.799-3-3-3s-3 1.794-3 3zm-5-1c.806 0 .988.55 1 1h2c0-1.206-.799-3-3-3s-3 1.794-3 3l2 .012C7.012 11.55 7.194 11 8 11z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zM8 9c2.201 0 3 1.794 3 3H9c-.012-.45-.194-1-1-1s-.988.55-1 1.012L5 12c0-1.206.799-3 3-3zm4 9c-4 0-5-4-5-4h10s-1 4-5 4zm5-6c-.012-.45-.194-1-1-1s-.988.55-1 1.012L13 12c0-1.206.799-3 3-3s3 1.794 3 3h-2z"/>|
    )
  end

  @doc """
  Renders the `trash_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.trash_alt />
  <Boxicons.trash_alt class="w-4 h-4" />
  <Boxicons.trash_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def trash_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M15 2H9c-1.103 0-2 .897-2 2v2H3v2h2v12c0 1.103.897 2 2 2h10c1.103 0 2-.897 2-2V8h2V6h-4V4c0-1.103-.897-2-2-2zM9 4h6v2H9V4zm8 16H7V8h10v12z"/>|,
      ~S|<path d="M6 7H5v13a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V7H6zm10.618-3L15 2H9L7.382 4H3v2h18V4z"/>|
    )
  end

  @doc """
  Renders the `message_square_add` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_square_add />
  <Boxicons.message_square_add class="w-4 h-4" />
  <Boxicons.message_square_add solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_square_add(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm4 14c0 2.206-1.794 4-4 4H4V8c0-2.206 1.794-4 4-4h8c2.206 0 4 1.794 4 4v8z"/><path d="M13 7h-2v4H7v2h4v4h2v-4h4v-2h-4z"/>|,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm1 11h-4v4h-2v-4H7v-2h4V7h2v4h4v2z"/>|
    )
  end

  @doc """
  Renders the `cake` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cake />
  <Boxicons.cake class="w-4 h-4" />
  <Boxicons.cake solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cake(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 5h-6V2h-2v3H5C3.346 5 2 6.346 2 8v10c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V8c0-1.654-1.346-3-3-3zM5 7h14a1 1 0 0 1 1 1l.001 3.12c-.896.228-1.469.734-1.916 1.132-.507.45-.842.748-1.588.748-.745 0-1.08-.298-1.587-.747-.595-.529-1.409-1.253-2.915-1.253-1.505 0-2.319.724-2.914 1.253-.507.45-.841.747-1.586.747-.743 0-1.077-.297-1.582-.747-.447-.398-1.018-.905-1.913-1.133V8a1 1 0 0 1 1-1zM4 18v-4.714c.191.123.374.274.583.461C5.178 14.276 5.991 15 7.495 15c1.505 0 2.319-.724 2.914-1.253.507-.45.841-.747 1.586-.747s1.08.298 1.587.747c.595.529 1.409 1.253 2.915 1.253s2.321-.724 2.916-1.253c.211-.188.395-.34.588-.464L20.002 18H4z"/>|,
      ~S|<path d="M16.997 15c-1.601 0-2.446-.676-3.125-1.219-.567-.453-.977-.781-1.878-.781-.898 0-1.287.311-1.874.78-.679.544-1.524 1.22-3.125 1.22s-2.444-.676-3.123-1.22C3.285 13.311 2.897 13 2 13v5c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2v-5c-.899 0-1.288.311-1.876.781-.68.543-1.525 1.219-3.127 1.219zM19 5h-6V2h-2v3H5C3.346 5 2 6.346 2 8v3c1.6 0 2.443.676 3.122 1.22.587.469.975.78 1.873.78.899 0 1.287-.311 1.875-.781.679-.543 1.524-1.219 3.124-1.219 1.602 0 2.447.676 3.127 1.219.588.47.977.781 1.876.781.9 0 1.311-.328 1.878-.781C19.554 11.676 20.399 11 22 11V8c0-1.654-1.346-3-3-3z"/>|
    )
  end

  @doc """
  Renders the `layer_plus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.layer_plus />
  <Boxicons.layer_plus class="w-4 h-4" />
  <Boxicons.layer_plus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def layer_plus(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.484 11.125-9.022-5a1 1 0 0 0-.968-.001l-8.978 4.96a1 1 0 0 0-.003 1.749l9.022 5.04a.995.995 0 0 0 .973.001l8.978-5a1 1 0 0 0-.002-1.749zm-9.461 4.73-6.964-3.89 6.917-3.822 6.964 3.859-6.917 3.853z"/><path d="M12 22a.994.994 0 0 0 .485-.126l9-5-.971-1.748L12 19.856l-8.515-4.73-.971 1.748 9 5A1 1 0 0 0 12 22zm8-20h-2v2h-2v2h2v2h2V6h2V4h-2z"/>|,
      ~S|<path d="m2.513 12.833 9.022 5.04a.995.995 0 0 0 .973.001l8.978-5a1 1 0 0 0-.002-1.749l-9.022-5a1 1 0 0 0-.968-.001l-8.978 4.96a1 1 0 0 0-.003 1.749z"/><path d="m3.485 15.126-.971 1.748 9 5a1 1 0 0 0 .971 0l9-5-.971-1.748L12 19.856l-8.515-4.73zM20 8V6h2V4h-2V2h-2v2h-2v2h2v2z"/>|
    )
  end

  @doc """
  Renders the `collection` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.collection />
  <Boxicons.collection class="w-4 h-4" />
  <Boxicons.collection solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def collection(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 10H5c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2v-8c0-1.103-.897-2-2-2zM5 20v-8h14l.002 8H5zM5 6h14v2H5zm2-4h10v2H7z"/>|,
      ~S|<path d="M19 10H5c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2v-8c0-1.103-.897-2-2-2zM5 6h14v2H5zm2-4h10v2H7z"/>|
    )
  end

  @doc """
  Renders the `chevron_up_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevron_up_circle />
  <Boxicons.chevron_up_circle class="w-4 h-4" />
  <Boxicons.chevron_up_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevron_up_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="m6.293 13.293 1.414 1.414L12 10.414l4.293 4.293 1.414-1.414L12 7.586z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm4.293 12.707L12 10.414l-4.293 4.293-1.414-1.414L12 7.586l5.707 5.707-1.414 1.414z"/>|
    )
  end

  @doc """
  Renders the `left_arrow` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.left_arrow />
  <Boxicons.left_arrow class="w-4 h-4" />
  <Boxicons.left_arrow solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def left_arrow(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.464 2.114a.998.998 0 0 0-1.033.063l-13 9a1.003 1.003 0 0 0 0 1.645l13 9A1 1 0 0 0 19 21V3a1 1 0 0 0-.536-.886zM17 19.091 6.757 12 17 4.909v14.182z"/>|,
      ~S|<path d="m4.431 12.822 13 9A1 1 0 0 0 19 21V3a1 1 0 0 0-1.569-.823l-13 9a1.003 1.003 0 0 0 0 1.645z"/>|
    )
  end

  @doc """
  Renders the `bulb` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bulb />
  <Boxicons.bulb class="w-4 h-4" />
  <Boxicons.bulb solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bulb(assigns) do
    svg(
      assigns,
      ~S|<path d="M9 20h6v2H9zm7.906-6.288C17.936 12.506 19 11.259 19 9c0-3.859-3.141-7-7-7S5 5.141 5 9c0 2.285 1.067 3.528 2.101 4.73.358.418.729.851 1.084 1.349.144.206.38.996.591 1.921H8v2h8v-2h-.774c.213-.927.45-1.719.593-1.925.352-.503.726-.94 1.087-1.363zm-2.724.213c-.434.617-.796 2.075-1.006 3.075h-2.351c-.209-1.002-.572-2.463-1.011-3.08a20.502 20.502 0 0 0-1.196-1.492C7.644 11.294 7 10.544 7 9c0-2.757 2.243-5 5-5s5 2.243 5 5c0 1.521-.643 2.274-1.615 3.413-.373.438-.796.933-1.203 1.512z"/>|,
      ~S|<path d="M9 20h6v2H9zm7.906-6.288C17.936 12.506 19 11.259 19 9c0-3.859-3.141-7-7-7S5 5.141 5 9c0 2.285 1.067 3.528 2.101 4.73.358.418.729.851 1.084 1.349.144.206.38.996.591 1.921h-.792v2h8.032v-2h-.79c.213-.927.45-1.719.593-1.925.352-.503.726-.94 1.087-1.363z"/>|
    )
  end

  @doc """
  Renders the `log_in_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.log_in_circle />
  <Boxicons.log_in_circle class="w-4 h-4" />
  <Boxicons.log_in_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def log_in_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="m10.998 16 5-4-5-4v3h-9v2h9z"/><path d="M12.999 2.999a8.938 8.938 0 0 0-6.364 2.637L8.049 7.05c1.322-1.322 3.08-2.051 4.95-2.051s3.628.729 4.95 2.051S20 10.13 20 12s-.729 3.628-2.051 4.95-3.08 2.051-4.95 2.051-3.628-.729-4.95-2.051l-1.414 1.414c1.699 1.7 3.959 2.637 6.364 2.637s4.665-.937 6.364-2.637C21.063 16.665 22 14.405 22 12s-.937-4.665-2.637-6.364a8.938 8.938 0 0 0-6.364-2.637z"/>|,
      ~S|<path d="M12 3c-4.625 0-8.442 3.507-8.941 8.001H10v-3l5 4-5 4v-3H3.06C3.56 17.494 7.376 21 12 21c4.963 0 9-4.037 9-9s-4.037-9-9-9z"/>|
    )
  end

  @doc """
  Renders the `heart_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.heart_circle />
  <Boxicons.heart_circle class="w-4 h-4" />
  <Boxicons.heart_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def heart_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12.279 8.833 12 9.112l-.279-.279a2.745 2.745 0 0 0-3.906 0 2.745 2.745 0 0 0 0 3.907L12 16.926l4.186-4.186a2.745 2.745 0 0 0 0-3.907 2.746 2.746 0 0 0-3.907 0z"/><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm4.186 10.74L12 16.926 7.814 12.74a2.745 2.745 0 0 1 0-3.907 2.745 2.745 0 0 1 3.906 0l.28.279.279-.279a2.745 2.745 0 0 1 3.906 0 2.745 2.745 0 0 1 .001 3.907z"/>|
    )
  end

  @doc """
  Renders the `caret_right_square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.caret_right_square />
  <Boxicons.caret_right_square class="w-4 h-4" />
  <Boxicons.caret_right_square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def caret_right_square(assigns) do
    svg(
      assigns,
      ~S|<path d="m10 17 6-5-6-5z"/><path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM5 19V5h14l.002 14H5z"/>|,
      ~S|<path d="M5 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zm5-14 6 5-6 5V7z"/>|
    )
  end

  @doc """
  Renders the `badge_check` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.badge_check />
  <Boxicons.badge_check class="w-4 h-4" />
  <Boxicons.badge_check solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def badge_check(assigns) do
    svg(
      assigns,
      ~S|<path d="M4.035 15.479A3.976 3.976 0 0 0 4 16c0 2.378 2.138 4.284 4.521 3.964C9.214 21.198 10.534 22 12 22s2.786-.802 3.479-2.036C17.857 20.284 20 18.378 20 16c0-.173-.012-.347-.035-.521C21.198 14.786 22 13.465 22 12s-.802-2.786-2.035-3.479C19.988 8.347 20 8.173 20 8c0-2.378-2.143-4.288-4.521-3.964C14.786 2.802 13.466 2 12 2s-2.786.802-3.479 2.036C6.138 3.712 4 5.622 4 8c0 .173.012.347.035.521C2.802 9.214 2 10.535 2 12s.802 2.786 2.035 3.479zm1.442-5.403 1.102-.293-.434-1.053A1.932 1.932 0 0 1 6 8c0-1.103.897-2 2-2 .247 0 .499.05.73.145l1.054.434.293-1.102a1.99 1.99 0 0 1 3.846 0l.293 1.102 1.054-.434C15.501 6.05 15.753 6 16 6c1.103 0 2 .897 2 2 0 .247-.05.5-.145.73l-.434 1.053 1.102.293a1.993 1.993 0 0 1 0 3.848l-1.102.293.434 1.053c.095.23.145.483.145.73 0 1.103-.897 2-2 2-.247 0-.499-.05-.73-.145l-1.054-.434-.293 1.102a1.99 1.99 0 0 1-3.846 0l-.293-1.102-1.054.434A1.935 1.935 0 0 1 8 18c-1.103 0-2-.897-2-2 0-.247.05-.5.145-.73l.434-1.053-1.102-.293a1.993 1.993 0 0 1 0-3.848z"/><path d="m15.742 10.71-1.408-1.42-3.331 3.299-1.296-1.296-1.414 1.414 2.704 2.704z"/>|,
      ~S|<path d="M19.965 8.521C19.988 8.347 20 8.173 20 8c0-2.379-2.143-4.288-4.521-3.965C14.786 2.802 13.466 2 12 2s-2.786.802-3.479 2.035C6.138 3.712 4 5.621 4 8c0 .173.012.347.035.521C2.802 9.215 2 10.535 2 12s.802 2.785 2.035 3.479A3.976 3.976 0 0 0 4 16c0 2.379 2.138 4.283 4.521 3.965C9.214 21.198 10.534 22 12 22s2.786-.802 3.479-2.035C17.857 20.283 20 18.379 20 16c0-.173-.012-.347-.035-.521C21.198 14.785 22 13.465 22 12s-.802-2.785-2.035-3.479zm-9.01 7.895-3.667-3.714 1.424-1.404 2.257 2.286 4.327-4.294 1.408 1.42-5.749 5.706z"/>|
    )
  end

  @doc """
  Renders the `mobile` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.mobile />
  <Boxicons.mobile class="w-4 h-4" />
  <Boxicons.mobile solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def mobile(assigns) do
    svg(
      assigns,
      ~S|<path d="M17 2H7c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h10c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM7 16.999V5h10l.002 11.999H7z"/>|,
      ~S|<path d="M18 22c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H8c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h10zm-5-5a1 1 0 1 1 0 2 1 1 0 1 1 0-2z"/>|
    )
  end

  @doc """
  Renders the `download` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.download />
  <Boxicons.download class="w-4 h-4" />
  <Boxicons.download solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def download(assigns) do
    svg(
      assigns,
      ~S|<path d="m12 16 4-5h-3V4h-2v7H8z"/><path d="M20 18H4v-7H2v7c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2v-7h-2v7z"/>|,
      ~S|<path d="M19 9h-4V3H9v6H5l7 8zM4 19h16v2H4z"/>|
    )
  end

  @doc """
  Renders the `bowling_ball` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bowling_ball />
  <Boxicons.bowling_ball class="w-4 h-4" />
  <Boxicons.bowling_ball solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bowling_ball(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zM6.5 12a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 6.5 12zM9 6.5a1.5 1.5 0 1 1 3.001.001A1.5 1.5 0 0 1 9 6.5zm2.5 6.5a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 11.5 13z"/>|
    )
  end

  @doc """
  Renders the `doughnut_chart` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.doughnut_chart />
  <Boxicons.doughnut_chart class="w-4 h-4" />
  <Boxicons.doughnut_chart solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def doughnut_chart(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm7.931 9h-3.032A5.013 5.013 0 0 0 13 7.102V4.069A8.008 8.008 0 0 1 19.931 11zM12 9c1.654 0 3 1.346 3 3s-1.346 3-3 3-3-1.346-3-3 1.346-3 3-3zm0 11c-4.411 0-8-3.589-8-8 0-4.072 3.061-7.436 7-7.931v3.032A5.009 5.009 0 0 0 7 12c0 2.757 2.243 5 5 5a5.007 5.007 0 0 0 4.898-4h3.032c-.494 3.939-3.858 7-7.93 7z"/>|,
      ~S|<path d="M13 6c2.507.423 4.577 2.493 5 5h4c-.471-4.717-4.283-8.529-9-9v4z"/><path d="M18 13c-.478 2.833-2.982 4.949-5.949 4.949-3.309 0-6-2.691-6-6C6.051 8.982 8.167 6.478 11 6V2c-5.046.504-8.949 4.773-8.949 9.949 0 5.514 4.486 10 10 10 5.176 0 9.445-3.903 9.949-8.949h-4z"/>|
    )
  end

  @doc """
  Renders the `book_content` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.book_content />
  <Boxicons.book_content class="w-4 h-4" />
  <Boxicons.book_content solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def book_content(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM4 19V5h7v14H4zm9 0V5h7l.001 14H13z"/><path d="M15 7h3v2h-3zm0 4h3v2h-3z"/>|,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zm-1 4v2h-5V7h5zm-5 4h5v2h-5v-2zM4 19V5h7v14H4z"/>|
    )
  end

  @doc """
  Renders the `calculator` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.calculator />
  <Boxicons.calculator class="w-4 h-4" />
  <Boxicons.calculator solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def calculator(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 2H5c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM5 20V4h14l.001 16H5z"/><path d="M7 12h2v2H7zm0 4h2v2H7zm4-4h2v2h-2zM7 6h10v4H7zm4 10h2v2h-2zm4-4h2v6h-2z"/>|,
      ~S|<path d="M6 22h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2zm3-3H7v-2h2v2zm0-4H7v-2h2v2zm0-4H7V9h2v2zm4 8h-2v-2h2v2zm0-4h-2v-2h2v2zm0-4h-2V9h2v2zm4 8h-2v-6h2v6zm0-8h-2V9h2v2zM6 4h12v3H6V4z"/>|
    )
  end

  @doc """
  Renders the `tachometer` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.tachometer />
  <Boxicons.tachometer class="w-4 h-4" />
  <Boxicons.tachometer solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def tachometer(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 4C6.486 4 2 8.486 2 14a9.89 9.89 0 0 0 1.051 4.445c.17.34.516.555.895.555h16.107c.379 0 .726-.215.896-.555A9.89 9.89 0 0 0 22 14c0-5.514-4.486-10-10-10zm7.41 13H4.59A7.875 7.875 0 0 1 4 14c0-4.411 3.589-8 8-8s8 3.589 8 8a7.875 7.875 0 0 1-.59 3z"/><path d="M10.939 12.939a1.53 1.53 0 0 0 0 2.561 1.53 1.53 0 0 0 2.121-.44l3.962-6.038a.034.034 0 0 0 0-.035.033.033 0 0 0-.045-.01l-6.038 3.962z"/>|,
      ~S|<path d="M12 4C6.486 4 2 8.486 2 14a9.89 9.89 0 0 0 1.051 4.445c.17.34.516.555.895.555h16.107c.379 0 .726-.215.896-.555A9.89 9.89 0 0 0 22 14c0-5.514-4.486-10-10-10zm5.022 5.022L13.06 15.06a1.53 1.53 0 0 1-2.121.44 1.53 1.53 0 0 1 0-2.561l6.038-3.962a.033.033 0 0 1 .045.01.034.034 0 0 1 0 .035z"/>|
    )
  end

  @doc """
  Renders the `coin` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.coin />
  <Boxicons.coin class="w-4 h-4" />
  <Boxicons.coin solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def coin(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 6C7.03 6 2 7.546 2 10.5v4C2 17.454 7.03 19 12 19s10-1.546 10-4.5v-4C22 7.546 16.97 6 12 6zm-8 8.5v-1.197a9.989 9.989 0 0 0 2 .86v1.881c-1.312-.514-2-1.126-2-1.544zm12 .148v1.971c-.867.179-1.867.31-3 .358v-2a21.75 21.75 0 0 0 3-.329zm-5 2.33a18.788 18.788 0 0 1-3-.358v-1.971c.959.174 1.972.287 3 .33v1.999zm7-.934v-1.881a9.931 9.931 0 0 0 2-.86V14.5c0 .418-.687 1.03-2 1.544zM12 13c-5.177 0-8-1.651-8-2.5S6.823 8 12 8s8 1.651 8 2.5-2.823 2.5-8 2.5z"/>|,
      ~S|<path d="M12 5C7.031 5 2 6.546 2 9.5S7.031 14 12 14c4.97 0 10-1.546 10-4.5S16.97 5 12 5zm-5 9.938v3c1.237.299 2.605.482 4 .541v-3a21.166 21.166 0 0 1-4-.541zm6 .54v3a20.994 20.994 0 0 0 4-.541v-3a20.994 20.994 0 0 1-4 .541zm6-1.181v3c1.801-.755 3-1.857 3-3.297v-3c0 1.44-1.199 2.542-3 3.297zm-14 3v-3C3.2 13.542 2 12.439 2 11v3c0 1.439 1.2 2.542 3 3.297z"/>|
    )
  end

  @doc """
  Renders the `lock_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.lock_alt />
  <Boxicons.lock_alt class="w-4 h-4" />
  <Boxicons.lock_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def lock_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C9.243 2 7 4.243 7 7v3H6c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-8c0-1.103-.897-2-2-2h-1V7c0-2.757-2.243-5-5-5zm6 10 .002 8H6v-8h12zm-9-2V7c0-1.654 1.346-3 3-3s3 1.346 3 3v3H9z"/>|,
      ~S|<path d="M20 12c0-1.103-.897-2-2-2h-1V7c0-2.757-2.243-5-5-5S7 4.243 7 7v3H6c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-8zM9 7c0-1.654 1.346-3 3-3s3 1.346 3 3v3H9V7z"/>|
    )
  end

  @doc """
  Renders the `message_detail` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_detail />
  <Boxicons.message_detail class="w-4 h-4" />
  <Boxicons.message_detail solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_detail(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3v3.767L13.277 18H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14h-7.277L9 18.233V16H4V4h16v12z"/><path d="M7 7h10v2H7zm0 4h7v2H7z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .894-2 1.992v12.016C2 17.106 2.897 18 4 18h3v4l6.351-4H20c1.103 0 2-.894 2-1.992V3.992A1.998 1.998 0 0 0 20 2zm-6 11H7v-2h7v2zm3-4H7V7h10v2z"/>|
    )
  end

  @doc """
  Renders the `arrow_to_left` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.arrow_to_left />
  <Boxicons.arrow_to_left class="w-4 h-4" />
  <Boxicons.arrow_to_left solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def arrow_to_left(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 6h2v12H4zm10.293-.707L7.586 12l6.707 6.707 1.414-1.414L11.414 13H20v-2h-8.586l4.293-4.293z"/>|,
      ~S|<path d="M4 6h2v12H4zm10 7h6v-2h-6V6l-6 6 6 6z"/>|
    )
  end

  @doc """
  Renders the `volume_mute` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.volume_mute />
  <Boxicons.volume_mute class="w-4 h-4" />
  <Boxicons.volume_mute solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def volume_mute(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.707 20.293-2.023-2.023A9.566 9.566 0 0 0 21.999 12c0-4.091-2.472-7.453-5.999-9v2c2.387 1.386 3.999 4.047 3.999 7a8.113 8.113 0 0 1-1.672 4.913l-1.285-1.285C17.644 14.536 18 13.19 18 12c0-1.771-.775-3.9-2-5v7.586l-2-2V4a1 1 0 0 0-1.554-.832L7.727 6.313l-4.02-4.02-1.414 1.414 18 18 1.414-1.414zM12 5.868v4.718L9.169 7.755 12 5.868zM4 17h2.697l5.748 3.832a1.004 1.004 0 0 0 1.027.05A1 1 0 0 0 14 20v-1.879l-2-2v2.011l-4.445-2.964c-.025-.017-.056-.02-.082-.033a.986.986 0 0 0-.382-.116C7.059 15.016 7.032 15 7 15H4V9h.879L3.102 7.223A1.995 1.995 0 0 0 2 9v6c0 1.103.897 2 2 2z"/>|,
      ~S|<path d="m7.727 6.313-4.02-4.02-1.414 1.414 18 18 1.414-1.414-2.02-2.02A9.578 9.578 0 0 0 21.999 12c0-4.091-2.472-7.453-5.999-9v2c2.387 1.386 3.999 4.047 3.999 7a8.13 8.13 0 0 1-1.671 4.914l-1.286-1.286C17.644 14.536 18 13.19 18 12c0-1.771-.775-3.9-2-5v7.586l-2-2V2.132L7.727 6.313zM4 17h2.697L14 21.868v-3.747L3.102 7.223A1.995 1.995 0 0 0 2 9v6c0 1.103.897 2 2 2z"/>|
    )
  end

  @doc """
  Renders the `bell_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bell_minus />
  <Boxicons.bell_minus class="w-4 h-4" />
  <Boxicons.bell_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bell_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.707 15.293 19 13.586V10c0-3.217-2.185-5.927-5.145-6.742C13.562 2.52 12.846 2 12 2s-1.562.52-1.855 1.258C7.185 4.074 5 6.783 5 10v3.586l-1.707 1.707A.996.996 0 0 0 3 16v2a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1v-2a.996.996 0 0 0-.293-.707zM19 17H5v-.586l1.707-1.707A.996.996 0 0 0 7 14v-4c0-2.757 2.243-5 5-5s5 2.243 5 5v4c0 .266.105.52.293.707L19 16.414V17zm-7 5a2.98 2.98 0 0 0 2.818-2H9.182A2.98 2.98 0 0 0 12 22z"/><path d="M8.037 10h7.926v2H8.037z"/>|,
      ~S|<path d="M12 22a2.98 2.98 0 0 0 2.818-2H9.182A2.98 2.98 0 0 0 12 22zm8.707-5.707L19 14.586V10c0-3.217-2.185-5.926-5.145-6.743C13.562 2.52 12.846 2 12 2s-1.562.52-1.855 1.258C7.185 4.074 5 6.783 5 10v4.586l-1.707 1.707A.997.997 0 0 0 3 17v1a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1v-1a.997.997 0 0 0-.293-.707zM16 12H8v-2h8v2z"/>|
    )
  end

  @doc """
  Renders the `search` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.search />
  <Boxicons.search class="w-4 h-4" />
  <Boxicons.search solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def search(assigns) do
    svg(
      assigns,
      ~S|<path d="M10 18a7.952 7.952 0 0 0 4.897-1.688l4.396 4.396 1.414-1.414-4.396-4.396A7.952 7.952 0 0 0 18 10c0-4.411-3.589-8-8-8s-8 3.589-8 8 3.589 8 8 8zm0-14c3.309 0 6 2.691 6 6s-2.691 6-6 6-6-2.691-6-6 2.691-6 6-6z"/>|,
      ~S|<path d="M10 2c-4.411 0-8 3.589-8 8s3.589 8 8 8a7.952 7.952 0 0 0 4.897-1.688l4.396 4.396 1.414-1.414-4.396-4.396A7.952 7.952 0 0 0 18 10c0-4.411-3.589-8-8-8z"/>|
    )
  end

  @doc """
  Renders the `edit` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.edit />
  <Boxicons.edit class="w-4 h-4" />
  <Boxicons.edit solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def edit(assigns) do
    svg(
      assigns,
      ~S|<path d="m7 17.013 4.413-.015 9.632-9.54c.378-.378.586-.88.586-1.414s-.208-1.036-.586-1.414l-1.586-1.586c-.756-.756-2.075-.752-2.825-.003L7 12.583v4.43zM18.045 4.458l1.589 1.583-1.597 1.582-1.586-1.585 1.594-1.58zM9 13.417l6.03-5.973 1.586 1.586-6.029 5.971L9 15.006v-1.589z"/><path d="M5 21h14c1.103 0 2-.897 2-2v-8.668l-2 2V19H8.158c-.026 0-.053.01-.079.01-.033 0-.066-.009-.1-.01H5V5h6.847l2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2z"/>|,
      ~S|<path d="m18.988 2.012 3 3L19.701 7.3l-3-3zM8 16h3l7.287-7.287-3-3L8 13z"/><path d="M19 19H8.158c-.026 0-.053.01-.079.01-.033 0-.066-.009-.1-.01H5V5h6.847l2-2H5c-1.103 0-2 .896-2 2v14c0 1.104.897 2 2 2h14a2 2 0 0 0 2-2v-8.668l-2 2V19z"/>|
    )
  end

  @doc """
  Renders the `pie_chart_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pie_chart_alt />
  <Boxicons.pie_chart_alt class="w-4 h-4" />
  <Boxicons.pie_chart_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def pie_chart_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2a9.936 9.936 0 0 0-7.071 2.929C3.04 6.818 2 9.33 2 12s1.04 5.182 2.929 7.071C6.818 20.96 9.33 22 12 22s5.182-1.04 7.071-2.929C20.96 17.182 22 14.67 22 12s-1.04-5.182-2.929-7.071A9.936 9.936 0 0 0 12 2zm5.657 15.657C16.146 19.168 14.137 20 12 20s-4.146-.832-5.657-2.343C4.832 16.146 4 14.137 4 12s.832-4.146 2.343-5.657A7.927 7.927 0 0 1 11 4.069V12a1 1 0 0 0 1 1h7.931a7.927 7.927 0 0 1-2.274 4.657zM13 11V4.062a7.945 7.945 0 0 1 4.657 2.281A7.934 7.934 0 0 1 19.938 11H13z"/>|,
      ~S|<path d="M19.071 4.929A9.97 9.97 0 0 0 12 2a9.936 9.936 0 0 0-7.071 2.929C3.04 6.818 2 9.33 2 12s1.04 5.182 2.929 7.071C6.818 20.96 9.33 22 12 22s5.182-1.04 7.071-2.929A9.936 9.936 0 0 0 22 12a9.97 9.97 0 0 0-2.929-7.071zm-1.414 12.728C16.146 19.168 14.137 20 12 20s-4.146-.832-5.657-2.343C4.832 16.146 4 14.137 4 12s.832-4.146 2.343-5.657A7.948 7.948 0 0 1 12 4v8h8a7.948 7.948 0 0 1-2.343 5.657z"/>|
    )
  end

  @doc """
  Renders the `chevron_left_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevron_left_circle />
  <Boxicons.chevron_left_circle class="w-4 h-4" />
  <Boxicons.chevron_left_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevron_left_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M13.293 6.293 7.586 12l5.707 5.707 1.414-1.414L10.414 12l4.293-4.293z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm2.707 14.293-1.414 1.414L7.586 12l5.707-5.707 1.414 1.414L10.414 12l4.293 4.293z"/>|
    )
  end

  @doc """
  Renders the `printer` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.printer />
  <Boxicons.printer class="w-4 h-4" />
  <Boxicons.printer solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def printer(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 7h-1V2H6v5H5c-1.654 0-3 1.346-3 3v7c0 1.103.897 2 2 2h2v3h12v-3h2c1.103 0 2-.897 2-2v-7c0-1.654-1.346-3-3-3zM8 4h8v3H8V4zm8 16H8v-4h8v4zm4-3h-2v-3H6v3H4v-7c0-.551.449-1 1-1h14c.552 0 1 .449 1 1v7z"/><path d="M14 10h4v2h-4z"/>|,
      ~S|<path d="M19 7h-1V2H6v5H5a3 3 0 0 0-3 3v7a2 2 0 0 0 2 2h2v3h12v-3h2a2 2 0 0 0 2-2v-7a3 3 0 0 0-3-3zM8 4h8v3H8V4zm0 16v-4h8v4H8zm11-8h-4v-2h4v2z"/>|
    )
  end

  @doc """
  Renders the `home` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.home />
  <Boxicons.home class="w-4 h-4" />
  <Boxicons.home solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def home(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 13h1v7c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-7h1a1 1 0 0 0 .707-1.707l-9-9a.999.999 0 0 0-1.414 0l-9 9A1 1 0 0 0 3 13zm7 7v-5h4v5h-4zm2-15.586 6 6V15l.001 5H16v-5c0-1.103-.897-2-2-2h-4c-1.103 0-2 .897-2 2v5H6v-9.586l6-6z"/>|,
      ~S|<path d="m21.743 12.331-9-10c-.379-.422-1.107-.422-1.486 0l-9 10a.998.998 0 0 0-.17 1.076c.16.361.518.593.913.593h2v7a1 1 0 0 0 1 1h3a1 1 0 0 0 1-1v-4h4v4a1 1 0 0 0 1 1h3a1 1 0 0 0 1-1v-7h2a.998.998 0 0 0 .743-1.669z"/>|
    )
  end

  @doc """
  Renders the `objects_vertical_bottom` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.objects_vertical_bottom />
  <Boxicons.objects_vertical_bottom class="w-4 h-4" />
  <Boxicons.objects_vertical_bottom solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def objects_vertical_bottom(assigns) do
    svg(
      assigns,
      ~S|<path d="M2 20h20v2H2zM4 3v14a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1zm2 1h3v12H6zM13 17a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V7a1 1 0 0 0-1-1h-5a1 1 0 0 0-1 1zm2-9h3v8h-3z"/>|,
      ~S|<path d="M2 20h20v2H2z"/>|
    )
  end

  @doc """
  Renders the `credit_card` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.credit_card />
  <Boxicons.credit_card class="w-4 h-4" />
  <Boxicons.credit_card solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def credit_card(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 4H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zM4 6h16v2H4V6zm0 12v-6h16.001l.001 6H4z"/><path d="M6 14h6v2H6z"/>|,
      ~S|<path d="M20 4H4c-1.103 0-2 .897-2 2v2h20V6c0-1.103-.897-2-2-2zM2 18c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2v-6H2v6zm3-3h6v2H5v-2z"/>|
    )
  end

  @doc """
  Renders the `calendar_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.calendar_alt />
  <Boxicons.calendar_alt class="w-4 h-4" />
  <Boxicons.calendar_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def calendar_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-2V2h-2v2H9V2H7v2H5a2 2 0 0 0-2 2zm16 14H5V8h14z"/>|,
      ~S|<path d="M5 22h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zM5 7h14v2H5V7z"/>|
    )
  end

  @doc """
  Renders the `caret_left_square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.caret_left_square />
  <Boxicons.caret_left_square class="w-4 h-4" />
  <Boxicons.caret_left_square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def caret_left_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 17V7l-6 5z"/><path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM5 19V5h14l.002 14H5z"/>|,
      ~S|<path d="M5 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zm9-14v10l-6-5 6-5z"/>|
    )
  end

  @doc """
  Renders the `photo_album` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.photo_album />
  <Boxicons.photo_album class="w-4 h-4" />
  <Boxicons.photo_album solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def photo_album(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.024 11.536 10 10l-2 3h9l-3.5-5z"/><path d="M19 2H6c-1.206 0-3 .799-3 3v14c0 2.201 1.794 3 3 3h15v-2H6.012C5.55 19.988 5 19.806 5 19s.55-.988 1.012-1H21V4c0-1.103-.897-2-2-2zm0 14H5V5c0-.806.55-.988 1-1h13v12z"/>|,
      ~S|<path d="M20 2H6c-1.206 0-3 .799-3 3v14c0 2.201 1.794 3 3 3h15v-2H6.012C5.55 19.988 5 19.806 5 19s.55-.988 1.012-1H21V3a1 1 0 0 0-1-1zM9.503 5a1.503 1.503 0 1 1 0 3.006 1.503 1.503 0 0 1 0-3.006zM12 13H7l3-3 1.5 1.399L14.5 8l3.5 5h-6z"/>|
    )
  end

  @doc """
  Renders the `pointer` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pointer />
  <Boxicons.pointer class="w-4 h-4" />
  <Boxicons.pointer solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def pointer(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.978 13.21a1 1 0 0 0-.396-1.024l-14-10a.999.999 0 0 0-1.575.931l2 17a1 1 0 0 0 1.767.516l3.612-4.416 3.377 5.46 1.701-1.052-3.357-5.428 6.089-1.218a.995.995 0 0 0 .782-.769zm-8.674.31a1 1 0 0 0-.578.347l-3.008 3.677L7.257 5.127l10.283 7.345-5.236 1.048z"/>|,
      ~S|<path d="M20.978 13.21a1 1 0 0 0-.396-1.024l-14-10a.999.999 0 0 0-1.575.931l2 17a1 1 0 0 0 1.767.516l3.612-4.416 3.377 5.46 1.701-1.052-3.357-5.428 6.089-1.218a.995.995 0 0 0 .782-.769z"/>|
    )
  end

  @doc """
  Renders the `cabinet` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cabinet />
  <Boxicons.cabinet class="w-4 h-4" />
  <Boxicons.cabinet solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cabinet(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V4zM5 4h14v7H5V4zm0 16v-7h14.001v7H5z"/><path d="M14 7h-4V6H8v3h8V6h-2zm0 8v1h-4v-1H8v3h8v-3z"/>|,
      ~S|<path d="M21 4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v7h18V4zm-5 4H8V5h2v1h4V5h2v3zM5 22h14c1.103 0 2-.897 2-2v-7H3v7c0 1.103.897 2 2 2zm3-6h2v1h4v-1h2v3H8v-3z"/>|
    )
  end

  @doc """
  Renders the `chevron_right_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevron_right_circle />
  <Boxicons.chevron_right_circle class="w-4 h-4" />
  <Boxicons.chevron_right_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevron_right_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M9.293 7.707 13.586 12l-4.293 4.293 1.414 1.414L16.414 12l-5.707-5.707z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-1.293 15.707-1.414-1.414L13.586 12 9.293 7.707l1.414-1.414L16.414 12l-5.707 5.707z"/>|
    )
  end

  @doc """
  Renders the `message_alt_error` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_alt_error />
  <Boxicons.message_alt_error class="w-4 h-4" />
  <Boxicons.message_alt_error solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_alt_error(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 2c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.586L12 21.414 15.414 18H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5zm14 14h-4.414L12 18.586 9.414 16H5V4h14v12z"/><path d="M11 6h2v6h-2zm0 7h2v2h-2z"/>|,
      ~S|<path d="M3 4v12c0 1.103.897 2 2 2h3.5l3.5 4 3.5-4H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2zm8 1h2v6h-2V5zm0 8h2v2h-2v-2z"/>|
    )
  end

  @doc """
  Renders the `cog` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cog />
  <Boxicons.cog class="w-4 h-4" />
  <Boxicons.cog solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cog(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 16c2.206 0 4-1.794 4-4s-1.794-4-4-4-4 1.794-4 4 1.794 4 4 4zm0-6c1.084 0 2 .916 2 2s-.916 2-2 2-2-.916-2-2 .916-2 2-2z"/><path d="m2.845 16.136 1 1.73c.531.917 1.809 1.261 2.73.73l.529-.306A8.1 8.1 0 0 0 9 19.402V20c0 1.103.897 2 2 2h2c1.103 0 2-.897 2-2v-.598a8.132 8.132 0 0 0 1.896-1.111l.529.306c.923.53 2.198.188 2.731-.731l.999-1.729a2.001 2.001 0 0 0-.731-2.732l-.505-.292a7.718 7.718 0 0 0 0-2.224l.505-.292a2.002 2.002 0 0 0 .731-2.732l-.999-1.729c-.531-.92-1.808-1.265-2.731-.732l-.529.306A8.1 8.1 0 0 0 15 4.598V4c0-1.103-.897-2-2-2h-2c-1.103 0-2 .897-2 2v.598a8.132 8.132 0 0 0-1.896 1.111l-.529-.306c-.924-.531-2.2-.187-2.731.732l-.999 1.729a2.001 2.001 0 0 0 .731 2.732l.505.292a7.683 7.683 0 0 0 0 2.223l-.505.292a2.003 2.003 0 0 0-.731 2.733zm3.326-2.758A5.703 5.703 0 0 1 6 12c0-.462.058-.926.17-1.378a.999.999 0 0 0-.47-1.108l-1.123-.65.998-1.729 1.145.662a.997.997 0 0 0 1.188-.142 6.071 6.071 0 0 1 2.384-1.399A1 1 0 0 0 11 5.3V4h2v1.3a1 1 0 0 0 .708.956 6.083 6.083 0 0 1 2.384 1.399.999.999 0 0 0 1.188.142l1.144-.661 1 1.729-1.124.649a1 1 0 0 0-.47 1.108c.112.452.17.916.17 1.378 0 .461-.058.925-.171 1.378a1 1 0 0 0 .471 1.108l1.123.649-.998 1.729-1.145-.661a.996.996 0 0 0-1.188.142 6.071 6.071 0 0 1-2.384 1.399A1 1 0 0 0 13 18.7l.002 1.3H11v-1.3a1 1 0 0 0-.708-.956 6.083 6.083 0 0 1-2.384-1.399.992.992 0 0 0-1.188-.141l-1.144.662-1-1.729 1.124-.651a1 1 0 0 0 .471-1.108z"/>|,
      ~S|<path d="m2.344 15.271 2 3.46a1 1 0 0 0 1.366.365l1.396-.806c.58.457 1.221.832 1.895 1.112V21a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1v-1.598a8.094 8.094 0 0 0 1.895-1.112l1.396.806c.477.275 1.091.11 1.366-.365l2-3.46a1.004 1.004 0 0 0-.365-1.366l-1.372-.793a7.683 7.683 0 0 0-.002-2.224l1.372-.793c.476-.275.641-.89.365-1.366l-2-3.46a1 1 0 0 0-1.366-.365l-1.396.806A8.034 8.034 0 0 0 15 4.598V3a1 1 0 0 0-1-1h-4a1 1 0 0 0-1 1v1.598A8.094 8.094 0 0 0 7.105 5.71L5.71 4.904a.999.999 0 0 0-1.366.365l-2 3.46a1.004 1.004 0 0 0 .365 1.366l1.372.793a7.683 7.683 0 0 0 0 2.224l-1.372.793c-.476.275-.641.89-.365 1.366zM12 8c2.206 0 4 1.794 4 4s-1.794 4-4 4-4-1.794-4-4 1.794-4 4-4z"/>|
    )
  end

  @doc """
  Renders the `gas_pump` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.gas_pump />
  <Boxicons.gas_pump class="w-4 h-4" />
  <Boxicons.gas_pump solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def gas_pump(assigns) do
    svg(
      assigns,
      ~S|<path d="m19.616 6.48.014-.017-4-3.24-1.26 1.554 2.067 1.674a2.99 2.99 0 0 0-1.395 3.058c.149.899.766 1.676 1.565 2.112.897.49 1.685.446 2.384.197L18.976 18a.996.996 0 0 1-1.39.922.995.995 0 0 1-.318-.217.996.996 0 0 1-.291-.705L17 16a2.98 2.98 0 0 0-.877-2.119A3 3 0 0 0 14 13h-1V5c0-1.103-.897-2-2-2H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h7c1.103 0 2-.897 2-2v-4h1c.136 0 .267.027.391.078a1.028 1.028 0 0 1 .531.533A.994.994 0 0 1 15 16l-.024 2c0 .406.079.799.236 1.168.151.359.368.68.641.951a2.97 2.97 0 0 0 2.123.881c.406 0 .798-.078 1.168-.236.358-.15.68-.367.951-.641A2.983 2.983 0 0 0 20.976 18L21 9a2.997 2.997 0 0 0-1.384-2.52zM4 5h7l.001 4H4V5zm0 14v-8h7.001l.001 8H4zm14-9a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>|,
      ~S|<path d="m19.616 6.48.014-.017-4-3.24-1.26 1.554 2.067 1.674a2.99 2.99 0 0 0-1.394 3.062c.15.899.769 1.676 1.57 2.111.895.487 1.68.442 2.378.194L18.976 18a.996.996 0 0 1-1.39.922.995.995 0 0 1-.318-.217.996.996 0 0 1-.291-.705L17 16a2.98 2.98 0 0 0-.877-2.119A3 3 0 0 0 14 13h-1V5a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h7a2 2 0 0 0 2-2v-4h1c.136 0 .267.027.391.078a1.028 1.028 0 0 1 .531.533A.994.994 0 0 1 15 16l-.024 2c0 .406.079.799.236 1.168.151.359.368.68.641.951a2.97 2.97 0 0 0 2.123.881c.406 0 .798-.078 1.168-.236.358-.15.68-.367.951-.641A2.983 2.983 0 0 0 20.976 18L21 9a2.997 2.997 0 0 0-1.384-2.52zM11 8H4V5h7v3zm7 2a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>|
    )
  end

  @doc """
  Renders the `lock_open_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.lock_open_alt />
  <Boxicons.lock_open_alt class="w-4 h-4" />
  <Boxicons.lock_open_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def lock_open_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M17 8V7c0-2.757-2.243-5-5-5S7 4.243 7 7v3H6c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-8c0-1.103-.897-2-2-2H9V7c0-1.654 1.346-3 3-3s3 1.346 3 3v1h2zm1 4 .002 8H6v-8h12z"/>|,
      ~S|<path d="M17 8V7c0-2.757-2.243-5-5-5S7 4.243 7 7v3H6c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-8c0-1.103-.897-2-2-2H9V7c0-1.654 1.346-3 3-3s3 1.346 3 3v1h2z"/>|
    )
  end

  @doc """
  Renders the `chevrons_right` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevrons_right />
  <Boxicons.chevrons_right class="w-4 h-4" />
  <Boxicons.chevrons_right solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevrons_right(assigns) do
    svg(
      assigns,
      ~S|<path d="M10.296 7.71 14.621 12l-4.325 4.29 1.408 1.42L17.461 12l-5.757-5.71z"/><path d="M6.704 6.29 5.296 7.71 9.621 12l-4.325 4.29 1.408 1.42L12.461 12z"/>|,
      ~S|<path d="m13.061 4.939-2.122 2.122L15.879 12l-4.94 4.939 2.122 2.122L20.121 12z"/><path d="M6.061 19.061 13.121 12l-7.06-7.061-2.122 2.122L8.879 12l-4.94 4.939z"/>|
    )
  end

  @doc """
  Renders the `plus_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.plus_circle />
  <Boxicons.plus_circle class="w-4 h-4" />
  <Boxicons.plus_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def plus_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 7h-2v4H7v2h4v4h2v-4h4v-2h-4z"/><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm5 11h-4v4h-2v-4H7v-2h4V7h2v4h4v2z"/>|
    )
  end

  @doc """
  Renders the `bookmark_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bookmark_alt />
  <Boxicons.bookmark_alt class="w-4 h-4" />
  <Boxicons.bookmark_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bookmark_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.5 2h-12C4.57 2 3 3.57 3 5.5V22l7-3.5 7 3.5v-9h5V5.5C22 3.57 20.43 2 18.5 2zM15 18.764l-5-2.5-5 2.5V5.5C5 4.673 5.673 4 6.5 4h8.852A3.451 3.451 0 0 0 15 5.5v13.264zM20 11h-3V5.5c0-.827.673-1.5 1.5-1.5s1.5.673 1.5 1.5V11z"/>|,
      ~S|<path d="M18.5 2h-12C4.57 2 3 3.57 3 5.5V22l7-3.5 7 3.5v-9h5V5.5C22 3.57 20.43 2 18.5 2zm1.5 9h-3V5.5c0-.827.673-1.5 1.5-1.5s1.5.673 1.5 1.5V11z"/>|
    )
  end

  @doc """
  Renders the `coffee_togo` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.coffee_togo />
  <Boxicons.coffee_togo class="w-4 h-4" />
  <Boxicons.coffee_togo solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def coffee_togo(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 22h10a1 1 0 0 0 .99-.858L19.867 8H21V6h-1.382l-1.724-3.447A.998.998 0 0 0 17 2H7c-.379 0-.725.214-.895.553L4.382 6H3v2h1.133L6.01 21.142A1 1 0 0 0 7 22zm10.418-11H6.582l-.429-3h11.693l-.428 3zm-9.551 9-.429-3h9.123l-.429 3H7.867zM7.618 4h8.764l1 2H6.618l1-2z"/>|,
      ~S|<path d="m18.5 5-1.224-2.447A1 1 0 0 0 16.382 2H7.618a1 1 0 0 0-.894.553L5.5 5H3v2h18V5h-2.5zM6.734 21.142c.071.492.493.858.991.858h8.551a1 1 0 0 0 .99-.858L19 9H5l1.734 12.142zM16 12l-.714 5H8.714L8 12h8z"/>|
    )
  end

  @doc """
  Renders the `credit_card_front` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.credit_card_front />
  <Boxicons.credit_card_front class="w-4 h-4" />
  <Boxicons.credit_card_front solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def credit_card_front(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 4H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zM4 18V6h16l.001 12H4z"/><path d="M6.5 11h3a.5.5 0 0 0 .5-.5v-2a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v2a.5.5 0 0 0 .5.5zM6 14h6v2.001H6zm7 0h5v2.001h-5z"/>|,
      ~S|<path d="M20 4H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zM5 8.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-2zm6 7.5H5v-2h6v2zm8 0h-6v-2h6v2z"/>|
    )
  end

  @doc """
  Renders the `cookie` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cookie />
  <Boxicons.cookie class="w-4 h-4" />
  <Boxicons.cookie solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cookie(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.598 11.064a1.006 1.006 0 0 0-.854-.172A2.938 2.938 0 0 1 20 11c-1.654 0-3-1.346-3.003-2.937.005-.034.016-.136.017-.17a.998.998 0 0 0-1.254-1.006A2.963 2.963 0 0 1 15 7c-1.654 0-3-1.346-3-3 0-.217.031-.444.099-.716a1 1 0 0 0-1.067-1.236A9.956 9.956 0 0 0 2 12c0 5.514 4.486 10 10 10s10-4.486 10-10c0-.049-.003-.097-.007-.16a1.004 1.004 0 0 0-.395-.776zM12 20c-4.411 0-8-3.589-8-8a7.962 7.962 0 0 1 6.006-7.75A5.006 5.006 0 0 0 15 9l.101-.001a5.007 5.007 0 0 0 4.837 4C19.444 16.941 16.073 20 12 20z"/>|,
      ~S|<path d="M21.598 11.064a1.006 1.006 0 0 0-.854-.172A2.938 2.938 0 0 1 20 11c-1.654 0-3-1.346-3.003-2.938.005-.034.016-.134.017-.168a.998.998 0 0 0-1.254-1.006A3.002 3.002 0 0 1 15 7c-1.654 0-3-1.346-3-3 0-.217.031-.444.099-.716a1 1 0 0 0-1.067-1.236A9.956 9.956 0 0 0 2 12c0 5.514 4.486 10 10 10s10-4.486 10-10c0-.049-.003-.097-.007-.16a1.004 1.004 0 0 0-.395-.776zM8.5 6a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3zm-2 8a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm3 4a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm2.5-6.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 0 1-3 0zm3.5 6.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>|
    )
  end

  @doc """
  Renders the `message_rounded_dots` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_rounded_dots />
  <Boxicons.message_rounded_dots class="w-4 h-4" />
  <Boxicons.message_rounded_dots solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_rounded_dots(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.908 1.897 5.515 5 6.934V22l5.34-4.004C17.697 17.852 22 14.32 22 10c0-4.411-4.486-8-10-8zm0 14h-.333L9 18v-2.417l-.641-.247C5.671 14.301 4 12.256 4 10c0-3.309 3.589-6 8-6s8 2.691 8 6-3.589 6-8 6z"/>|,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.908 1.897 5.516 5 6.934V22l5.34-4.004C17.697 17.852 22 14.32 22 10c0-4.411-4.486-8-10-8zm-2.5 9a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>|
    )
  end

  @doc """
  Renders the `left_arrow_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.left_arrow_alt />
  <Boxicons.left_arrow_alt class="w-4 h-4" />
  <Boxicons.left_arrow_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def left_arrow_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M12.707 17.293 8.414 13H18v-2H8.414l4.293-4.293-1.414-1.414L4.586 12l6.707 6.707z"/>|,
      ~S|<path d="m5 12 7 6v-5h6v-2h-6V6z"/>|
    )
  end

  @doc """
  Renders the `tired` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.tired />
  <Boxicons.tired class="w-4 h-4" />
  <Boxicons.tired solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def tired(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 14c-3 0-4 3-4 3h8s-1-3-4-3z"/><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="m17.555 8.832-1.109-1.664-3 2a1.001 1.001 0 0 0 .108 1.727l4 2 .895-1.789-2.459-1.229 1.565-1.045zm-6.557 1.23a1 1 0 0 0-.443-.894l-3-2-1.11 1.664 1.566 1.044-2.459 1.229.895 1.789 4-2a.998.998 0 0 0 .551-.832z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-6.447 9.105 2.459-1.229-1.567-1.044 1.109-1.664 3 2a1 1 0 0 1-.108 1.727l-4 2-.893-1.79zM8 17s1-3 4-3 4 3 4 3H8zm9.553-4.105-4-2a1 1 0 0 1-.108-1.727l3-2 1.109 1.664-1.566 1.044 2.459 1.229-.894 1.79z"/>|
    )
  end

  @doc """
  Renders the `meh_blank` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.meh_blank />
  <Boxicons.meh_blank class="w-4 h-4" />
  <Boxicons.meh_blank solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def meh_blank(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zM8.5 12a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 8.5 12zm6.993-.014a1.494 1.494 0 1 1 .001-2.987 1.494 1.494 0 0 1-.001 2.987z"/>|
    )
  end

  @doc """
  Renders the `meteor` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.meteor />
  <Boxicons.meteor class="w-4 h-4" />
  <Boxicons.meteor solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def meteor(assigns) do
    svg(
      assigns,
      ~S|<path d="M9.5 22c2.003 0 3.887-.78 5.313-2.207l6.904-7.096A1 1 0 0 0 21 11h-3.301l4.175-7.514a1.001 1.001 0 0 0-1.359-1.36l-7.11 3.95.576-2.879a1 1 0 0 0-1.629-.957L4.196 9.197c-2.924 2.924-2.924 7.682 0 10.606A7.452 7.452 0 0 0 9.5 22zM5.552 10.665l5.902-5.031-.248 1.24-.186.93v.001l-.424 2.119 7.83-4.35-3.3 5.94-.001.001L14.301 13h4.331l-5.243 5.389C12.35 19.428 10.969 20 9.5 20s-2.851-.572-3.89-1.611c-2.143-2.144-2.143-5.634-.058-7.724z"/><path d="M9.5 18a3.492 3.492 0 0 0 1.484-6.659c.005.053.016.105.016.159a1.5 1.5 0 1 1-3 0c0-.054.011-.106.016-.159A3.492 3.492 0 0 0 9.5 18z"/>|,
      ~S|<path d="M13.507 2.138a1 1 0 0 0-1.155.102L4.196 9.197c-2.924 2.924-2.924 7.682 0 10.606a7.472 7.472 0 0 0 5.3 2.192c1.924 0 3.85-.734 5.317-2.202l6.903-7.096A1 1 0 0 0 21 11h-3.301l4.175-7.514a1.001 1.001 0 0 0-1.359-1.36l-7.11 3.95.576-2.879a1.002 1.002 0 0 0-.474-1.059zM14 14.5a4.5 4.5 0 0 1-9 0c0-1.57.807-2.949 2.025-3.754-.01.084-.025.167-.025.254a2 2 0 1 0 3.845-.772C12.669 10.802 14 12.486 14 14.5z"/>|
    )
  end

  @doc """
  Renders the `camera` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.camera />
  <Boxicons.camera class="w-4 h-4" />
  <Boxicons.camera solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def camera(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 8c-2.168 0-4 1.832-4 4s1.832 4 4 4 4-1.832 4-4-1.832-4-4-4zm0 6c-1.065 0-2-.935-2-2s.935-2 2-2 2 .935 2 2-.935 2-2 2z"/><path d="M20 5h-2.586l-2.707-2.707A.996.996 0 0 0 14 2h-4a.996.996 0 0 0-.707.293L6.586 5H4c-1.103 0-2 .897-2 2v11c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2zM4 18V7h3c.266 0 .52-.105.707-.293L10.414 4h3.172l2.707 2.707A.996.996 0 0 0 17 7h3l.002 11H4z"/>|,
      ~S|<path d="M12 9c-1.626 0-3 1.374-3 3s1.374 3 3 3 3-1.374 3-3-1.374-3-3-3z"/><path d="M20 5h-2.586l-2.707-2.707A.996.996 0 0 0 14 2h-4a.996.996 0 0 0-.707.293L6.586 5H4c-1.103 0-2 .897-2 2v11c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2zm-8 12c-2.71 0-5-2.29-5-5s2.29-5 5-5 5 2.29 5 5-2.29 5-5 5z"/>|
    )
  end

  @doc """
  Renders the `hourglass` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hourglass />
  <Boxicons.hourglass class="w-4 h-4" />
  <Boxicons.hourglass solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def hourglass(assigns) do
    svg(
      assigns,
      ~S|<path d="M15.566 11.021A7.016 7.016 0 0 0 19 5V4h1V2H4v2h1v1a7.016 7.016 0 0 0 3.434 6.021c.354.208.566.545.566.9v.158c0 .354-.212.69-.566.9A7.016 7.016 0 0 0 5 19v1H4v2h16v-2h-1v-1a7.014 7.014 0 0 0-3.433-6.02c-.355-.21-.567-.547-.567-.901v-.158c0-.355.212-.692.566-.9zm-1.015 3.681A5.008 5.008 0 0 1 17 19v1H7v-1a5.01 5.01 0 0 1 2.45-4.299c.971-.573 1.55-1.554 1.55-2.622v-.158c0-1.069-.58-2.051-1.551-2.623A5.008 5.008 0 0 1 7 5V4h10v1c0 1.76-.938 3.406-2.449 4.298C13.58 9.87 13 10.852 13 11.921v.158c0 1.068.579 2.049 1.551 2.623z"/>|,
      ~S|<path d="M19 22h1v-2h-1v-1a7.014 7.014 0 0 0-3.433-6.02c-.355-.21-.567-.547-.567-.901v-.158c0-.354.212-.691.566-.9A7.016 7.016 0 0 0 19 5V4h1V2H4v2h1v1a7.016 7.016 0 0 0 3.434 6.021c.354.209.566.545.566.9v.158c0 .354-.212.691-.566.9A7.016 7.016 0 0 0 5 19v1H4v2h15zM17 4v1a5.005 5.005 0 0 1-1.004 3H8.004A5.005 5.005 0 0 1 7 5V4h10zM9.45 14.702c.971-.574 1.55-1.554 1.55-2.623V12h2v.079c0 1.068.579 2.049 1.551 2.623A4.98 4.98 0 0 1 16.573 17H7.427a4.977 4.977 0 0 1 2.023-2.298z"/>|
    )
  end

  @doc """
  Renders the `carousel` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.carousel />
  <Boxicons.carousel class="w-4 h-4" />
  <Boxicons.carousel solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def carousel(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 19h2c0 1.103.897 2 2 2h8c1.103 0 2-.897 2-2h2c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2h-2c0-1.103-.897-2-2-2H8c-1.103 0-2 .897-2 2H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2zM20 7v10h-2V7h2zM8 5h8l.001 14H8V5zM4 7h2v10H4V7z"/>|,
      ~S|<path d="M16 3H8c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h8c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM2 7v10c0 1.103.897 2 2 2V5c-1.103 0-2 .897-2 2zm18-2v14c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `chart` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chart />
  <Boxicons.chart class="w-4 h-4" />
  <Boxicons.chart solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chart(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zM5 5h14l.001 14H5V5z"/><path d="m13.553 11.658-4-2-2.448 4.895 1.79.894 1.552-3.105 4 2 2.448-4.895-1.79-.894z"/>|,
      ~S|<path d="M19 21c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14zM9.553 9.658l4 2 1.553-3.105 1.789.895-2.447 4.895-4-2-1.553 3.105-1.789-.895 2.447-4.895z"/>|
    )
  end

  @doc """
  Renders the `user_voice` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.user_voice />
  <Boxicons.user_voice class="w-4 h-4" />
  <Boxicons.user_voice solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def user_voice(assigns) do
    svg(
      assigns,
      ~S|<path d="M8 12c2.28 0 4-1.72 4-4s-1.72-4-4-4-4 1.72-4 4 1.72 4 4 4zm0-6c1.178 0 2 .822 2 2s-.822 2-2 2-2-.822-2-2 .822-2 2-2zm1 7H7c-2.757 0-5 2.243-5 5v1h2v-1c0-1.654 1.346-3 3-3h2c1.654 0 3 1.346 3 3v1h2v-1c0-2.757-2.243-5-5-5zm9.364-10.364L16.95 4.05C18.271 5.373 19 7.131 19 9s-.729 3.627-2.05 4.95l1.414 1.414C20.064 13.663 21 11.403 21 9s-.936-4.663-2.636-6.364z"/><path d="M15.535 5.464 14.121 6.88C14.688 7.445 15 8.198 15 9s-.312 1.555-.879 2.12l1.414 1.416C16.479 11.592 17 10.337 17 9s-.521-2.592-1.465-3.536z"/>|,
      ~S|<path d="M8 12.052c1.995 0 3.5-1.505 3.5-3.5s-1.505-3.5-3.5-3.5-3.5 1.505-3.5 3.5 1.505 3.5 3.5 3.5zM9 13H7c-2.757 0-5 2.243-5 5v1h12v-1c0-2.757-2.243-5-5-5zm9.364-10.364L16.95 4.05C18.271 5.373 19 7.131 19 9s-.729 3.627-2.05 4.95l1.414 1.414C20.064 13.663 21 11.403 21 9s-.936-4.663-2.636-6.364z"/><path d="M15.535 5.464 14.121 6.88C14.688 7.445 15 8.198 15 9s-.312 1.555-.879 2.12l1.414 1.416C16.479 11.592 17 10.337 17 9s-.521-2.592-1.465-3.536z"/>|
    )
  end

  @doc """
  Renders the `message_rounded_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_rounded_minus />
  <Boxicons.message_rounded_minus class="w-4 h-4" />
  <Boxicons.message_rounded_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_rounded_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.908 1.898 5.515 5 6.934V22l5.34-4.005C17.697 17.852 22 14.32 22 10c0-4.411-4.486-8-10-8zm0 14h-.333L9 18v-2.417l-.641-.247C5.67 14.301 4 12.256 4 10c0-3.309 3.589-6 8-6s8 2.691 8 6-3.589 6-8 6z"/><path d="M8 9h8v2H8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.907 1.897 5.515 5 6.934V22l5.34-4.005C17.697 17.853 22 14.32 22 10c0-4.411-4.486-8-10-8zm4 9H8V9h8v2z"/>|
    )
  end

  @doc """
  Renders the `envelope` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.envelope />
  <Boxicons.envelope class="w-4 h-4" />
  <Boxicons.envelope solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def envelope(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 4H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm0 2v.511l-8 6.223-8-6.222V6h16zM4 18V9.044l7.386 5.745a.994.994 0 0 0 1.228 0L20 9.044 20.002 18H4z"/>|,
      ~S|<path d="M20 4H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2zm0 4.7-8 5.334L4 8.7V6.297l8 5.333 8-5.333V8.7z"/>|
    )
  end

  @doc """
  Renders the `upside_down` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.upside_down />
  <Boxicons.upside_down class="w-4 h-4" />
  <Boxicons.upside_down solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def upside_down(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M14.829 9.172c.181.181.346.38.488.592l1.658-1.119a6.063 6.063 0 0 0-1.621-1.62 5.963 5.963 0 0 0-2.148-.903 5.985 5.985 0 0 0-5.448 1.634 5.993 5.993 0 0 0-.733.889l1.657 1.119a4.017 4.017 0 0 1 2.51-1.683 3.989 3.989 0 0 1 3.637 1.091z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zM8.507 15a1.494 1.494 0 1 1 .001-2.987A1.494 1.494 0 0 1 8.507 15zm4.301-6.919a4.108 4.108 0 0 0-1.616 0 4.12 4.12 0 0 0-.751.233c-.234.1-.463.224-.678.368a4.077 4.077 0 0 0-1.08 1.082L7.024 8.646a6.026 6.026 0 0 1 2.639-2.175 6.097 6.097 0 0 1 1.128-.35 6.061 6.061 0 0 1 2.415 0 5.919 5.919 0 0 1 2.148.903 6.078 6.078 0 0 1 1.621 1.622l-1.658 1.117a3.994 3.994 0 0 0-.488-.59 3.988 3.988 0 0 0-2.021-1.092zM15.5 15a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 15.5 15z"/>|
    )
  end

  @doc """
  Renders the `comment` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.comment />
  <Boxicons.comment class="w-4 h-4" />
  <Boxicons.comment solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def comment(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v18l5.333-4H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14H6.667L4 18V4h16v12z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v18l4-4h14c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `tag` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.tag />
  <Boxicons.tag class="w-4 h-4" />
  <Boxicons.tag solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def tag(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 4H8.515a2 2 0 0 0-1.627.838l-4.701 6.581a.997.997 0 0 0 0 1.162l4.701 6.581A2 2 0 0 0 8.515 20H20c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm0 14H8.515l-4.286-6 4.286-6H20v12z"/>|,
      ~S|<path d="M21.842 6.218a1.977 1.977 0 0 0-.424-.628A1.99 1.99 0 0 0 20 5H8c-.297 0-.578.132-.769.359l-5 6c-.309.371-.309.91 0 1.281l5 6c.191.228.472.36.769.36h12a1.977 1.977 0 0 0 1.41-.582A1.99 1.99 0 0 0 22 17V7c0-.266-.052-.525-.158-.782z"/>|
    )
  end

  @doc """
  Renders the `bug_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bug_alt />
  <Boxicons.bug_alt class="w-4 h-4" />
  <Boxicons.bug_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bug_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M9 9h6v2H9zm0 4h6v2H9z"/><path d="m18 5.414 1.707-1.707-1.414-1.414-1.563 1.562C15.483 2.708 13.824 2 12 2s-3.483.708-4.73 1.855L5.707 2.293 4.293 3.707 6 5.414A6.937 6.937 0 0 0 5 9H3v2h2v2H3v2h2c0 3.86 3.141 7 7 7s7-3.14 7-7h2v-2h-2v-2h2V9h-2a6.937 6.937 0 0 0-1-3.586zM17 13v2c0 2.757-2.243 5-5 5s-5-2.243-5-5V9c0-2.757 2.243-5 5-5s5 2.243 5 5v4z"/>|,
      ~S|<path d="m18 5.414 1.707-1.707-1.414-1.414-1.563 1.562C15.483 2.708 13.824 2 12 2s-3.483.708-4.73 1.855L5.707 2.293 4.293 3.707 6 5.414A6.937 6.937 0 0 0 5 9H3v2h2v2H3v2h2c0 3.86 3.141 7 7 7s7-3.14 7-7h2v-2h-2v-2h2V9h-2a6.937 6.937 0 0 0-1-3.586zM15 15H9v-2h6v2zm0-4H9V9h6v2z"/>|
    )
  end

  @doc """
  Renders the `angry` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.angry />
  <Boxicons.angry class="w-4 h-4" />
  <Boxicons.angry solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def angry(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M12 14c-3 0-4 3-4 3h8s-1-3-4-3zm-2.439-2.439c.014-.014.023-.03.037-.044l1.031.413.742-1.857-5-2-.742 1.856 1.373.549L7 10.5a1.499 1.499 0 0 0 2.561 1.061zm3.068-1.49.742 1.857 1.037-.415c.011.011.019.024.029.035a1.488 1.488 0 0 0 2.112 0c.271-.271.438-.644.438-1.056l-.001-.01 1.386-.554-.742-1.857-5.001 2z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-5 8.5.002-.022-1.373-.549.742-1.857 5 2-.742 1.857-1.031-.413c-.014.014-.023.031-.037.044A1.499 1.499 0 0 1 7 10.5zM8 17s1-3 4-3 4 3 4 3H8zm8.986-6.507c0 .412-.167.785-.438 1.056a1.488 1.488 0 0 1-2.112 0c-.011-.011-.019-.024-.029-.035l-1.037.415-.742-1.857 5-2 .742 1.857-1.386.554a.036.036 0 0 1 .002.01z"/>|
    )
  end

  @doc """
  Renders the `landscape` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.landscape />
  <Boxicons.landscape class="w-4 h-4" />
  <Boxicons.landscape solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def landscape(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 20h18a1 1 0 0 0 .864-1.504l-7-12c-.359-.615-1.369-.613-1.729 0L9.866 12.1l-1.02-1.632A.998.998 0 0 0 8 10h-.001a1 1 0 0 0-.847.47l-5 8A1 1 0 0 0 3 20zM14 8.985 19.259 18h-5.704l-2.486-3.987L14 8.985zm-5.999 3.9L11.197 18H4.805l3.196-5.115zM6 8c1.654 0 3-1.346 3-3S7.654 2 6 2 3 3.346 3 5s1.346 3 3 3zm0-4a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>|,
      ~S|<path d="m14 7-5.223 8.487L7 13l-5 7h20z"/>|
    )
  end

  @doc """
  Renders the `arrow_to_top` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.arrow_to_top />
  <Boxicons.arrow_to_top class="w-4 h-4" />
  <Boxicons.arrow_to_top solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def arrow_to_top(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 4h12v2H6zm.707 11.707L11 11.414V20h2v-8.586l4.293 4.293 1.414-1.414L12 7.586l-6.707 6.707z"/>|,
      ~S|<path d="M6 4h12v2H6zm5 10v6h2v-6h5l-6-6-6 6z"/>|
    )
  end

  @doc """
  Renders the `message_add` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_add />
  <Boxicons.message_add class="w-4 h-4" />
  <Boxicons.message_add solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_add(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3v3.767L13.277 18H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14h-7.277L9 18.233V16H4V4h16v12z"/><path d="M11 14h2v-3h3V9h-3V6h-2v3H8v2h3z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .894-2 1.992v12.016C2 17.106 2.897 18 4 18h3v4l6.351-4H20c1.103 0 2-.894 2-1.992V3.992A1.998 1.998 0 0 0 20 2zm-3 9h-4v4h-2v-4H7V9h4V5h2v4h4v2z"/>|
    )
  end

  @doc """
  Renders the `chevron_up_square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevron_up_square />
  <Boxicons.chevron_up_square class="w-4 h-4" />
  <Boxicons.chevron_up_square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevron_up_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zM5 5h14l.001 14H5V5z"/><path d="m6.293 13.293 1.414 1.414L12 10.414l4.293 4.293 1.414-1.414L12 7.586z"/>|,
      ~S|<path d="M5 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zm7-13.414 5.707 5.707-1.414 1.414L12 10.414l-4.293 4.293-1.414-1.414L12 7.586z"/>|
    )
  end

  @doc """
  Renders the `image_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.image_alt />
  <Boxicons.image_alt class="w-4 h-4" />
  <Boxicons.image_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def image_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM5 19V5h14l.002 14H5z"/><path d="m10 14-1-1-3 4h12l-5-7z"/>|,
      ~S|<path d="M5 21h14a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2zm3-7 2.363 2.363L14 11l5 7H5l3-4z"/>|
    )
  end

  @doc """
  Renders the `meh_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.meh_alt />
  <Boxicons.meh_alt class="w-4 h-4" />
  <Boxicons.meh_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def meh_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M14 10h4v2h-4zm-6.026 5H16v2H7.974zM6 10h4v2H6z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-6 8h4v2H6v-2zm10 7H7.974v-2H16v2zm2-5h-4v-2h4v2z"/>|
    )
  end

  @doc """
  Renders the `time_five` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.time_five />
  <Boxicons.time_five class="w-4 h-4" />
  <Boxicons.time_five solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def time_five(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M13 7h-2v5.414l3.293 3.293 1.414-1.414L13 11.586z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm3.293 14.707L11 12.414V6h2v5.586l3.707 3.707-1.414 1.414z"/>|
    )
  end

  @doc """
  Renders the `message_alt_add` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_alt_add />
  <Boxicons.message_alt_add class="w-4 h-4" />
  <Boxicons.message_alt_add solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_alt_add(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 16c0 1.103.897 2 2 2h3.586L12 21.414 15.414 18H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v12zM5 4h14v12h-4.414L12 18.586 9.414 16H5V4z"/><path d="M11 14h2v-3h3V9h-3V6h-2v3H8v2h3z"/>|,
      ~S|<path d="m8.5 18 3.5 4 3.5-4H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.5zM7 9h4V5h2v4h4v2h-4v4h-2v-4H7V9z"/>|
    )
  end

  @doc """
  Renders the `ruler` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.ruler />
  <Boxicons.ruler class="w-4 h-4" />
  <Boxicons.ruler solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def ruler(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.875 7H3.125C1.953 7 1 7.897 1 9v6c0 1.103.953 2 2.125 2h17.75C22.047 17 23 16.103 23 15V9c0-1.103-.953-2-2.125-2zm0 8H3.125c-.057 0-.096-.016-.113-.016-.007 0-.011.002-.012.008l-.012-5.946c.007-.01.052-.046.137-.046H5v3h2V9h2v4h2V9h2v3h2V9h2v4h2V9h1.875c.079.001.122.028.125.008l.012 5.946c-.007.01-.052.046-.137.046z"/>|,
      ~S|<path d="M20.875 7H3.125C1.953 7 1 7.897 1 9v6c0 1.103.953 2 2.125 2h17.75C22.047 17 23 16.103 23 15V9c0-1.103-.953-2-2.125-2zM7 12H5V9h2v3zm4 1H9V9h2v4zm4-1h-2V9h2v3zm4 1h-2V9h2v4z"/>|
    )
  end

  @doc """
  Renders the `left_down_arrow_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.left_down_arrow_circle />
  <Boxicons.left_down_arrow_circle class="w-4 h-4" />
  <Boxicons.left_down_arrow_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def left_down_arrow_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12.006 2.007A9.93 9.93 0 0 0 4.935 4.93c-3.898 3.898-3.898 10.242 0 14.142 1.885 1.885 4.396 2.923 7.071 2.923s5.187-1.038 7.071-2.923c3.898-3.899 3.898-10.243 0-14.142a9.931 9.931 0 0 0-7.071-2.923zm5.657 15.65c-1.507 1.507-3.516 2.337-5.657 2.337s-4.15-.83-5.657-2.337c-3.118-3.119-3.118-8.194 0-11.313 1.507-1.507 3.517-2.337 5.657-2.337s4.15.83 5.657 2.337c3.118 3.119 3.118 8.194 0 11.313z"/><path d="m14.346 8.247-3.215 3.215-2.125-2.125V15h5.663l-2.124-2.124 3.215-3.215z"/>|,
      ~S|<path d="M19.071 19.071c3.898-3.899 3.898-10.244 0-14.143-3.899-3.899-10.244-3.898-14.143 0-3.898 3.899-3.899 10.243 0 14.143 3.9 3.899 10.244 3.899 14.143 0zM8.464 8.464l2.829 2.829 3.535-3.536 1.414 1.414-3.535 3.536 2.828 2.829H8.464V8.464z"/>|
    )
  end

  @doc """
  Renders the `category_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.category_alt />
  <Boxicons.category_alt class="w-4 h-4" />
  <Boxicons.category_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def category_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M10 3H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zM9 9H5V5h4v4zm11 4h-6a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-6a1 1 0 0 0-1-1zm-1 6h-4v-4h4v4zM17 3c-2.206 0-4 1.794-4 4s1.794 4 4 4 4-1.794 4-4-1.794-4-4-4zm0 6c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2zM7 13c-2.206 0-4 1.794-4 4s1.794 4 4 4 4-1.794 4-4-1.794-4-4-4zm0 6c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2z"/>|,
      ~S|<path d="M10 3H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zm10 10h-6a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-6a1 1 0 0 0-1-1zM17 3c-2.206 0-4 1.794-4 4s1.794 4 4 4 4-1.794 4-4-1.794-4-4-4zM7 13c-2.206 0-4 1.794-4 4s1.794 4 4 4 4-1.794 4-4-1.794-4-4-4z"/>|
    )
  end

  @doc """
  Renders the `calendar_plus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.calendar_plus />
  <Boxicons.calendar_plus class="w-4 h-4" />
  <Boxicons.calendar_plus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def calendar_plus(assigns) do
    svg(
      assigns,
      ~S|<path d="M8 15h3v3h2v-3h3v-2h-3v-3h-2v3H8z"/><path d="M19 4h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm.002 16H5V8h14l.002 12z"/>|,
      ~S|<path d="M5 22h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zm11-6h-3v3h-2v-3H8v-2h3v-3h2v3h3v2zM5 7h14v2H5V7z"/>|
    )
  end

  @doc """
  Renders the `dice_1` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dice_1 />
  <Boxicons.dice_1 class="w-4 h-4" />
  <Boxicons.dice_1 solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dice_1(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM5 19V5h14l.002 14H5z"/>|,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zm-7 10.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>|
    )
  end

  @doc """
  Renders the `trash` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.trash />
  <Boxicons.trash class="w-4 h-4" />
  <Boxicons.trash solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def trash(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 20a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V8h2V6h-4V4a2 2 0 0 0-2-2H9a2 2 0 0 0-2 2v2H3v2h2zM9 4h6v2H9zM8 8h9v12H7V8z"/><path d="M9 10h2v8H9zm4 0h2v8h-2z"/>|,
      ~S|<path d="M6 7H5v13a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V7H6zm4 12H8v-9h2v9zm6 0h-2v-9h2v9zm.618-15L15 2H9L7.382 4H3v2h18V4z"/>|
    )
  end

  @doc """
  Renders the `chevrons_up` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevrons_up />
  <Boxicons.chevrons_up class="w-4 h-4" />
  <Boxicons.chevrons_up solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevrons_up(assigns) do
    svg(
      assigns,
      ~S|<path d="m6.293 11.293 1.414 1.414L12 8.414l4.293 4.293 1.414-1.414L12 5.586z"/><path d="m6.293 16.293 1.414 1.414L12 13.414l4.293 4.293 1.414-1.414L12 10.586z"/>|,
      ~S|<path d="m12 3.879-7.061 7.06 2.122 2.122L12 8.121l4.939 4.94 2.122-2.122z"/><path d="m4.939 17.939 2.122 2.122L12 15.121l4.939 4.94 2.122-2.122L12 10.879z"/>|
    )
  end

  @doc """
  Renders the `brightness` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.brightness />
  <Boxicons.brightness class="w-4 h-4" />
  <Boxicons.brightness solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def brightness(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.707 9.293 19 8.586V6a1 1 0 0 0-1-1h-2.586l-.707-.707-2-2a.999.999 0 0 0-1.414 0l-2 2L8.586 5H6a1 1 0 0 0-1 1v2.586l-.707.707-2 2a.999.999 0 0 0 0 1.414l2 2 .707.707V18a1 1 0 0 0 1 1h2.586l.707.707 2 2a.997.997 0 0 0 1.414 0l2-2 .707-.707H18a1 1 0 0 0 1-1v-2.586l.707-.707 2-2a.999.999 0 0 0 0-1.414l-2-2zm-2.414 5-.293.293V17h-2.414l-.293.293-1 1L12 19.586l-1.293-1.293-1-1L9.414 17H7v-2.414l-.293-.293-1-1L4.414 12l1.293-1.293 1-1L7 9.414V7h2.414l.293-.293 1-1L12 4.414l1.293 1.293 1 1 .293.293H17v2.414l.293.293 1 1L19.586 12l-1.293 1.293-1 1z"/><path d="M12 8c-2.206 0-4 1.794-4 4s1.794 4 4 4 4-1.794 4-4-1.794-4-4-4z"/>|,
      ~S|<path d="M21.546 11.646 19 9.101V5.5a.5.5 0 0 0-.5-.5h-3.601l-2.546-2.546a.5.5 0 0 0-.707 0L9.101 5H5.5a.5.5 0 0 0-.5.5v3.601l-2.546 2.546a.5.5 0 0 0 0 .707L5 14.899V18.5a.5.5 0 0 0 .5.5h3.601l2.546 2.546a.5.5 0 0 0 .707 0L14.899 19H18.5a.5.5 0 0 0 .5-.5v-3.601l2.546-2.546a.5.5 0 0 0 0-.707zM12 16a4 4 0 1 1 0-8 4 4 0 0 1 0 8z"/>|
    )
  end

  @doc """
  Renders the `vector` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.vector />
  <Boxicons.vector class="w-4 h-4" />
  <Boxicons.vector solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def vector(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.277 8c.347.596.985 1 1.723 1a2 2 0 0 0 0-4c-.738 0-1.376.404-1.723 1H16V4a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v2H5.723C5.376 5.404 4.738 5 4 5a2 2 0 0 0 0 4c.738 0 1.376-.404 1.723-1H8v.369C5.133 9.84 4.318 12.534 4.091 14H3a1 1 0 0 0-1 1v4a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1h-.877c.197-.959.718-2.406 2.085-3.418A.984.984 0 0 0 9 11h6a.98.98 0 0 0 .792-.419c1.373 1.013 1.895 2.458 2.089 3.419H17a1 1 0 0 0-1 1v4a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1h-1.092c-.227-1.466-1.042-4.161-3.908-5.632V8h2.277zM6 18H4v-2h2v2zm14 0h-2v-2h2v2zm-6-9h-4V5h4v4z"/>|,
      ~S|<path d="M18.277 8c.347.596.985 1 1.723 1a2 2 0 0 0 0-4c-.738 0-1.376.404-1.723 1H16V4a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v2H5.723C5.376 5.404 4.738 5 4 5a2 2 0 0 0 0 4c.738 0 1.376-.404 1.723-1H8v.368C5.134 9.839 4.319 12.534 4.092 14H3a1 1 0 0 0-1 1v4a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1h-.877c.197-.959.718-2.406 2.085-3.418A.984.984 0 0 0 9 11h6a.98.98 0 0 0 .792-.419c1.373 1.013 1.895 2.458 2.089 3.419H17a1 1 0 0 0-1 1v4a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1h-1.092c-.227-1.466-1.042-4.161-3.908-5.632V8h2.277zM14 9h-4V5h4v4z"/>|
    )
  end

  @doc """
  Renders the `objects_horizontal_center` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.objects_horizontal_center />
  <Boxicons.objects_horizontal_center class="w-4 h-4" />
  <Boxicons.objects_horizontal_center solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def objects_horizontal_center(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 20h6v2h2v-2h6a1 1 0 0 0 1-1v-5a1 1 0 0 0-1-1h-6v-2h4a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1h-4V2h-2v2H7a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1h4v2H5a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1zM8 6h8v3H8zm-2 9h12v3H6z"/>|,
      ~S|<path d="M19 13h-6v-2h4a1 1 0 0 0 1-1V6a1 1 0 0 0-1-1h-4V2h-2v3H7a1 1 0 0 0-1 1v4a1 1 0 0 0 1 1h4v2H5a1 1 0 0 0-1 1v4a1 1 0 0 0 1 1h6v3h2v-3h6a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1z"/>|
    )
  end

  @doc """
  Renders the `dock_bottom` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dock_bottom />
  <Boxicons.dock_bottom class="w-4 h-4" />
  <Boxicons.dock_bottom solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dock_bottom(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2zm0 2v9H5V5zM5 19v-3h14v3z"/>|,
      ~S|<path d="M5 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zM19 5l.001 9H5V5h14z"/>|
    )
  end

  @doc """
  Renders the `package` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.package />
  <Boxicons.package class="w-4 h-4" />
  <Boxicons.package solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def package(assigns) do
    svg(
      assigns,
      ~S|<path d="M22 8a.76.76 0 0 0 0-.21v-.08a.77.77 0 0 0-.07-.16.35.35 0 0 0-.05-.08l-.1-.13-.08-.06-.12-.09-9-5a1 1 0 0 0-1 0l-9 5-.09.07-.11.08a.41.41 0 0 0-.07.11.39.39 0 0 0-.08.1.59.59 0 0 0-.06.14.3.3 0 0 0 0 .1A.76.76 0 0 0 2 8v8a1 1 0 0 0 .52.87l9 5a.75.75 0 0 0 .13.06h.1a1.06 1.06 0 0 0 .5 0h.1l.14-.06 9-5A1 1 0 0 0 22 16V8zm-10 3.87L5.06 8l2.76-1.52 6.83 3.9zm0-7.72L18.94 8 16.7 9.25 9.87 5.34zM4 9.7l7 3.92v5.68l-7-3.89zm9 9.6v-5.68l3-1.68V15l2-1v-3.18l2-1.11v5.7z"/>|,
      ~S|<path d="M21.993 7.95a.96.96 0 0 0-.029-.214c-.007-.025-.021-.049-.03-.074-.021-.057-.04-.113-.07-.165-.016-.027-.038-.049-.057-.075-.032-.045-.063-.091-.102-.13-.023-.022-.053-.04-.078-.061-.039-.032-.075-.067-.12-.094-.004-.003-.009-.003-.014-.006l-.008-.006-8.979-4.99a1.002 1.002 0 0 0-.97-.001l-9.021 4.99c-.003.003-.006.007-.011.01l-.01.004c-.035.02-.061.049-.094.073-.036.027-.074.051-.106.082-.03.031-.053.067-.079.102-.027.035-.057.066-.079.104-.026.043-.04.092-.059.139-.014.033-.032.064-.041.1a.975.975 0 0 0-.029.21c-.001.017-.007.032-.007.05V16c0 .363.197.698.515.874l8.978 4.987.001.001.002.001.02.011c.043.024.09.037.135.054.032.013.063.03.097.039a1.013 1.013 0 0 0 .506 0c.033-.009.064-.026.097-.039.045-.017.092-.029.135-.054l.02-.011.002-.001.001-.001 8.978-4.987c.316-.176.513-.511.513-.874V7.998c0-.017-.006-.031-.007-.048zm-10.021 3.922L5.058 8.005 7.82 6.477l6.834 3.905-2.682 1.49zm.048-7.719L18.941 8l-2.244 1.247-6.83-3.903 2.153-1.191zM13 19.301l.002-5.679L16 11.944V15l2-1v-3.175l2-1.119v5.705l-7 3.89z"/>|
    )
  end

  @doc """
  Renders the `user_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.user_minus />
  <Boxicons.user_minus class="w-4 h-4" />
  <Boxicons.user_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def user_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 11h8v2h-8zM8 4a3.91 3.91 0 0 0-4 4 3.91 3.91 0 0 0 4 4 3.91 3.91 0 0 0 4-4 3.91 3.91 0 0 0-4-4zm0 6a1.91 1.91 0 0 1-2-2 1.91 1.91 0 0 1 2-2 1.91 1.91 0 0 1 2 2 1.91 1.91 0 0 1-2 2zm-4 8a3 3 0 0 1 3-3h2a3 3 0 0 1 3 3v1h2v-1a5 5 0 0 0-5-5H7a5 5 0 0 0-5 5v1h2z"/>|,
      ~S|<path d="M14 11h8v2h-8zM4.5 8.552c0 1.995 1.505 3.5 3.5 3.5s3.5-1.505 3.5-3.5-1.505-3.5-3.5-3.5-3.5 1.505-3.5 3.5zM4 19h10v-1c0-2.757-2.243-5-5-5H7c-2.757 0-5 2.243-5 5v1h2z"/>|
    )
  end

  @doc """
  Renders the `phone_call` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.phone_call />
  <Boxicons.phone_call class="w-4 h-4" />
  <Boxicons.phone_call solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def phone_call(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.57 22a2 2 0 0 0 1.43-.59l2.71-2.71a1 1 0 0 0 0-1.41l-4-4a1 1 0 0 0-1.41 0l-1.6 1.59a7.55 7.55 0 0 1-3-1.59 7.62 7.62 0 0 1-1.59-3l1.59-1.6a1 1 0 0 0 0-1.41l-4-4a1 1 0 0 0-1.41 0L2.59 6A2 2 0 0 0 2 7.43 15.28 15.28 0 0 0 6.3 17.7 15.28 15.28 0 0 0 16.57 22zM6 5.41 8.59 8 7.3 9.29a1 1 0 0 0-.3.91 10.12 10.12 0 0 0 2.3 4.5 10.08 10.08 0 0 0 4.5 2.3 1 1 0 0 0 .91-.27L16 15.41 18.59 18l-2 2a13.28 13.28 0 0 1-8.87-3.71A13.28 13.28 0 0 1 4 7.41zM20 11h2a8.81 8.81 0 0 0-9-9v2a6.77 6.77 0 0 1 7 7z"/><path d="M13 8c2.1 0 3 .9 3 3h2c0-3.22-1.78-5-5-5z"/>|,
      ~S|<path d="M20 10.999h2C22 5.869 18.127 2 12.99 2v2C17.052 4 20 6.943 20 10.999z"/><path d="M13 8c2.103 0 3 .897 3 3h2c0-3.225-1.775-5-5-5v2zm3.422 5.443a1.001 1.001 0 0 0-1.391.043l-2.393 2.461c-.576-.11-1.734-.471-2.926-1.66-1.192-1.193-1.553-2.354-1.66-2.926l2.459-2.394a1 1 0 0 0 .043-1.391L6.859 3.513a1 1 0 0 0-1.391-.087l-2.17 1.861a1 1 0 0 0-.29.649c-.015.25-.301 6.172 4.291 10.766C11.305 20.707 16.323 21 17.705 21c.202 0 .326-.006.359-.008a.992.992 0 0 0 .648-.291l1.86-2.171a1 1 0 0 0-.086-1.391l-4.064-3.696z"/>|
    )
  end

  @doc """
  Renders the `phone` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.phone />
  <Boxicons.phone class="w-4 h-4" />
  <Boxicons.phone solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def phone(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.707 12.293a.999.999 0 0 0-1.414 0l-1.594 1.594c-.739-.22-2.118-.72-2.992-1.594s-1.374-2.253-1.594-2.992l1.594-1.594a.999.999 0 0 0 0-1.414l-4-4a.999.999 0 0 0-1.414 0L3.581 5.005c-.38.38-.594.902-.586 1.435.023 1.424.4 6.37 4.298 10.268s8.844 4.274 10.269 4.298h.028c.528 0 1.027-.208 1.405-.586l2.712-2.712a.999.999 0 0 0 0-1.414l-4-4.001zm-.127 6.712c-1.248-.021-5.518-.356-8.873-3.712-3.366-3.366-3.692-7.651-3.712-8.874L7 4.414 9.586 7 8.293 8.293a1 1 0 0 0-.272.912c.024.115.611 2.842 2.271 4.502s4.387 2.247 4.502 2.271a.991.991 0 0 0 .912-.271L17 14.414 19.586 17l-2.006 2.005z"/>|,
      ~S|<path d="m20.487 17.14-4.065-3.696a1.001 1.001 0 0 0-1.391.043l-2.393 2.461c-.576-.11-1.734-.471-2.926-1.66-1.192-1.193-1.553-2.354-1.66-2.926l2.459-2.394a1 1 0 0 0 .043-1.391L6.859 3.513a1 1 0 0 0-1.391-.087l-2.17 1.861a1 1 0 0 0-.29.649c-.015.25-.301 6.172 4.291 10.766C11.305 20.707 16.323 21 17.705 21c.202 0 .326-.006.359-.008a.992.992 0 0 0 .648-.291l1.86-2.171a.997.997 0 0 0-.085-1.39z"/>|
    )
  end

  @doc """
  Renders the `user_x` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.user_x />
  <Boxicons.user_x class="w-4 h-4" />
  <Boxicons.user_x solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def user_x(assigns) do
    svg(
      assigns,
      ~S|<path d="m15.71 15.71 2.29-2.3 2.29 2.3 1.42-1.42-2.3-2.29 2.3-2.29-1.42-1.42-2.29 2.3-2.29-2.3-1.42 1.42L16.58 12l-2.29 2.29zM12 8a3.91 3.91 0 0 0-4-4 3.91 3.91 0 0 0-4 4 3.91 3.91 0 0 0 4 4 3.91 3.91 0 0 0 4-4zM6 8a1.91 1.91 0 0 1 2-2 1.91 1.91 0 0 1 2 2 1.91 1.91 0 0 1-2 2 1.91 1.91 0 0 1-2-2zM4 18a3 3 0 0 1 3-3h2a3 3 0 0 1 3 3v1h2v-1a5 5 0 0 0-5-5H7a5 5 0 0 0-5 5v1h2z"/>|,
      ~S|<path d="M8 12.052c1.995 0 3.5-1.505 3.5-3.5s-1.505-3.5-3.5-3.5-3.5 1.505-3.5 3.5 1.505 3.5 3.5 3.5zM9 13H7c-2.757 0-5 2.243-5 5v1h12v-1c0-2.757-2.243-5-5-5zm11.293-4.707L18 10.586l-2.293-2.293-1.414 1.414 2.292 2.292-2.293 2.293 1.414 1.414 2.293-2.293 2.294 2.294 1.414-1.414L19.414 12l2.293-2.293z"/>|
    )
  end

  @doc """
  Renders the `message_rounded` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_rounded />
  <Boxicons.message_rounded class="w-4 h-4" />
  <Boxicons.message_rounded solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_rounded(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.908 1.898 5.516 5 6.934V22l5.34-4.005C17.697 17.852 22 14.32 22 10c0-4.411-4.486-8-10-8zm0 14h-.333L9 18v-2.417l-.641-.247C5.67 14.301 4 12.256 4 10c0-3.309 3.589-6 8-6s8 2.691 8 6-3.589 6-8 6z"/>|,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.908 1.898 5.515 5 6.934V22l5.34-4.005C17.697 17.852 22 14.32 22 10c0-4.411-4.486-8-10-8z"/>|
    )
  end

  @doc """
  Renders the `error_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.error_circle />
  <Boxicons.error_circle class="w-4 h-4" />
  <Boxicons.error_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def error_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.953 2C6.465 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.493 2 11.953 2zM12 20c-4.411 0-8-3.589-8-8s3.567-8 7.953-8C16.391 4 20 7.589 20 12s-3.589 8-8 8z"/><path d="M11 7h2v7h-2zm0 8h2v2h-2z"/>|,
      ~S|<path d="M11.953 2C6.465 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.493 2 11.953 2zM13 17h-2v-2h2v2zm0-4h-2V7h2v6z"/>|
    )
  end

  @doc """
  Renders the `diamond` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.diamond />
  <Boxicons.diamond class="w-4 h-4" />
  <Boxicons.diamond solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def diamond(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.813 3.838A2 2 0 0 0 16.187 3H7.813c-.644 0-1.252.313-1.667.899l-4 6.581a.999.999 0 0 0 .111 1.188l9 10a.995.995 0 0 0 1.486.001l9-10a.997.997 0 0 0 .111-1.188l-4.041-6.643zM12 19.505 5.245 12h13.509L12 19.505zM4.777 10l3.036-5 8.332-.062L19.222 10H4.777z"/>|,
      ~S|<path d="M16.445 3h-8.89c-.345 0-.666.178-.849.47L3.25 9h17.5l-3.456-5.53a1.003 1.003 0 0 0-.849-.47zM11.26 21.186a1 1 0 0 0 1.48 0L22 11H2l9.26 10.186z"/>|
    )
  end

  @doc """
  Renders the `comment_dots` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.comment_dots />
  <Boxicons.comment_dots class="w-4 h-4" />
  <Boxicons.comment_dots solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def comment_dots(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v18l5.333-4H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14H6.667L4 18V4h16v12z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v18l4-4h14c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM9 12a2 2 0 1 1 .001-4.001A2 2 0 0 1 9 12zm6 0a2 2 0 1 1 .001-4.001A2 2 0 0 1 15 12z"/>|
    )
  end

  @doc """
  Renders the `upvote` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.upvote />
  <Boxicons.upvote class="w-4 h-4" />
  <Boxicons.upvote solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def upvote(assigns) do
    svg(
      assigns,
      ~S|<path d="M12.781 2.375c-.381-.475-1.181-.475-1.562 0l-8 10A1.001 1.001 0 0 0 4 14h4v7a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-7h4a1.001 1.001 0 0 0 .781-1.625l-8-10zM15 12h-1v8h-4v-8H6.081L12 4.601 17.919 12H15z"/>|,
      ~S|<path d="M4 14h4v7a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-7h4a1.001 1.001 0 0 0 .781-1.625l-8-10c-.381-.475-1.181-.475-1.562 0l-8 10A1.001 1.001 0 0 0 4 14z"/>|
    )
  end

  @doc """
  Renders the `bus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bus />
  <Boxicons.bus class="w-4 h-4" />
  <Boxicons.bus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bus(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.004 7.975V6c0-2.206-1.794-4-4-4h-10c-2.206 0-4 1.794-4 4v1.998l-.076.004A1 1 0 0 0 2 9v2a1 1 0 0 0 1 1h.004v6c0 .735.403 1.372.996 1.72V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1h10v1a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1.276A1.994 1.994 0 0 0 21.004 18v-6a1 1 0 0 0 1-1V9.062a1.006 1.006 0 0 0-.072-.455c-.203-.487-.635-.604-.928-.632zM19.006 18H5.004v-5h14.001l.001 5zM11.004 7v4h-6V7h6zm8 0v4h-6V7h6zm-12-3h10c.736 0 1.375.405 1.722 1H5.282c.347-.595.986-1 1.722-1z"/>|,
      ~S|<path d="M21 6.021c.003-.146-.007-1.465-1.3-2.735C18.427 2.036 17.143 2 17 2H6.996c-.239 0-1.493.063-2.708 1.302C3.036 4.578 3 5.859 3 6v3H2v3h1v6c0 .734.406 1.373 1 1.721V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1h10v1a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1.277A1.99 1.99 0 0 0 21 18v-6h1V9h-1V6.021zM9 4h6v2H9V4zM6.5 18a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 6.5 18zm4.5-5H5V8h6v5zm6.5 5a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 17.5 18zm1.5-5h-6V8h6v5z"/>|
    )
  end

  @doc """
  Renders the `beer` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.beer />
  <Boxicons.beer class="w-4 h-4" />
  <Boxicons.beer solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def beer(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 6h-2V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v15c0 1.654 1.346 3 3 3h10c1.654 0 3-1.346 3-3v-1h2c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2zm-4 13c0 .551-.448 1-1 1H5c-.552 0-1-.449-1-1V5h12v14zm4-3h-2V8h2v8z"/><path d="M6 7h2v10H6zm6 0h2v10h-2z"/>|,
      ~S|<path d="M20 6h-2V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v15c0 1.654 1.346 3 3 3h10c1.654 0 3-1.346 3-3v-1h2c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2zM8 17H6V7h2v10zm6 0h-2V7h2v10zm6-1h-2V8h2v8z"/>|
    )
  end

  @doc """
  Renders the `pen` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pen />
  <Boxicons.pen class="w-4 h-4" />
  <Boxicons.pen solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def pen(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.404 2.998c-.757-.754-2.077-.751-2.828.005l-1.784 1.791L11.586 7H7a.998.998 0 0 0-.939.658l-4 11c-.133.365-.042.774.232 1.049l2 2a.997.997 0 0 0 1.049.232l11-4A.998.998 0 0 0 17 17v-4.586l2.207-2.207v-.001h.001L21 8.409c.378-.378.586-.881.585-1.415 0-.535-.209-1.038-.588-1.415l-2.593-2.581zm-3.111 8.295A.996.996 0 0 0 15 12v4.3l-9.249 3.363 4.671-4.671c.026.001.052.008.078.008A1.5 1.5 0 1 0 9 13.5c0 .026.007.052.008.078l-4.671 4.671L7.7 9H12c.266 0 .52-.105.707-.293L14.5 6.914 17.086 9.5l-1.793 1.793zm3.206-3.208-2.586-2.586 1.079-1.084 2.593 2.581-1.086 1.089z"/>|,
      ~S|<path d="M11.587 6.999H7.702a2 2 0 0 0-1.88 1.316l-3.76 10.342c-.133.365-.042.774.232 1.049l.293.293 6.422-6.422c-.001-.026-.008-.052-.008-.078a1.5 1.5 0 1 1 1.5 1.5c-.026 0-.052-.007-.078-.008l-6.422 6.422.293.293a.997.997 0 0 0 1.049.232l10.342-3.761a2 2 0 0 0 1.316-1.88v-3.885L19 10.414 13.586 5l-1.999 1.999zm8.353 2.062-5-5 2.12-2.121 5 5z"/>|
    )
  end

  @doc """
  Renders the `user_plus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.user_plus />
  <Boxicons.user_plus class="w-4 h-4" />
  <Boxicons.user_plus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def user_plus(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 8h-2v3h-3v2h3v3h2v-3h3v-2h-3zM4 8a3.91 3.91 0 0 0 4 4 3.91 3.91 0 0 0 4-4 3.91 3.91 0 0 0-4-4 3.91 3.91 0 0 0-4 4zm6 0a1.91 1.91 0 0 1-2 2 1.91 1.91 0 0 1-2-2 1.91 1.91 0 0 1 2-2 1.91 1.91 0 0 1 2 2zM4 18a3 3 0 0 1 3-3h2a3 3 0 0 1 3 3v1h2v-1a5 5 0 0 0-5-5H7a5 5 0 0 0-5 5v1h2z"/>|,
      ~S|<path d="M4.5 8.552c0 1.995 1.505 3.5 3.5 3.5s3.5-1.505 3.5-3.5-1.505-3.5-3.5-3.5-3.5 1.505-3.5 3.5zM19 8h-2v3h-3v2h3v3h2v-3h3v-2h-3zM4 19h10v-1c0-2.757-2.243-5-5-5H7c-2.757 0-5 2.243-5 5v1h2z"/>|
    )
  end

  @doc """
  Renders the `tag_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.tag_alt />
  <Boxicons.tag_alt class="w-4 h-4" />
  <Boxicons.tag_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def tag_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.868 4.504A1 1 0 0 0 17 4H3a1 1 0 0 0-.868 1.496L5.849 12l-3.717 6.504A1 1 0 0 0 3 20h14a1 1 0 0 0 .868-.504l4-7a.998.998 0 0 0 0-.992l-4-7zM16.42 18H4.724l3.145-5.504a.998.998 0 0 0 0-.992L4.724 6H16.42l3.429 6-3.429 6z"/>|,
      ~S|<path d="m21.868 11.504-4-7A1 1 0 0 0 17 4H3a1 1 0 0 0-.868 1.496L5.849 12l-3.717 6.504A1 1 0 0 0 3 20h14a1 1 0 0 0 .868-.504l4-7a.998.998 0 0 0 0-.992z"/>|
    )
  end

  @doc """
  Renders the `chevron_left` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevron_left />
  <Boxicons.chevron_left class="w-4 h-4" />
  <Boxicons.chevron_left solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevron_left(assigns) do
    svg(
      assigns,
      ~S|<path d="M13.293 6.293 7.586 12l5.707 5.707 1.414-1.414L10.414 12l4.293-4.293z"/>|,
      ~S|<path d="M13.939 4.939 6.879 12l7.06 7.061 2.122-2.122L11.121 12l4.94-4.939z"/>|
    )
  end

  @doc """
  Renders the `terminal` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.terminal />
  <Boxicons.terminal class="w-4 h-4" />
  <Boxicons.terminal solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def terminal(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 14h6v2h-6zM6.293 9.707 8.586 12l-2.293 2.293 1.414 1.414L11.414 12 7.707 8.293z"/><path d="M20 4H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zM4 18V6h16l.002 12H4z"/>|,
      ~S|<path d="M20 4H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2zM6.414 15.707 5 14.293 7.293 12 5 9.707l1.414-1.414L10.121 12l-3.707 3.707zM19 16h-7v-2h7v2z"/>|
    )
  end

  @doc """
  Renders the `chevron_down` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevron_down />
  <Boxicons.chevron_down class="w-4 h-4" />
  <Boxicons.chevron_down solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevron_down(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.293 9.293 12 13.586 7.707 9.293l-1.414 1.414L12 16.414l5.707-5.707z"/>|,
      ~S|<path d="M16.939 7.939 12 12.879l-4.939-4.94-2.122 2.122L12 17.121l7.061-7.06z"/>|
    )
  end

  @doc """
  Renders the `user_pin` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.user_pin />
  <Boxicons.user_pin class="w-4 h-4" />
  <Boxicons.user_pin solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def user_pin(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 10c1.151 0 2-.848 2-2s-.849-2-2-2c-1.15 0-2 .848-2 2s.85 2 2 2zm0 1c-2.209 0-4 1.612-4 3.6v.386h8V14.6c0-1.988-1.791-3.6-4-3.6z"/><path d="M19 2H5c-1.103 0-2 .897-2 2v13c0 1.103.897 2 2 2h4l3 3 3-3h4c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm-5 15-2 2-2-2H5V4h14l.002 13H14z"/>|,
      ~S|<path d="M19 2H5a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2h4l3 3 3-3h4a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2zm-7 3c1.727 0 3 1.272 3 3s-1.273 3-3 3c-1.726 0-3-1.272-3-3s1.274-3 3-3zM7.177 16c.558-1.723 2.496-3 4.823-3s4.266 1.277 4.823 3H7.177z"/>|
    )
  end

  @doc """
  Renders the `layer` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.layer />
  <Boxicons.layer class="w-4 h-4" />
  <Boxicons.layer solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def layer(assigns) do
    svg(
      assigns,
      ~S|<path d="M22 7.999a1 1 0 0 0-.516-.874l-9.022-5a1.003 1.003 0 0 0-.968 0l-8.978 4.96a1 1 0 0 0-.003 1.748l9.022 5.04a.995.995 0 0 0 .973.001l8.978-5A1 1 0 0 0 22 7.999zm-9.977 3.855L5.06 7.965l6.917-3.822 6.964 3.859-6.918 3.852z"/><path d="M20.515 11.126 12 15.856l-8.515-4.73-.971 1.748 9 5a1 1 0 0 0 .971 0l9-5-.97-1.748z"/><path d="M20.515 15.126 12 19.856l-8.515-4.73-.971 1.748 9 5a1 1 0 0 0 .971 0l9-5-.97-1.748z"/>|,
      ~S|<path d="m21.484 7.125-9.022-5a1.003 1.003 0 0 0-.968 0l-8.978 4.96a1 1 0 0 0-.003 1.748l9.022 5.04a.995.995 0 0 0 .973.001l8.978-5a1 1 0 0 0-.002-1.749z"/><path d="m12 15.856-8.515-4.73-.971 1.748 9 5a1 1 0 0 0 .971 0l9-5-.971-1.748L12 15.856z"/><path d="m12 19.856-8.515-4.73-.971 1.748 9 5a1 1 0 0 0 .971 0l9-5-.971-1.748L12 19.856z"/>|
    )
  end

  @doc """
  Renders the `calendar_star` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.calendar_star />
  <Boxicons.calendar_star class="w-4 h-4" />
  <Boxicons.calendar_star solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def calendar_star(assigns) do
    svg(
      assigns,
      ~S|<path d="m9.981 14.811-.467 2.726 2.449-1.287 2.449 1.287-.468-2.726 1.982-1.932-2.738-.398L11.963 10l-1.225 2.481L8 12.879z"/><path d="M19 4h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm.002 16H5V8h14l.002 12z"/>|,
      ~S|<path d="M19 4h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm-4.588 15-2.449-1.288L9.514 19l.468-2.728L8 14.342l2.738-.398 1.225-2.48 1.225 2.48 2.738.398-1.981 1.931.467 2.727zM19 9H5V7h14v2z"/>|
    )
  end

  @doc """
  Renders the `grid_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.grid_alt />
  <Boxicons.grid_alt class="w-4 h-4" />
  <Boxicons.grid_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def grid_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M10 3H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zM9 9H5V5h4v4zm5 2h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1zm1-6h4v4h-4V5zM3 20a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-6a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v6zm2-5h4v4H5v-4zm8 5a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-6a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v6zm2-5h4v4h-4v-4z"/>|,
      ~S|<path d="M4 11h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1zm10 0h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1zM4 21h6a1 1 0 0 0 1-1v-6a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1zm10 0h6a1 1 0 0 0 1-1v-6a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1z"/>|
    )
  end

  @doc """
  Renders the `briefcase_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.briefcase_alt />
  <Boxicons.briefcase_alt class="w-4 h-4" />
  <Boxicons.briefcase_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def briefcase_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 6h-3V4c0-1.103-.897-2-2-2H9c-1.103 0-2 .897-2 2v2H4c-1.103 0-2 .897-2 2v11c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2zm-4 2v11H8V8h8zm-1-4v2H9V4h6zM4 8h2v11H4V8zm14 11V8h2l.001 11H18z"/>|,
      ~S|<path d="M20 6h-3V4c0-1.103-.897-2-2-2H9c-1.103 0-2 .897-2 2v2H4c-1.103 0-2 .897-2 2v11c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2zM6 8h2v11H6V8zm12 11h-2V8h2v11zM15 4v2H9V4h6z"/>|
    )
  end

  @doc """
  Renders the `directions` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.directions />
  <Boxicons.directions class="w-4 h-4" />
  <Boxicons.directions solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def directions(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.781 13.875-2-2.5A1 1 0 0 0 19 11h-6V9h6c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5a1 1 0 0 0-.781.375l-2 2.5a1.001 1.001 0 0 0 0 1.25l2 2.5A1 1 0 0 0 5 9h6v2H5c-1.103 0-2 .897-2 2v3c0 1.103.897 2 2 2h6v4h2v-4h6a1 1 0 0 0 .781-.375l2-2.5a1.001 1.001 0 0 0 0-1.25zM4.281 5.5 5.48 4H19l.002 3H5.48L4.281 5.5zM18.52 16H5v-3h13.52l1.2 1.5-1.2 1.5z"/>|,
      ~S|<path d="M19 11h-6V8h6a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H5L2 5l3 3h6v3H5a2 2 0 0 0-2 2v2a2 2 0 0 0 2 2h6v5h2v-5h6l3-3-3-3z"/>|
    )
  end

  @doc """
  Renders the `message_dots` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_dots />
  <Boxicons.message_dots class="w-4 h-4" />
  <Boxicons.message_dots solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_dots(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3v3.766L13.277 18H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14h-7.277L9 18.234V16H4V4h16v12z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .894-2 1.992v12.017C2 17.106 2.897 18 4 18h3v4l6.351-4H20c1.103 0 2-.894 2-1.992V3.992A1.998 1.998 0 0 0 20 2zm-9 8a2 2 0 1 1-2-2c.086 0 .167.015.25.025.082-.014.164-.025.25-.025A1.5 1.5 0 0 1 11 9.5c0 .086-.012.168-.025.25.01.083.025.165.025.25zm4 2a2 2 0 0 1-2-2c0-.086.015-.167.025-.25A1.592 1.592 0 0 1 13 9.5 1.5 1.5 0 0 1 14.5 8c.086 0 .168.011.25.025.083-.01.164-.025.25-.025a2 2 0 0 1 0 4z"/>|
    )
  end

  @doc """
  Renders the `buoy` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.buoy />
  <Boxicons.buoy class="w-4 h-4" />
  <Boxicons.buoy solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def buoy(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm7.411 7H16v.031A5.037 5.037 0 0 0 14.969 8H15V4.589A8.039 8.039 0 0 1 19.411 9zM12 15c-1.654 0-3-1.346-3-3s1.346-3 3-3 3 1.346 3 3-1.346 3-3 3zm1-10.931v3.032a4.988 4.988 0 0 0-2 0V4.069c.328-.041.66-.069 1-.069s.672.028 1 .069zm-4 .52V8h.031A5.037 5.037 0 0 0 8 9.031V9H4.589C5.402 7 6.999 5.402 9 4.589zM4.069 11h3.032a4.995 4.995 0 0 0 .001 2H4.069C4.028 12.672 4 12.339 4 12s.028-.672.069-1zm.52 4H8v-.031c.284.381.621.718 1 1.005v3.437A8.039 8.039 0 0 1 4.589 15zM11 19.931v-3.032a4.988 4.988 0 0 0 2 0v3.032c-.328.041-.66.069-1 .069s-.672-.028-1-.069zm4-.52v-3.437a5.038 5.038 0 0 0 1-1.005V15h3.411A8.039 8.039 0 0 1 15 19.411zM19.931 13h-3.032a4.995 4.995 0 0 0-.001-2h3.032c.042.328.07.661.07 1s-.028.672-.069 1z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm7.736 8h-3.16A5.02 5.02 0 0 0 14 7.424V4.263A8.015 8.015 0 0 1 19.736 10zM12 15c-1.654 0-3-1.346-3-3s1.346-3 3-3 3 1.346 3 3-1.346 3-3 3zM10 4.263v3.161A5.02 5.02 0 0 0 7.424 10h-3.16A8.015 8.015 0 0 1 10 4.263zM4.264 14h3.16A5.02 5.02 0 0 0 10 16.576v3.161A8.015 8.015 0 0 1 4.264 14zM14 19.737v-3.161A5.02 5.02 0 0 0 16.576 14h3.16A8.015 8.015 0 0 1 14 19.737z"/>|
    )
  end

  @doc """
  Renders the `message_rounded_x` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_rounded_x />
  <Boxicons.message_rounded_x class="w-4 h-4" />
  <Boxicons.message_rounded_x solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_rounded_x(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.908 1.898 5.515 5 6.934V22l5.34-4.005C17.697 17.852 22 14.32 22 10c0-4.411-4.486-8-10-8zm0 14h-.333L9 18v-2.417l-.641-.247C5.67 14.301 4 12.256 4 10c0-3.309 3.589-6 8-6s8 2.691 8 6-3.589 6-8 6z"/><path d="M14.293 6.293 12 8.586 9.707 6.293 8.293 7.707 10.586 10l-2.293 2.293 1.414 1.414L12 11.414l2.293 2.293 1.414-1.414L13.414 10l2.293-2.293z"/>|,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.907 1.897 5.515 5 6.934V22l5.34-4.005C17.697 17.853 22 14.32 22 10c0-4.411-4.486-8-10-8zm3.707 10.293-1.414 1.414L12 11.414l-2.293 2.293-1.414-1.414L10.586 10 8.293 7.707l1.414-1.414L12 8.586l2.293-2.293 1.414 1.414L13.414 10l2.293 2.293z"/>|
    )
  end

  @doc """
  Renders the `wrench` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.wrench />
  <Boxicons.wrench class="w-4 h-4" />
  <Boxicons.wrench solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def wrench(assigns) do
    svg(
      assigns,
      ~S|<path d="M5.122 21c.378.378.88.586 1.414.586S7.572 21.378 7.95 21l4.336-4.336a7.495 7.495 0 0 0 2.217.333 7.446 7.446 0 0 0 5.302-2.195 7.484 7.484 0 0 0 1.632-8.158l-.57-1.388-4.244 4.243-2.121-2.122 4.243-4.243-1.389-.571A7.478 7.478 0 0 0 14.499 2c-2.003 0-3.886.78-5.301 2.196a7.479 7.479 0 0 0-1.862 7.518L3 16.05a2.001 2.001 0 0 0 0 2.828L5.122 21zm4.548-8.791-.254-.616a5.486 5.486 0 0 1 1.196-5.983 5.46 5.46 0 0 1 4.413-1.585l-3.353 3.353 4.949 4.95 3.355-3.355a5.49 5.49 0 0 1-1.587 4.416c-1.55 1.55-3.964 2.027-5.984 1.196l-.615-.255-5.254 5.256h.001l-.001 1v-1l-2.122-2.122 5.256-5.255z"/>|,
      ~S|<path d="m21.512 6.112-3.89 3.889-3.535-3.536 3.889-3.889a6.501 6.501 0 0 0-8.484 8.486l-6.276 6.275a.999.999 0 0 0 0 1.414l2.122 2.122a.999.999 0 0 0 1.414 0l6.275-6.276a6.501 6.501 0 0 0 7.071-1.414 6.504 6.504 0 0 0 1.414-7.071z"/>|
    )
  end

  @doc """
  Renders the `shield_alt_2` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shield_alt_2 />
  <Boxicons.shield_alt_2 class="w-4 h-4" />
  <Boxicons.shield_alt_2 solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def shield_alt_2(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.438 5.089a1.002 1.002 0 0 0-.959.015c-.684.389-1.355.577-2.053.577-2.035 0-3.952-1.629-5.722-3.39-.375-.373-1.063-.373-1.438 0C9.592 3.959 7.598 5.663 5.51 5.663c-.69 0-1.351-.184-2.018-.561-.298-.166-.658-.171-.96-.012s-.501.461-.528.801c-.011.129-.944 12.872 9.683 16.041a.99.99 0 0 0 .286.042H12c.097 0 .192-.014.285-.041 10.657-3.17 9.695-15.916 9.684-16.044a1 1 0 0 0-.531-.8zm-9.452 14.842c-6.979-2.255-7.934-9.412-8.014-12.477.505.14 1.019.209 1.537.209 2.492 0 4.65-1.567 6.476-3.283 1.893 1.788 3.983 3.301 6.442 3.301.53 0 1.057-.074 1.575-.22-.074 3.065-1.021 10.217-8.016 12.47z"/>|,
      ~S|<path d="M21.881 5.223a.496.496 0 0 0-.747-.412c-.672.392-1.718.898-2.643.898-.421 0-.849-.064-1.289-.198a5.712 5.712 0 0 1-.808-.309c-1.338-.639-2.567-1.767-3.696-2.889a1.008 1.008 0 0 0-.698-.29 1.008 1.008 0 0 0-.698.29c-1.129 1.122-2.358 2.25-3.696 2.889h-.001a5.655 5.655 0 0 1-.807.309c-.44.134-.869.198-1.289.198-.925 0-1.971-.507-2.643-.898a.496.496 0 0 0-.747.412c-.061 1.538-.077 4.84.688 7.444 1.399 4.763 4.48 7.976 8.91 9.292l.14.041.14-.014V22v-.014H12l.143.014.14-.041c4.43-1.316 7.511-4.529 8.91-9.292.765-2.604.748-5.906.688-7.444z"/>|
    )
  end

  @doc """
  Renders the `wallet` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.wallet />
  <Boxicons.wallet class="w-4 h-4" />
  <Boxicons.wallet solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def wallet(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 12h2v4h-2z"/><path d="M20 7V5c0-1.103-.897-2-2-2H5C3.346 3 2 4.346 2 6v12c0 2.201 1.794 3 3 3h15c1.103 0 2-.897 2-2V9c0-1.103-.897-2-2-2zM5 5h13v2H5a1.001 1.001 0 0 1 0-2zm15 14H5.012C4.55 18.988 4 18.805 4 18V8.815c.314.113.647.185 1 .185h15v10z"/>|,
      ~S|<path d="M20 7V5c0-1.103-.897-2-2-2H5C3.346 3 2 4.346 2 6v12c0 2.201 1.794 3 3 3h15c1.103 0 2-.897 2-2V9c0-1.103-.897-2-2-2zm-2 9h-2v-4h2v4zM5 7a1.001 1.001 0 0 1 0-2h13v2H5z"/>|
    )
  end

  @doc """
  Renders the `check_square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.check_square />
  <Boxicons.check_square class="w-4 h-4" />
  <Boxicons.check_square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def check_square(assigns) do
    svg(
      assigns,
      ~S|<path d="m10.933 13.519-2.226-2.226-1.414 1.414 3.774 3.774 5.702-6.84-1.538-1.282z"/><path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM5 19V5h14l.002 14H5z"/>|,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zm-7.933 13.481-3.774-3.774 1.414-1.414 2.226 2.226 4.299-5.159 1.537 1.28-5.702 6.841z"/>|
    )
  end

  @doc """
  Renders the `x_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.x_circle />
  <Boxicons.x_circle class="w-4 h-4" />
  <Boxicons.x_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def x_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M9.172 16.242 12 13.414l2.828 2.828 1.414-1.414L13.414 12l2.828-2.828-1.414-1.414L12 10.586 9.172 7.758 7.758 9.172 10.586 12l-2.828 2.828z"/><path d="M12 22c5.514 0 10-4.486 10-10S17.514 2 12 2 2 6.486 2 12s4.486 10 10 10zm0-18c4.411 0 8 3.589 8 8s-3.589 8-8 8-8-3.589-8-8 3.589-8 8-8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm4.207 12.793-1.414 1.414L12 13.414l-2.793 2.793-1.414-1.414L10.586 12 7.793 9.207l1.414-1.414L12 10.586l2.793-2.793 1.414 1.414L13.414 12l2.793 2.793z"/>|
    )
  end

  @doc """
  Renders the `basketball` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.basketball />
  <Boxicons.basketball class="w-4 h-4" />
  <Boxicons.basketball solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def basketball(assigns) do
    svg(
      assigns,
      ~S|<path d="M4.929 19.071c1.895 1.895 4.405 2.938 7.071 2.938s5.177-1.043 7.071-2.938c3.899-3.899 3.899-10.243 0-14.143C17.177 3.034 14.665 1.99 12 1.99S6.823 3.034 4.929 4.929c-3.899 3.898-3.899 10.243 0 14.142zm7.38-15.065a7.912 7.912 0 0 1 4.594 1.678L12 10.586l-1.46-1.46c1.161-1.479 1.792-3.308 1.769-5.12zM9.11 7.696 7.098 5.684a7.929 7.929 0 0 1 3.218-1.51c-.015 1.236-.445 2.477-1.206 3.522zM7.686 9.1a6.065 6.065 0 0 1-3.459 1.057 7.923 7.923 0 0 1 1.458-3.058L7.686 9.1zm-3.675 3.046c.077.002.154.014.231.014a8.05 8.05 0 0 0 4.877-1.626L10.586 12l-4.901 4.901a7.972 7.972 0 0 1-1.674-4.755zm12.294 2.745c1.042-.758 2.28-1.188 3.508-1.206a7.947 7.947 0 0 1-1.497 3.217l-2.011-2.011zm.597 3.425a7.935 7.935 0 0 1-3.059 1.47 6.05 6.05 0 0 1 1.057-3.472l2.002 2.002zm-5.044 1.686a7.922 7.922 0 0 1-4.761-1.686L12 13.414l1.463 1.463c-1.103 1.444-1.659 3.266-1.605 5.125zm8.124-8.31c-1.807-.018-3.633.61-5.108 1.768L13.414 12l4.901-4.901a7.968 7.968 0 0 1 1.667 4.593z"/>|,
      ~S|<path d="M18.328 4.258a9.953 9.953 0 0 0-5.949-2.235 8.99 8.99 0 0 1-1.835 7.107L12 10.586l6.328-6.328zM7.701 9.115 4.258 5.672a9.938 9.938 0 0 0-2.112 4.704 7.007 7.007 0 0 0 5.555-1.261zm12.041-3.443L13.414 12l1.456 1.456a8.993 8.993 0 0 1 7.107-1.835 9.953 9.953 0 0 0-2.235-5.949zm2.112 7.952a7.007 7.007 0 0 0-5.555 1.261l3.443 3.443a9.924 9.924 0 0 0 2.112-4.704zM9.115 7.701a7.007 7.007 0 0 0 1.261-5.555 9.928 9.928 0 0 0-4.704 2.112l3.443 3.443zm4.509 14.153a9.936 9.936 0 0 0 4.704-2.111L14.885 16.3a7.003 7.003 0 0 0-1.261 5.554zM12 13.414l-6.328 6.328a9.953 9.953 0 0 0 5.949 2.235 8.99 8.99 0 0 1 1.835-7.107L12 13.414zm-7.742 4.914L10.586 12 9.13 10.544a8.993 8.993 0 0 1-7.107 1.835 9.953 9.953 0 0 0 2.235 5.949z"/>|
    )
  end

  @doc """
  Renders the `circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.circle />
  <Boxicons.circle class="w-4 h-4" />
  <Boxicons.circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12c.001 5.515 4.487 10.001 10 10.001 5.514 0 10-4.486 10.001-10.001 0-5.514-4.486-10-10.001-10zm0 18.001c-4.41 0-7.999-3.589-8-8.001 0-4.411 3.589-8 8-8 4.412 0 8.001 3.589 8.001 8-.001 4.412-3.59 8.001-8.001 8.001z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2z"/>|
    )
  end

  @doc """
  Renders the `cube` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cube />
  <Boxicons.cube class="w-4 h-4" />
  <Boxicons.cube solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cube(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.406 6.086-9-4a1.001 1.001 0 0 0-.813 0l-9 4c-.02.009-.034.024-.054.035-.028.014-.058.023-.084.04-.022.015-.039.034-.06.05a.87.87 0 0 0-.19.194c-.02.028-.041.053-.059.081a1.119 1.119 0 0 0-.076.165c-.009.027-.023.052-.031.079A1.013 1.013 0 0 0 2 7v10c0 .396.232.753.594.914l9 4c.13.058.268.086.406.086a.997.997 0 0 0 .402-.096l.004.01 9-4A.999.999 0 0 0 22 17V7a.999.999 0 0 0-.594-.914zM12 4.095 18.538 7 12 9.905l-1.308-.581L5.463 7 12 4.095zM4 16.351V8.539l7 3.111v7.811l-7-3.11zm9 3.11V11.65l7-3.111v7.812l-7 3.11z"/>|,
      ~S|<path d="m21.406 6.086-9-4a1.001 1.001 0 0 0-.813 0l-9 4c-.02.009-.034.024-.054.035-.028.014-.058.023-.084.04-.022.015-.039.034-.06.05a.87.87 0 0 0-.19.194c-.02.028-.041.053-.059.081a1.119 1.119 0 0 0-.076.165c-.009.027-.023.052-.031.079A1.013 1.013 0 0 0 2 7v10c0 .396.232.753.594.914l9 4c.13.058.268.086.406.086a.997.997 0 0 0 .402-.096l.004.01 9-4A.999.999 0 0 0 22 17V7a.999.999 0 0 0-.594-.914zM12 4.095 18.538 7 12 9.905l-1.308-.581L5.463 7 12 4.095zm1 15.366V11.65l7-3.111v7.812l-7 3.11z"/>|
    )
  end

  @doc """
  Renders the `home_heart` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.home_heart />
  <Boxicons.home_heart class="w-4 h-4" />
  <Boxicons.home_heart solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def home_heart(assigns) do
    svg(
      assigns,
      ~S|<path d="m12.223 11.641-.223.22-.224-.22a2.224 2.224 0 0 0-3.125 0 2.13 2.13 0 0 0 0 3.07L12 18l3.349-3.289a2.13 2.13 0 0 0 0-3.07 2.225 2.225 0 0 0-3.126 0z"/><path d="m21.707 11.293-9-9a.999.999 0 0 0-1.414 0l-9 9A1 1 0 0 0 3 13h1v7c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-7h1a1 1 0 0 0 .707-1.707zM18.001 20H6v-9.585l6-6 6 6V15l.001 5z"/>|,
      ~S|<path d="M3 14h2v7a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-7h2a.998.998 0 0 0 .913-.593.998.998 0 0 0-.17-1.076l-9-10c-.379-.422-1.107-.422-1.486 0l-9 10A1 1 0 0 0 3 14zm5.653-2.359a2.224 2.224 0 0 1 3.125 0l.224.22.223-.22a2.225 2.225 0 0 1 3.126 0 2.13 2.13 0 0 1 0 3.07L12.002 18l-3.349-3.289a2.13 2.13 0 0 1 0-3.07z"/>|
    )
  end

  @doc """
  Renders the `home_smile` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.home_smile />
  <Boxicons.home_smile class="w-4 h-4" />
  <Boxicons.home_smile solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def home_smile(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 13h1v7c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-7h1a1 1 0 0 0 .707-1.707l-9-9a.999.999 0 0 0-1.414 0l-9 9A1 1 0 0 0 3 13zm9-8.586 6 6V15l.001 5H6v-9.586l6-6z"/><path d="M12 18c3.703 0 4.901-3.539 4.95-3.689l-1.9-.621c-.008.023-.781 2.31-3.05 2.31-2.238 0-3.02-2.221-3.051-2.316l-1.899.627C7.099 14.461 8.297 18 12 18z"/>|,
      ~S|<path d="M3 14h2v7a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-7h2a.998.998 0 0 0 .913-.593.998.998 0 0 0-.17-1.076l-9-10c-.379-.422-1.107-.422-1.486 0l-9 10A1 1 0 0 0 3 14zm5.949-.316C8.98 13.779 9.762 16 12 16c2.269 0 3.042-2.287 3.05-2.311l1.9.621C16.901 14.461 15.703 18 12 18s-4.901-3.539-4.95-3.689l1.899-.627z"/>|
    )
  end

  @doc """
  Renders the `heart` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.heart />
  <Boxicons.heart class="w-4 h-4" />
  <Boxicons.heart solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def heart(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 4.595a5.904 5.904 0 0 0-3.996-1.558 5.942 5.942 0 0 0-4.213 1.758c-2.353 2.363-2.352 6.059.002 8.412l7.332 7.332c.17.299.498.492.875.492a.99.99 0 0 0 .792-.409l7.415-7.415c2.354-2.354 2.354-6.049-.002-8.416a5.938 5.938 0 0 0-4.209-1.754A5.906 5.906 0 0 0 12 4.595zm6.791 1.61c1.563 1.571 1.564 4.025.002 5.588L12 18.586l-6.793-6.793c-1.562-1.563-1.561-4.017-.002-5.584.76-.756 1.754-1.172 2.799-1.172s2.035.416 2.789 1.17l.5.5a.999.999 0 0 0 1.414 0l.5-.5c1.512-1.509 4.074-1.505 5.584-.002z"/>|,
      ~S|<path d="M20.205 4.791a5.938 5.938 0 0 0-4.209-1.754A5.906 5.906 0 0 0 12 4.595a5.904 5.904 0 0 0-3.996-1.558 5.942 5.942 0 0 0-4.213 1.758c-2.353 2.363-2.352 6.059.002 8.412L12 21.414l8.207-8.207c2.354-2.353 2.355-6.049-.002-8.416z"/>|
    )
  end

  @doc """
  Renders the `calendar_heart` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.calendar_heart />
  <Boxicons.calendar_heart class="w-4 h-4" />
  <Boxicons.calendar_heart solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def calendar_heart(assigns) do
    svg(
      assigns,
      ~S|<path d="M8.648 14.711 11.997 18l3.35-3.289a2.129 2.129 0 0 0 0-3.069 2.225 2.225 0 0 0-3.126 0l-.224.219-.224-.219a2.224 2.224 0 0 0-3.125 0 2.129 2.129 0 0 0 0 3.069z"/><path d="M19 4h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm.002 16H5V8h14l.002 12z"/>|,
      ~S|<path d="M19 4h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm-3.648 11.711L12.002 19l-3.349-3.289a2.129 2.129 0 0 1 0-3.069 2.224 2.224 0 0 1 3.125 0l.224.219.224-.219a2.225 2.225 0 0 1 3.126 0 2.129 2.129 0 0 1 0 3.069zM19 9H5V7h14v2z"/>|
    )
  end

  @doc """
  Renders the `archive_in` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.archive_in />
  <Boxicons.archive_in class="w-4 h-4" />
  <Boxicons.archive_in solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def archive_in(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.706 5.292-2.999-2.999A.996.996 0 0 0 18 2H6a.996.996 0 0 0-.707.293L2.294 5.292A.994.994 0 0 0 2 6v13c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6a.994.994 0 0 0-.294-.708zM6.414 4h11.172l1 1H5.414l1-1zM4 19V7h16l.002 12H4z"/><path d="M14 9h-4v3H7l5 5 5-5h-3z"/>|,
      ~S|<path d="m21.706 5.292-2.999-2.999A.996.996 0 0 0 18 2H6a.997.997 0 0 0-.707.293L2.294 5.292A.996.996 0 0 0 2 6v13c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6a.994.994 0 0 0-.294-.708zM6.414 4h11.172l1 1H5.414l1-1zM12 18l-5-5h3v-3h4v3h3l-5 5z"/>|
    )
  end

  @doc """
  Renders the `message_alt_x` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_alt_x />
  <Boxicons.message_alt_x class="w-4 h-4" />
  <Boxicons.message_alt_x solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_alt_x(assigns) do
    svg(
      assigns,
      ~S|<path d="M8.586 18 12 21.414 15.414 18H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.586zM5 4h14v12h-4.414L12 18.586 9.414 16H5V4z"/><path d="M9.707 13.707 12 11.414l2.293 2.293 1.414-1.414L13.414 10l2.293-2.293-1.414-1.414L12 8.586 9.707 6.293 8.293 7.707 10.586 10l-2.293 2.293z"/>|,
      ~S|<path d="m8.5 18 3.5 4 3.5-4H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.5zM7.293 6.707l1.414-1.414L12 8.586l3.293-3.293 1.414 1.414L13.414 10l3.293 3.293-1.414 1.414L12 11.414l-3.293 3.293-1.414-1.414L10.586 10 7.293 6.707z"/>|
    )
  end

  @doc """
  Renders the `dock_top` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dock_top />
  <Boxicons.dock_top class="w-4 h-4" />
  <Boxicons.dock_top solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dock_top(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2zm0 2v3H5V5zM5 19v-9h14v9z"/>|,
      ~S|<path d="M3 5v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2zm2 14v-9h14.001l.001 9H5z"/>|
    )
  end

  @doc """
  Renders the `bar_chart_square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bar_chart_square />
  <Boxicons.bar_chart_square class="w-4 h-4" />
  <Boxicons.bar_chart_square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bar_chart_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 5v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2zm16.001 14H5V5h14l.001 14z"/><path d="M11 7h2v10h-2zm4 3h2v7h-2zm-8 2h2v5H7z"/>|,
      ~S|<path d="M21 19V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2zM9 18H7v-6h2v6zm4 0h-2V7h2v11zm4 0h-2v-8h2v8z"/>|
    )
  end

  @doc """
  Renders the `right_down_arrow_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.right_down_arrow_circle />
  <Boxicons.right_down_arrow_circle class="w-4 h-4" />
  <Boxicons.right_down_arrow_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def right_down_arrow_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2.007a9.928 9.928 0 0 0-7.071 2.922c-3.899 3.899-3.899 10.243 0 14.143A9.93 9.93 0 0 0 12 21.995a9.93 9.93 0 0 0 7.071-2.923c3.899-3.899 3.899-10.243 0-14.143A9.928 9.928 0 0 0 12 2.007zm5.657 15.65A7.946 7.946 0 0 1 12 19.994c-2.141 0-4.15-.83-5.657-2.337-3.119-3.119-3.119-8.195 0-11.314A7.944 7.944 0 0 1 12 4.007c2.141 0 4.15.829 5.657 2.336 3.119 3.119 3.119 8.195 0 11.314z"/><path d="M9.661 8.247 8.247 9.661l3.214 3.214L9.336 15H15V9.337l-2.125 2.124z"/>|,
      ~S|<path d="M4.929 4.929c-3.898 3.899-3.898 10.244 0 14.143 3.899 3.898 10.243 3.898 14.143 0 3.898-3.899 3.898-10.244 0-14.143-3.9-3.899-10.244-3.899-14.143 0zm10.606 10.607h-7.07l2.828-2.829-3.535-3.536 1.414-1.414 3.535 3.536 2.828-2.829v7.072z"/>|
    )
  end

  @doc """
  Renders the `pyramid` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pyramid />
  <Boxicons.pyramid class="w-4 h-4" />
  <Boxicons.pyramid solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def pyramid(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.445 21.832a1 1 0 0 0 1.11 0l9-6A.998.998 0 0 0 21.8 14.4l-9-12c-.377-.504-1.223-.504-1.6 0l-9 12a1 1 0 0 0 .245 1.432l9 6zM13 19.131V6l6.565 8.754L13 19.131zM11 6v13.131l-6.565-4.377L11 6z"/>|,
      ~S|<path d="M11.445 21.832a1 1 0 0 0 1.11 0l9-6A.998.998 0 0 0 21.8 14.4l-9-12c-.377-.504-1.223-.504-1.6 0l-9 12a1 1 0 0 0 .245 1.432l9 6zm8.12-7.078L12 19.798V4.667l7.565 10.087z"/>|
    )
  end

  @doc """
  Renders the `mouse_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.mouse_alt />
  <Boxicons.mouse_alt class="w-4 h-4" />
  <Boxicons.mouse_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def mouse_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 2h-2C7.691 2 5 4.691 5 8v8c0 3.309 2.691 6 6 6h2c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm-2 2v6H7V8c0-2.206 1.794-4 4-4zm6 12c0 2.206-1.794 4-4 4h-2c-2.206 0-4-1.794-4-4v-4h10v4zm-4-6V4c2.206 0 4 1.794 4 4v2h-4z"/>|,
      ~S|<path d="M13 2v8h6V8c0-3.309-2.691-6-6-6zM5 16c0 3.309 2.691 6 6 6h2c3.309 0 6-2.691 6-6v-4H5v4zm0-8v2h6V2C7.691 2 5 4.691 5 8z"/>|
    )
  end

  @doc """
  Renders the `bookmark_alt_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bookmark_alt_minus />
  <Boxicons.bookmark_alt_minus class="w-4 h-4" />
  <Boxicons.bookmark_alt_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bookmark_alt_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.5 2h-12C4.57 2 3 3.57 3 5.5V22l7-3.5 7 3.5v-9h5V5.5C22 3.57 20.43 2 18.5 2zM15 18.764l-5-2.5-5 2.5V5.5C5 4.673 5.673 4 6.5 4h8.852A3.451 3.451 0 0 0 15 5.5v13.264zM20 11h-3V5.5c0-.827.673-1.5 1.5-1.5s1.5.673 1.5 1.5V11z"/><path d="M7 9h6v2H7z"/>|,
      ~S|<path d="M18.5 2h-12C4.57 2 3 3.57 3 5.5V22l7-3.5 7 3.5v-9h5V5.5C22 3.57 20.43 2 18.5 2zM13 11H7V9h6v2zm7 0h-3V5.5c0-.827.673-1.5 1.5-1.5s1.5.673 1.5 1.5V11z"/>|
    )
  end

  @doc """
  Renders the `conversation` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.conversation />
  <Boxicons.conversation class="w-4 h-4" />
  <Boxicons.conversation solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def conversation(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 14h.5c.827 0 1.5-.673 1.5-1.5v-9c0-.827-.673-1.5-1.5-1.5h-13C2.673 2 2 2.673 2 3.5V18l5.333-4H16zm-9.333-2L4 14V4h12v8H6.667z"/><path d="M20.5 8H20v6.001c0 1.1-.893 1.993-1.99 1.999H8v.5c0 .827.673 1.5 1.5 1.5h7.167L22 22V9.5c0-.827-.673-1.5-1.5-1.5z"/>|,
      ~S|<path d="M13 14h3.5c.827 0 1.5-.673 1.5-1.5v-9c0-.827-.673-1.5-1.5-1.5h-13C2.673 2 2 2.673 2 3.5V18l5.333-4H13zm-9-.1.154-.016L4 14v-.1z"/><path d="M20.5 8H20v6.001c0 1.1-.893 1.993-1.99 1.999H8v.5c0 .827.673 1.5 1.5 1.5h7.167L22 22V9.5c0-.827-.673-1.5-1.5-1.5z"/>|
    )
  end

  @doc """
  Renders the `cylinder` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cylinder />
  <Boxicons.cylinder class="w-4 h-4" />
  <Boxicons.cylinder solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cylinder(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 22c5.131 0 9-1.935 9-4.5V7h-.053c.033-.164.053-.33.053-.5C21 3.935 17.131 2 12 2 7.209 2 3.52 3.688 3.053 6H3v11.5c0 2.565 3.869 4.5 9 4.5zm0-2c-4.273 0-7-1.48-7-2.5V9.394C6.623 10.387 9.111 11 12 11s5.377-.613 7-1.606V17.5c0 1.02-2.727 2.5-7 2.5zm0-16c4.273 0 7 1.48 7 2.5S16.273 9 12 9 5 7.52 5 6.5 7.727 4 12 4z"/>|,
      ~S|<path d="M12 22c5.131 0 9-1.935 9-4.5V7c0-.051-.024-.097-.033-.146.016-.117.033-.234.033-.354C21 3.935 17.131 2 12 2S3 3.935 3 6.5v11c0 2.565 3.869 4.5 9 4.5zm0-18c4.273 0 7 1.48 7 2.5a.683.683 0 0 1-.025.158c-.004.01-.012.018-.015.027-.274.848-2.29 1.98-5.496 2.253l-.05.003C12.965 8.979 12.494 9 12 9 7.727 9 5 7.52 5 6.5S7.727 4 12 4z"/>|
    )
  end

  @doc """
  Renders the `hard_hat` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hard_hat />
  <Boxicons.hard_hat class="w-4 h-4" />
  <Boxicons.hard_hat solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def hard_hat(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 15a9.11 9.11 0 0 0-.18-1.81 8.53 8.53 0 0 0-.53-1.69 8.08 8.08 0 0 0-.83-1.5 8.73 8.73 0 0 0-1.1-1.33A8.27 8.27 0 0 0 17 7.54a8.08 8.08 0 0 0-1.53-.83L15 6.52V5a1 1 0 0 0-1-1h-4a1 1 0 0 0-1 1v1.52l-.5.19a8.08 8.08 0 0 0-1.5.83 8.27 8.27 0 0 0-1.33 1.1A8.27 8.27 0 0 0 4.54 10a8.08 8.08 0 0 0-.83 1.53 9 9 0 0 0-.53 1.69A9.11 9.11 0 0 0 3 15v3H2v2h20v-2h-1zM5 15a7.33 7.33 0 0 1 .14-1.41 6.64 6.64 0 0 1 .41-1.31 7.15 7.15 0 0 1 .64-1.19 7.15 7.15 0 0 1 1.9-1.9A7.33 7.33 0 0 1 9 8.68V15h2V6h2v9h2V8.68a8.13 8.13 0 0 1 .91.51 7.09 7.09 0 0 1 1 .86 6.44 6.44 0 0 1 .85 1 6 6 0 0 1 .65 1.19 7.13 7.13 0 0 1 .41 1.31A7.33 7.33 0 0 1 19 15v3H5z"/>|,
      ~S|<path d="M20 18v-3a8 8 0 0 0-5-7.4V13h-1V5h-4v8H9V7.6A8 8 0 0 0 4 15v3H2v2h20v-2z"/>|
    )
  end

  @doc """
  Renders the `error_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.error_alt />
  <Boxicons.error_alt class="w-4 h-4" />
  <Boxicons.error_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def error_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 7h2v7h-2zm0 8h2v2h-2z"/><path d="m21.707 7.293-5-5A.996.996 0 0 0 16 2H8a.996.996 0 0 0-.707.293l-5 5A.996.996 0 0 0 2 8v8c0 .266.105.52.293.707l5 5A.996.996 0 0 0 8 22h8c.266 0 .52-.105.707-.293l5-5A.996.996 0 0 0 22 16V8a.996.996 0 0 0-.293-.707zM20 15.586 15.586 20H8.414L4 15.586V8.414L8.414 4h7.172L20 8.414v7.172z"/>|,
      ~S|<path d="M16.707 2.293A.996.996 0 0 0 16 2H8a.996.996 0 0 0-.707.293l-5 5A.996.996 0 0 0 2 8v8c0 .266.105.52.293.707l5 5A.996.996 0 0 0 8 22h8c.266 0 .52-.105.707-.293l5-5A.996.996 0 0 0 22 16V8a.996.996 0 0 0-.293-.707l-5-5zM13 17h-2v-2h2v2zm0-4h-2V7h2v6z"/>|
    )
  end

  @doc """
  Renders the `taxi` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.taxi />
  <Boxicons.taxi class="w-4 h-4" />
  <Boxicons.taxi solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def taxi(assigns) do
    svg(
      assigns,
      ~S|<path d="m20.772 10.156-1.368-4.105A2.995 2.995 0 0 0 16.559 4H14V2h-4v2H7.441a2.995 2.995 0 0 0-2.845 2.051l-1.368 4.105A2.003 2.003 0 0 0 2 12v5c0 .753.423 1.402 1.039 1.743-.013.066-.039.126-.039.195V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-2h12v2a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-2.062c0-.069-.026-.13-.039-.195A1.993 1.993 0 0 0 22 17v-5c0-.829-.508-1.541-1.228-1.844zM4 17v-5h16l.002 5H4zM7.441 6h9.117c.431 0 .813.274.949.684L18.613 10H5.387l1.105-3.316A1 1 0 0 1 7.441 6z"/>|,
      ~S|<path d="m20.772 10.155-1.368-4.104A2.995 2.995 0 0 0 16.559 4H14V2h-4v2H7.441a2.995 2.995 0 0 0-2.845 2.051l-1.368 4.104A2 2 0 0 0 2 12v5c0 .738.404 1.376 1 1.723V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-2h12v2a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-2.277A1.99 1.99 0 0 0 22 17v-5a2 2 0 0 0-1.228-1.845zM7.441 6h9.117c.431 0 .813.274.949.684L18.613 10H5.387l1.105-3.316A1 1 0 0 1 7.441 6zM5.5 16a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 5.5 16zm13 0a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 18.5 16z"/>|
    )
  end

  @doc """
  Renders the `leaf` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.leaf />
  <Boxicons.leaf class="w-4 h-4" />
  <Boxicons.leaf solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def leaf(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.88 2.15-1.2.4a13.84 13.84 0 0 1-6.41.64 11.87 11.87 0 0 0-6.68.9A7.23 7.23 0 0 0 3.3 9.5a8.65 8.65 0 0 0 1.47 6.6c-.06.21-.12.42-.17.63A22.6 22.6 0 0 0 4 22h2a30.69 30.69 0 0 1 .59-4.32 9.25 9.25 0 0 0 4.52 1.11 11 11 0 0 0 4.28-.87C23 14.67 22 3.86 22 3.41zm-7.27 13.93c-2.61 1.11-5.73.92-7.48-.45a13.79 13.79 0 0 1 1.21-2.84A10.17 10.17 0 0 1 9.73 11a9 9 0 0 1 1.81-1.42A12 12 0 0 1 16 8V7a11.43 11.43 0 0 0-5.26 1.08 10.28 10.28 0 0 0-4.12 3.65 15.07 15.07 0 0 0-1 1.87 7 7 0 0 1-.38-3.73 5.24 5.24 0 0 1 3.14-4 8.93 8.93 0 0 1 3.82-.84c.62 0 1.23.06 1.87.11a16.2 16.2 0 0 0 6-.35C20 7.55 19.5 14 14.61 16.08z"/>|,
      ~S|<path d="m22 3.41-.12-1.26-1.2.4a13.84 13.84 0 0 1-6.41.64 11.87 11.87 0 0 0-6.68.9A7.23 7.23 0 0 0 3.3 9.5a9 9 0 0 0 .39 4.58 16.6 16.6 0 0 1 1.18-2.2 9.85 9.85 0 0 1 4.07-3.43 11.16 11.16 0 0 1 5.06-1A12.08 12.08 0 0 0 9.34 9.2a9.48 9.48 0 0 0-1.86 1.53 11.38 11.38 0 0 0-1.39 1.91 16.39 16.39 0 0 0-1.57 4.54A26.42 26.42 0 0 0 4 22h2a30.69 30.69 0 0 1 .59-4.32 9.25 9.25 0 0 0 4.52 1.11 11 11 0 0 0 4.28-.87C23 14.67 22 3.86 22 3.41z"/>|
    )
  end

  @doc """
  Renders the `pin` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pin />
  <Boxicons.pin class="w-4 h-4" />
  <Boxicons.pin solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def pin(assigns) do
    svg(
      assigns,
      ~S|<path d="m12 22 1-2v-3h5a1 1 0 0 0 1-1v-1.586c0-.526-.214-1.042-.586-1.414L17 11.586V8a1 1 0 0 0 1-1V4c0-1.103-.897-2-2-2H8c-1.103 0-2 .897-2 2v3a1 1 0 0 0 1 1v3.586L5.586 13A2.01 2.01 0 0 0 5 14.414V16a1 1 0 0 0 1 1h5v3l1 2zM8 4h8v2H8V4zM7 14.414l1.707-1.707A.996.996 0 0 0 9 12V8h6v4c0 .266.105.52.293.707L17 14.414V15H7v-.586z"/>|,
      ~S|<path d="M15 11.586V6h2V4a2 2 0 0 0-2-2H9a2 2 0 0 0-2 2v2h2v5.586l-2.707 1.707A.996.996 0 0 0 6 14v2a1 1 0 0 0 1 1h4v3l1 2 1-2v-3h4a1 1 0 0 0 1-1v-2a.996.996 0 0 0-.293-.707L15 11.586z"/>|
    )
  end

  @doc """
  Renders the `caret_right_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.caret_right_circle />
  <Boxicons.caret_right_circle class="w-4 h-4" />
  <Boxicons.caret_right_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def caret_right_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="m10 17 6-5-6-5z"/><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/>|,
      ~S|<path d="M12 22c5.514 0 10-4.486 10-10S17.514 2 12 2 2 6.486 2 12s4.486 10 10 10zM10 7l6 5-6 5V7z"/>|
    )
  end

  @doc """
  Renders the `send` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.send />
  <Boxicons.send class="w-4 h-4" />
  <Boxicons.send solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def send(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.426 11.095-17-8A.999.999 0 0 0 3.03 4.242L4.969 12 3.03 19.758a.998.998 0 0 0 1.396 1.147l17-8a1 1 0 0 0 0-1.81zM5.481 18.197l.839-3.357L12 12 6.32 9.16l-.839-3.357L18.651 12l-13.17 6.197z"/>|,
      ~S|<path d="m21.426 11.095-17-8A1 1 0 0 0 3.03 4.242l1.212 4.849L12 12l-7.758 2.909-1.212 4.849a.998.998 0 0 0 1.396 1.147l17-8a1 1 0 0 0 0-1.81z"/>|
    )
  end

  @doc """
  Renders the `face` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.face />
  <Boxicons.face class="w-4 h-4" />
  <Boxicons.face solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def face(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 2c3.213 0 5.982 1.908 7.254 4.648a7.8 7.8 0 0 1-.895-.498c-.409-.258-.873-.551-1.46-.772-.669-.255-1.4-.378-2.234-.378s-1.565.123-2.234.377c-.587.223-1.051.516-1.472.781-.378.237-.703.443-1.103.594C9.41 8.921 8.926 9 8.33 9c-.595 0-1.079-.079-1.524-.248-.4-.151-.728-.358-1.106-.598-.161-.101-.34-.208-.52-.313C6.587 5.542 9.113 4 12 4zm0 16c-4.411 0-8-3.589-8-8 0-.81.123-1.59.348-2.327.094.058.185.11.283.173.411.26.876.554 1.466.776.669.255 1.399.378 2.233.378.833 0 1.564-.123 2.235-.377.587-.223 1.051-.516 1.472-.781.378-.237.703-.443 1.103-.595.445-.168.929-.247 1.525-.247s1.08.079 1.525.248c.399.15.725.356 1.114.602.409.258.873.551 1.46.773.363.138.748.229 1.153.291.049.357.083.717.083 1.086 0 4.411-3.589 8-8 8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8 0-1.168.258-2.275.709-3.276.154.09.308.182.456.276.396.25.791.5 1.286.688.494.187 1.088.312 1.879.312.792 0 1.386-.125 1.881-.313s.891-.437 1.287-.687.792-.5 1.287-.688c.494-.187 1.088-.312 1.88-.312s1.386.125 1.88.313c.495.187.891.437 1.287.687s.792.5 1.287.688c.178.067.374.122.581.171.191.682.3 1.398.3 2.141 0 4.411-3.589 8-8 8z"/>|
    )
  end

  @doc """
  Renders the `arrow_to_bottom` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.arrow_to_bottom />
  <Boxicons.arrow_to_bottom class="w-4 h-4" />
  <Boxicons.arrow_to_bottom solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def arrow_to_bottom(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 18h12v2H6zm5-14v8.586L6.707 8.293 5.293 9.707 12 16.414l6.707-6.707-1.414-1.414L13 12.586V4z"/>|,
      ~S|<path d="M6 18h12v2H6zm5-14v6H6l6 6 6-6h-5V4z"/>|
    )
  end

  @doc """
  Renders the `check_shield` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.check_shield />
  <Boxicons.check_shield class="w-4 h-4" />
  <Boxicons.check_shield solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def check_shield(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.995 6.9a.998.998 0 0 0-.548-.795l-8-4a1 1 0 0 0-.895 0l-8 4a1.002 1.002 0 0 0-.547.795c-.011.107-.961 10.767 8.589 15.014a.987.987 0 0 0 .812 0c9.55-4.247 8.6-14.906 8.589-15.014zM12 19.897C5.231 16.625 4.911 9.642 4.966 7.635L12 4.118l7.029 3.515c.037 1.989-.328 9.018-7.029 12.264z"/><path d="m11 12.586-2.293-2.293-1.414 1.414L11 15.414l5.707-5.707-1.414-1.414z"/>|,
      ~S|<path d="M11.488 21.754c.294.157.663.156.957-.001 8.012-4.304 8.581-12.713 8.574-15.104a.988.988 0 0 0-.596-.903l-8.05-3.566a1.005 1.005 0 0 0-.813.001L3.566 5.747a.99.99 0 0 0-.592.892c-.034 2.379.445 10.806 8.514 15.115zM8.674 10.293l2.293 2.293 4.293-4.293 1.414 1.414-5.707 5.707-3.707-3.707 1.414-1.414z"/>|
    )
  end

  @doc """
  Renders the `book_bookmark` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.book_bookmark />
  <Boxicons.book_bookmark class="w-4 h-4" />
  <Boxicons.book_bookmark solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def book_bookmark(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 2.01H6c-1.206 0-3 .799-3 3v14c0 2.201 1.794 3 3 3h15v-2H6.012C5.55 19.998 5 19.815 5 19.01c0-.101.009-.191.024-.273.112-.575.583-.717.987-.727H20c.018 0 .031-.009.049-.01H21V4.01c0-1.103-.897-2-2-2zm0 14H5v-11c0-.806.55-.988 1-1h7v7l2-1 2 1v-7h2v12z"/>|,
      ~S|<path d="M19 2H6c-1.206 0-3 .799-3 3v14c0 2.201 1.794 3 3 3h15v-2H6.012C5.55 19.988 5 19.806 5 19c0-.101.009-.191.024-.273.112-.576.584-.717.988-.727H21V4a2 2 0 0 0-2-2zm0 9-2-1-2 1V4h4v7z"/>|
    )
  end

  @doc """
  Renders the `message_alt_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_alt_minus />
  <Boxicons.message_alt_minus class="w-4 h-4" />
  <Boxicons.message_alt_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_alt_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="M8.586 18 12 21.414 15.414 18H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.586zM5 4h14v12h-4.414L12 18.586 9.414 16H5V4z"/><path d="M8 9h8v2H8z"/>|,
      ~S|<path d="M5 2c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.5l3.5 4 3.5-4H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5zm11 9H8V9h8v2z"/>|
    )
  end

  @doc """
  Renders the `caret_up_square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.caret_up_square />
  <Boxicons.caret_up_square class="w-4 h-4" />
  <Boxicons.caret_up_square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def caret_up_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 14h10l-5-6z"/><path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM5 19V5h14l.002 14H5z"/>|,
      ~S|<path d="M5 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zm7-13 5 6H7l5-6z"/>|
    )
  end

  @doc """
  Renders the `skip_previous_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.skip_previous_circle />
  <Boxicons.skip_previous_circle class="w-4 h-4" />
  <Boxicons.skip_previous_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def skip_previous_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M16 16V8l-5 4zM9 8v8h2V8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10c5.515 0 10-4.486 10-10S17.515 2 12 2zm4 14-6-4v4H8V8h2v4l6-4v8z"/>|
    )
  end

  @doc """
  Renders the `church` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.church />
  <Boxicons.church class="w-4 h-4" />
  <Boxicons.church solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def church(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.447 14.105 18 12.382V12a1 1 0 0 0-.485-.857L13 8.434V6h2V4h-2V2h-2v2H9v2h2v2.434l-4.515 2.709A1 1 0 0 0 6 12v.382l-3.447 1.724A.998.998 0 0 0 2 15v6a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1v-6c0-.379-.214-.725-.553-.895zM4 15.618l2-1V20H4v-4.382zM12 15a2 2 0 0 0-2 2v3H8v-7.434l4-2.4 4 2.4V20h-2v-3a2 2 0 0 0-2-2zm8 5h-2v-5.382l2 1V20z"/>|,
      ~S|<path d="M10 22v-4a2 2 0 0 1 4 0v4h4V12a1 1 0 0 0-.485-.857L13 8.434V6h2V4h-2V2h-2v2H9v2h2v2.434l-4.515 2.709A1 1 0 0 0 6 12v10h4zm-7 0h2v-8.118l-2.447 1.224A.998.998 0 0 0 2 16v5a1 1 0 0 0 1 1zm18.447-6.895L19 13.882V22h2a1 1 0 0 0 1-1v-5c0-.379-.214-.725-.553-.895z"/>|
    )
  end

  @doc """
  Renders the `bookmark_plus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bookmark_plus />
  <Boxicons.bookmark_plus class="w-4 h-4" />
  <Boxicons.bookmark_plus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bookmark_plus(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 14v-3h3V9h-3V6h-2v3H8v2h3v3z"/><path d="M20 22V4c0-1.103-.897-2-2-2H6c-1.103 0-2 .897-2 2v18l8-4.572L20 22zM6 10V4h12v14.553l-6-3.428-6 3.428V10z"/>|,
      ~S|<path d="M17 2H7a2 2 0 0 0-2 2v18l7-4.848L19 22V4a2 2 0 0 0-2-2zm-1 9h-3v3h-2v-3H8V9h3V6h2v3h3v2z"/>|
    )
  end

  @doc """
  Renders the `brush_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.brush_alt />
  <Boxicons.brush_alt class="w-4 h-4" />
  <Boxicons.brush_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def brush_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 8.001h-4V4.999a2.92 2.92 0 0 0-.874-2.108 2.943 2.943 0 0 0-2.39-.879C10.202 2.144 9 3.508 9 5.117V8H5c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2v-9.999c0-1.103-.897-2-2-2zM5 10h6V5.117c0-.57.407-1.07 1.002-1.117.266 0 .512.103.712.307a.956.956 0 0 1 .286.692V10h.995l.005.001h5V12H5v-2zm0 10v-6h14l.002 6H5z"/>|,
      ~S|<path d="M18 8.001h-2V8h-1V4.999a2.92 2.92 0 0 0-.874-2.108 2.943 2.943 0 0 0-2.39-.879C10.202 2.144 9 3.508 9 5.117V8H6c-1.103 0-2 .897-2 2v11a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V10.001c0-1.103-.897-2-2-2zM6 12v-2h5V5.117c0-.57.407-1.07 1.002-1.117.266 0 .512.103.712.307a.956.956 0 0 1 .286.692V10h.995l.005.001h4V12H6z"/>|
    )
  end

  @doc """
  Renders the `save` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.save />
  <Boxicons.save class="w-4 h-4" />
  <Boxicons.save solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def save(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 21h14a2 2 0 0 0 2-2V8a1 1 0 0 0-.29-.71l-4-4A1 1 0 0 0 16 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2zm10-2H9v-5h6zM13 7h-2V5h2zM5 5h2v4h8V5h.59L19 8.41V19h-2v-5a2 2 0 0 0-2-2H9a2 2 0 0 0-2 2v5H5z"/>|,
      ~S|<path d="M5 21h14a2 2 0 0 0 2-2V8l-5-5H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2zM7 5h4v2h2V5h2v4H7V5zm0 8h10v6H7v-6z"/>|
    )
  end

  @doc """
  Renders the `square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.square />
  <Boxicons.square class="w-4 h-4" />
  <Boxicons.square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def square(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4a1 1 0 0 0-1 1v16a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zm-1 16H5V5h14v14z"/>|,
      ~S|<path d="M20 3H4a1 1 0 0 0-1 1v16a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1z"/>|
    )
  end

  @doc """
  Renders the `calendar_exclamation` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.calendar_exclamation />
  <Boxicons.calendar_exclamation class="w-4 h-4" />
  <Boxicons.calendar_exclamation solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def calendar_exclamation(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 4h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm.002 16H5V8h14l.002 12z"/><path d="M11 10h2v5h-2zm0 6h2v2h-2z"/>|,
      ~S|<path d="M19 4h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm-6 16h-2v-2h2v2zm0-4h-2v-5h2v5zm6-7H5V7h14v2z"/>|
    )
  end

  @doc """
  Renders the `camera_off` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.camera_off />
  <Boxicons.camera_off class="w-4 h-4" />
  <Boxicons.camera_off solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def camera_off(assigns) do
    svg(
      assigns,
      ~S|<path d="M8.014 12.135c.074 2.062 1.789 3.777 3.851 3.851l-3.851-3.851z"/><path d="M4 20h11.879l-2-2H4V8.121L2.144 6.265A1.976 1.976 0 0 0 2 7v11c0 1.103.897 2 2 2zM20 5h-2.586l-2.707-2.707A.996.996 0 0 0 14 2h-4a.997.997 0 0 0-.707.293L6.586 5h-.172L3.707 2.293 2.293 3.707l18 18 1.414-1.414-.626-.626A1.98 1.98 0 0 0 22 18V7c0-1.103-.897-2-2-2zm-6.081 7.505-2.424-2.425c.163-.046.331-.08.505-.08 1.065 0 2 .935 2 2 0 .174-.033.342-.081.505zm1.502 1.501A3.881 3.881 0 0 0 16 12c0-2.168-1.832-4-4-4-.729 0-1.412.22-2.007.579L7.914 6.5l2.5-2.5h3.172l2.707 2.707A.996.996 0 0 0 17 7l3-.001V18h-.586l-3.993-3.994z"/>|,
      ~S|<path d="M4 20h11.879l-3.083-3.083A4.774 4.774 0 0 1 12 17c-2.71 0-5-2.29-5-5 0-.271.039-.535.083-.796L2.144 6.265C2.054 6.493 2 6.74 2 7v11c0 1.103.897 2 2 2zM20 5h-2.586l-2.707-2.707A.996.996 0 0 0 14 2h-4a.996.996 0 0 0-.707.293L6.586 5h-.172L3.707 2.293 2.293 3.707l18 18 1.414-1.414-.626-.626A1.98 1.98 0 0 0 22 18V7c0-1.103-.897-2-2-2zm-5.312 8.274A2.86 2.86 0 0 0 15 12c0-1.626-1.374-3-3-3-.456 0-.884.12-1.274.312l-1.46-1.46A4.88 4.88 0 0 1 12 7c2.71 0 5 2.29 5 5a4.88 4.88 0 0 1-.852 2.734l-1.46-1.46z"/>|
    )
  end

  @doc """
  Renders the `detail` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.detail />
  <Boxicons.detail class="w-4 h-4" />
  <Boxicons.detail solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def detail(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM4 19V5h16l.002 14H4z"/><path d="M6 7h12v2H6zm0 4h12v2H6zm0 4h6v2H6z"/>|,
      ~S|<path d="M20 3H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2zm-9 14H5v-2h6v2zm8-4H5v-2h14v2zm0-4H5V7h14v2z"/>|
    )
  end

  @doc """
  Renders the `chalkboard` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chalkboard />
  <Boxicons.chalkboard class="w-4 h-4" />
  <Boxicons.chalkboard solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chalkboard(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v11c0 1.103.897 2 2 2h4l-1.8 2.4 1.6 1.2 2.7-3.6h3l2.7 3.6 1.6-1.2L16 18h4c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM4 16V5h16l.001 11H4z"/><path d="M6 12h4v2H6z"/>|,
      ~S|<path d="M20 4H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h4l-1.8 2.4 1.6 1.2 2.7-3.6h3l2.7 3.6 1.6-1.2L16 18h4c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zM5 13h4v2H5v-2z"/>|
    )
  end

  @doc """
  Renders the `arrow_from_bottom` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.arrow_from_bottom />
  <Boxicons.arrow_from_bottom class="w-4 h-4" />
  <Boxicons.arrow_from_bottom solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def arrow_from_bottom(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 18h12v2H6zm6-14.414-6.707 6.707 1.414 1.414L11 7.414V16h2V7.414l4.293 4.293 1.414-1.414z"/>|,
      ~S|<path d="M6 18h12v2H6zm6-14-6 6h5v6h2v-6h5z"/>|
    )
  end

  @doc """
  Renders the `message_square_check` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_square_check />
  <Boxicons.message_square_check class="w-4 h-4" />
  <Boxicons.message_square_check solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_square_check(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm4 14c0 2.206-1.794 4-4 4H4V8c0-2.206 1.794-4 4-4h8c2.206 0 4 1.794 4 4v8z"/><path d="m11 13.586-2.293-2.293-1.414 1.414L11 16.414l6.207-6.207-1.414-1.414z"/>|,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm-5 14.414-3.707-3.707 1.414-1.414L11 13.586l4.793-4.793 1.414 1.414L11 16.414z"/>|
    )
  end

  @doc """
  Renders the `user_check` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.user_check />
  <Boxicons.user_check class="w-4 h-4" />
  <Boxicons.user_check solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def user_check(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.29 8.29 16 12.58l-1.3-1.29-1.41 1.42 2.7 2.7 5.72-5.7zM4 8a3.91 3.91 0 0 0 4 4 3.91 3.91 0 0 0 4-4 3.91 3.91 0 0 0-4-4 3.91 3.91 0 0 0-4 4zm6 0a1.91 1.91 0 0 1-2 2 1.91 1.91 0 0 1-2-2 1.91 1.91 0 0 1 2-2 1.91 1.91 0 0 1 2 2zM4 18a3 3 0 0 1 3-3h2a3 3 0 0 1 3 3v1h2v-1a5 5 0 0 0-5-5H7a5 5 0 0 0-5 5v1h2z"/>|,
      ~S|<path d="M8 12.052c1.995 0 3.5-1.505 3.5-3.5s-1.505-3.5-3.5-3.5-3.5 1.505-3.5 3.5 1.505 3.5 3.5 3.5zM9 13H7c-2.757 0-5 2.243-5 5v1h12v-1c0-2.757-2.243-5-5-5zm11.294-4.708-4.3 4.292-1.292-1.292-1.414 1.414 2.706 2.704 5.712-5.702z"/>|
    )
  end

  @doc """
  Renders the `objects_horizontal_right` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.objects_horizontal_right />
  <Boxicons.objects_horizontal_right class="w-4 h-4" />
  <Boxicons.objects_horizontal_right solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def objects_horizontal_right(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2h2v20h-2zM18 14a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1zm-2 4H4v-3h12zM7 11h10a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1zm1-5h8v3H8z"/>|,
      ~S|<path d="M20 2h2v20h-2z"/>|
    )
  end

  @doc """
  Renders the `palette` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.palette />
  <Boxicons.palette class="w-4 h-4" />
  <Boxicons.palette solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def palette(assigns) do
    svg(
      assigns,
      ~S|<path d="M13.4 2.096a10.08 10.08 0 0 0-8.937 3.331A10.054 10.054 0 0 0 2.096 13.4c.53 3.894 3.458 7.207 7.285 8.246a9.982 9.982 0 0 0 2.618.354l.142-.001a3.001 3.001 0 0 0 2.516-1.426 2.989 2.989 0 0 0 .153-2.879l-.199-.416a1.919 1.919 0 0 1 .094-1.912 2.004 2.004 0 0 1 2.576-.755l.412.197c.412.198.85.299 1.301.299A3.022 3.022 0 0 0 22 12.14a9.935 9.935 0 0 0-.353-2.76c-1.04-3.826-4.353-6.754-8.247-7.284zm5.158 10.909-.412-.197c-1.828-.878-4.07-.198-5.135 1.494-.738 1.176-.813 2.576-.204 3.842l.199.416a.983.983 0 0 1-.051.961.992.992 0 0 1-.844.479h-.112a8.061 8.061 0 0 1-2.095-.283c-3.063-.831-5.403-3.479-5.826-6.586-.321-2.355.352-4.623 1.893-6.389a8.002 8.002 0 0 1 7.16-2.664c3.107.423 5.755 2.764 6.586 5.826.198.73.293 1.474.282 2.207-.012.807-.845 1.183-1.441.894z"/>|,
      ~S|<path d="M9.38 21.646A9.985 9.985 0 0 0 12 22l.141-.001a2.998 2.998 0 0 0 2.515-1.425c.542-.876.6-1.953.153-2.88l-.198-.415c-.453-.942-.097-1.796.388-2.281.485-.485 1.341-.841 2.28-.388h.001l.413.199a2.99 2.99 0 0 0 2.881-.153A2.997 2.997 0 0 0 22 12.141a9.926 9.926 0 0 0-.353-2.76c-1.038-3.827-4.353-6.754-8.246-7.285-3.149-.427-6.241.602-8.471 2.833S1.666 10.247 2.096 13.4c.53 3.894 3.458 7.208 7.284 8.246zM15.5 6a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3zm-5-1a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3zM9 15.506a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm-2.5-6.5a1.5 1.5 0 1 1-.001 3.001A1.5 1.5 0 0 1 6.5 9.006z"/>|
    )
  end

  @doc """
  Renders the `down_arrow` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.down_arrow />
  <Boxicons.down_arrow class="w-4 h-4" />
  <Boxicons.down_arrow solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def down_arrow(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.886 5.536A1.002 1.002 0 0 0 21 5H3a1.002 1.002 0 0 0-.822 1.569l9 13a.998.998 0 0 0 1.644 0l9-13a.998.998 0 0 0 .064-1.033zM12 17.243 4.908 7h14.184L12 17.243z"/>|,
      ~S|<path d="M11.178 19.569a.998.998 0 0 0 1.644 0l9-13A.999.999 0 0 0 21 5H3a1.002 1.002 0 0 0-.822 1.569l9 13z"/>|
    )
  end

  @doc """
  Renders the `news` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.news />
  <Boxicons.news class="w-4 h-4" />
  <Boxicons.news solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def news(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.875 3H4.125C2.953 3 2 3.897 2 5v14c0 1.103.953 2 2.125 2h15.75C21.047 21 22 20.103 22 19V5c0-1.103-.953-2-2.125-2zm0 16H4.125c-.057 0-.096-.016-.113-.016-.007 0-.011.002-.012.008L3.988 5.046c.007-.01.052-.046.137-.046h15.75c.079.001.122.028.125.008l.012 13.946c-.007.01-.052.046-.137.046z"/><path d="M6 7h6v6H6zm7 8H6v2h12v-2h-4zm1-4h4v2h-4zm0-4h4v2h-4z"/>|,
      ~S|<path d="M20 17a1 1 0 0 1-2 0V5a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v13a2 2 0 0 0 2 2h15c1.654 0 3-1.346 3-3V7h-2v10zM12 7h3v2h-3V7zm0 4h3v2h-3v-2zM5 7h5v6H5V7zm0 10v-2h10v2H5z"/>|
    )
  end

  @doc """
  Renders the `microphone_off` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.microphone_off />
  <Boxicons.microphone_off class="w-4 h-4" />
  <Boxicons.microphone_off solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def microphone_off(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.707 20.293-3.388-3.388A7.942 7.942 0 0 0 20 12.021h-2a5.95 5.95 0 0 1-1.109 3.456l-1.452-1.452c.348-.591.561-1.27.561-2.004v-6C16 3.804 14.215 2 12.021 2c-.07 0-.14.009-.209.025A4.005 4.005 0 0 0 8 6.021v.565L3.707 2.293 2.293 3.707l18 18 1.414-1.414zM10 6.021c0-1.103.897-2 2-2a.918.918 0 0 0 .164-.015C13.188 4.08 14 4.956 14 6.021v6c0 .172-.029.335-.071.494L10 8.586V6.021zm-4 6H4c0 4.072 3.06 7.436 7 7.931v2.069h2v-2.07a7.993 7.993 0 0 0 2.218-.611l-1.558-1.558a5.979 5.979 0 0 1-1.66.239c-3.309 0-6-2.692-6-6z"/><path d="M8.011 12.132a3.993 3.993 0 0 0 3.877 3.877l-3.877-3.877z"/>|,
      ~S|<path d="m21.707 20.293-3.4-3.4A7.93 7.93 0 0 0 20 12h-2a5.945 5.945 0 0 1-1.119 3.467l-1.449-1.45A3.926 3.926 0 0 0 16 12V6c0-2.217-1.785-4.021-3.979-4.021-.07 0-.14.009-.209.025A4.006 4.006 0 0 0 8 6v.586L3.707 2.293 2.293 3.707l18 18 1.414-1.414zM6 12H4c0 4.072 3.06 7.436 7 7.931V22h2v-2.069a7.935 7.935 0 0 0 2.241-.63l-1.549-1.548A5.983 5.983 0 0 1 12 18c-3.309 0-6-2.691-6-6z"/><path d="M8.007 12.067a3.996 3.996 0 0 0 3.926 3.926l-3.926-3.926z"/>|
    )
  end

  @doc """
  Renders the `message_error` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_error />
  <Boxicons.message_error class="w-4 h-4" />
  <Boxicons.message_error solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_error(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3v3.767L13.277 18H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14h-7.277L9 18.233V16H4V4h16v12z"/><path d="M11 6h2v5h-2zm0 6h2v2h-2z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .894-2 1.992v12.016C2 17.106 2.897 18 4 18h3v4l6.351-4H20c1.103 0 2-.894 2-1.992V3.992A1.998 1.998 0 0 0 20 2zm-7 13h-2v-2h2v2zm0-4h-2V5h2v6z"/>|
    )
  end

  @doc """
  Renders the `message_rounded_error` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_rounded_error />
  <Boxicons.message_rounded_error class="w-4 h-4" />
  <Boxicons.message_rounded_error solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_rounded_error(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.908 1.898 5.515 5 6.934V22l5.34-4.005C17.697 17.852 22 14.32 22 10c0-4.411-4.486-8-10-8zm0 14h-.333L9 18v-2.417l-.641-.247C5.67 14.301 4 12.256 4 10c0-3.309 3.589-6 8-6s8 2.691 8 6-3.589 6-8 6z"/><path d="M11 6h2v5h-2zm0 6h2v2h-2z"/>|,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.907 1.897 5.516 5 6.934V22l5.34-4.005C17.697 17.854 22 14.32 22 10c0-4.411-4.486-8-10-8zm1 12h-2v-2h2v2zm0-4h-2V5h2v5z"/>|
    )
  end

  @doc """
  Renders the `happy` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.happy />
  <Boxicons.happy class="w-4 h-4" />
  <Boxicons.happy solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def happy(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M12 18c4 0 5-4 5-4H7s1 4 5 4z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm3.493 7a1.494 1.494 0 1 1-.001 2.987A1.494 1.494 0 0 1 15.493 9zM8.5 9a1.5 1.5 0 1 1-.001 3.001A1.5 1.5 0 0 1 8.5 9zm3.5 9c-4 0-5-4-5-4h10s-1 4-5 4z"/>|
    )
  end

  @doc """
  Renders the `registered` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.registered />
  <Boxicons.registered class="w-4 h-4" />
  <Boxicons.registered solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def registered(assigns) do
    svg(
      assigns,
      ~S|<path d="M12.14 2a10 10 0 1 0 10 10 10 10 0 0 0-10-10zm0 18a8 8 0 1 1 8-8 8 8 0 0 1-8 8z"/><path d="M16.14 10a3 3 0 0 0-3-3h-5v10h2v-4h1.46l2.67 4h2.4l-2.75-4.12A3 3 0 0 0 16.14 10zm-3 1h-3V9h3a1 1 0 0 1 0 2z"/>|,
      ~S|<path d="M13 9h-3v2h3a1 1 0 0 0 0-2z"/><path d="M12 2a10 10 0 1 0 10 10A10 10 0 0 0 12 2zm2.13 15-2.67-4H10v4H8V7h5a3 3 0 0 1 .79 5.88L16.54 17z"/>|
    )
  end

  @doc """
  Renders the `bomb` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bomb />
  <Boxicons.bomb class="w-4 h-4" />
  <Boxicons.bomb solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bomb(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 3.001c-1.4 0-2.584 1.167-2.707 1.293L17.207 5.38l-1.091-1.088a.999.999 0 0 0-1.413.001L13.46 5.537A8.353 8.353 0 0 0 10.5 5C5.813 5 2 8.813 2 13.5S5.813 22 10.5 22s8.5-3.813 8.5-8.5c0-.909-.144-1.8-.428-2.658l1.345-1.345a1.002 1.002 0 0 0-.001-1.415l-1.293-1.29 1.088-1.088c.229-.229.845-.703 1.289-.703h1v-2h-1zm-4.511 7.978c.339.804.511 1.652.511 2.521 0 3.584-2.916 6.5-6.5 6.5S4 17.084 4 13.5 6.916 7 10.5 7c.96 0 1.89.21 2.762.624.381.181.837.103 1.136-.196l1.014-1.014 2.384 2.377-1.092 1.092a.998.998 0 0 0-.215 1.096z"/><path d="M6 13.5a4.47 4.47 0 0 0 1.318 3.182l1.414-1.414C8.26 14.795 8 14.168 8 13.5s.26-1.295.732-1.768A2.484 2.484 0 0 1 10.5 11V9a4.469 4.469 0 0 0-3.182 1.318A4.47 4.47 0 0 0 6 13.5z"/>|,
      ~S|<path d="m18.293 4.293-1.086 1.086-1.086-1.086a.999.999 0 0 0-1.414 0l-1.249 1.249A8.427 8.427 0 0 0 10.499 5C5.813 5 2 8.813 2 13.5S5.813 22 10.499 22s8.5-3.813 8.5-8.5a8.42 8.42 0 0 0-.431-2.654L19.914 9.5a.999.999 0 0 0 0-1.414l-1.293-1.293 1.09-1.09C19.94 5.474 20.556 5 21 5h1V3h-1c-1.4 0-2.584 1.167-2.707 1.293zM10.499 10c-.935 0-1.813.364-2.475 1.025A3.48 3.48 0 0 0 7 13.5H5c0-1.468.571-2.849 1.609-3.888A5.464 5.464 0 0 1 10.499 8v2z"/>|
    )
  end

  @doc """
  Renders the `phone_outgoing` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.phone_outgoing />
  <Boxicons.phone_outgoing class="w-4 h-4" />
  <Boxicons.phone_outgoing solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def phone_outgoing(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.712 13.288a.999.999 0 0 0-1.414 0l-1.594 1.594c-.739-.22-2.118-.72-2.992-1.594s-1.374-2.253-1.594-2.992l1.594-1.594a.999.999 0 0 0 0-1.414l-4-4a.999.999 0 0 0-1.414 0L2.586 6c-.38.38-.594.902-.586 1.435.023 1.424.4 6.37 4.298 10.268S15.142 21.977 16.566 22h.028c.528 0 1.027-.208 1.405-.586l2.712-2.712a.999.999 0 0 0 0-1.414l-3.999-4zM16.585 20c-1.248-.021-5.518-.356-8.873-3.712C4.346 12.922 4.02 8.637 4 7.414l2.005-2.005 2.586 2.586-1.293 1.293a1 1 0 0 0-.272.912c.024.115.611 2.842 2.271 4.502s4.387 2.247 4.502 2.271a.993.993 0 0 0 .912-.271l1.293-1.293 2.586 2.586L16.585 20z"/><path d="m16.795 5.791-4.497 4.497 1.414 1.414 4.497-4.497L21.005 10V2.995H14z"/>|,
      ~S|<path d="m16.793 5.793-4.5 4.5 1.414 1.414 4.5-4.5L21 10V3h-7z"/><path d="M16.422 13.446a1.001 1.001 0 0 0-1.391.043l-2.393 2.461c-.576-.11-1.734-.471-2.926-1.66-1.192-1.193-1.553-2.354-1.66-2.926l2.459-2.394a1 1 0 0 0 .043-1.391L6.859 3.516a1 1 0 0 0-1.391-.087L3.299 5.29a.996.996 0 0 0-.291.648c-.015.25-.301 6.172 4.291 10.766 4.006 4.006 9.024 4.299 10.406 4.299.202 0 .326-.006.359-.008a.992.992 0 0 0 .648-.291l1.86-2.171a1 1 0 0 0-.086-1.391l-4.064-3.696z"/>|
    )
  end

  @doc """
  Renders the `edit_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.edit_alt />
  <Boxicons.edit_alt class="w-4 h-4" />
  <Boxicons.edit_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def edit_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.045 7.401c.378-.378.586-.88.586-1.414s-.208-1.036-.586-1.414l-1.586-1.586c-.378-.378-.88-.586-1.414-.586s-1.036.208-1.413.585L4 13.585V18h4.413L19.045 7.401zm-3-3 1.587 1.585-1.59 1.584-1.586-1.585 1.589-1.584zM6 16v-1.585l7.04-7.018 1.586 1.586L7.587 16H6zm-2 4h16v2H4z"/>|,
      ~S|<path d="m16 2.012 3 3L16.713 7.3l-3-3zM4 14v3h3l8.299-8.287-3-3zm0 6h16v2H4z"/>|
    )
  end

  @doc """
  Renders the `spa` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.spa />
  <Boxicons.spa class="w-4 h-4" />
  <Boxicons.spa solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def spa(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.787 9.023c-.125.027-1.803.418-3.953 1.774-.323-1.567-1.279-4.501-4.108-7.485L12 2.546l-.726.767C8.435 6.308 7.483 9.25 7.163 10.827 5.005 9.448 3.34 9.052 3.218 9.024L2 8.752V10c0 7.29 3.925 12 10 12 5.981 0 10-4.822 10-12V8.758l-1.213.265zM8.999 12.038c.002-.033.152-3.1 3.001-6.532C14.814 8.906 14.999 12 15 12v.125a18.933 18.933 0 0 0-3.01 3.154 19.877 19.877 0 0 0-2.991-3.113v-.128zM12 20c-5.316 0-7.549-4.196-7.937-8.564 1.655.718 4.616 2.426 7.107 6.123l.841 1.249.825-1.26c2.426-3.708 5.425-5.411 7.096-6.122C19.534 15.654 17.304 20 12 20z"/>|,
      ~S|<path d="M12 16.114c-3.998-5.951-8.574-7.043-8.78-7.09L2 8.75V10c0 7.29 3.925 12 10 12 5.981 0 10-4.822 10-12V8.75l-1.22.274c-.206.047-4.782 1.139-8.78 7.09z"/><path d="M11.274 3.767c-1.799 1.898-2.84 3.775-3.443 5.295 1.329.784 2.781 1.943 4.159 3.685 1.364-1.76 2.826-2.925 4.17-3.709-.605-1.515-1.646-3.383-3.435-5.271L12 3l-.726.767z"/>|
    )
  end

  @doc """
  Renders the `calendar_week` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.calendar_week />
  <Boxicons.calendar_week class="w-4 h-4" />
  <Boxicons.calendar_week solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def calendar_week(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 4h-3V2h-2v2h-4V2H8v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zM5 20V7h14V6l.002 14H5z"/><path d="M7 10v2h10V9H7z"/>|,
      ~S|<path d="M19 4h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm-2 8v2H7v-3h10v1zm2-3H5V7h14v2z"/>|
    )
  end

  @doc """
  Renders the `downvote` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.downvote />
  <Boxicons.downvote class="w-4 h-4" />
  <Boxicons.downvote solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def downvote(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.901 10.566A1.001 1.001 0 0 0 20 10h-4V3a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v7H4a1.001 1.001 0 0 0-.781 1.625l8 10a1 1 0 0 0 1.562 0l8-10c.24-.301.286-.712.12-1.059zM12 19.399 6.081 12H10V4h4v8h3.919L12 19.399z"/>|,
      ~S|<path d="M20.901 10.566A1.001 1.001 0 0 0 20 10h-4V3a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v7H4a1.001 1.001 0 0 0-.781 1.625l8 10a1 1 0 0 0 1.562 0l8-10c.24-.301.286-.712.12-1.059z"/>|
    )
  end

  @doc """
  Renders the `sleepy` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sleepy />
  <Boxicons.sleepy class="w-4 h-4" />
  <Boxicons.sleepy solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def sleepy(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M10 7c-2.905 0-3.983 2.386-4 3.99l2 .021C8.002 10.804 8.076 9 10 9V7zm4 0v2c1.826 0 1.992 1.537 2 2.007L17 11h1c0-1.608-1.065-4-4-4z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-4 9.01-2-.02C6.017 9.386 7.095 7 10 7v2c-1.924 0-1.998 1.805-2 2.01zM12 18c-1.657 0-3-1.119-3-2.5s1.343-2.5 3-2.5 3 1.119 3 2.5-1.343 2.5-3 2.5zm5-7-1 .008C15.992 10.536 15.826 9 14 9V7c2.935 0 4 2.393 4 4h-1z"/>|
    )
  end

  @doc """
  Renders the `notification_off` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.notification_off />
  <Boxicons.notification_off class="w-4 h-4" />
  <Boxicons.notification_off solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def notification_off(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.71 20.296-1.786-1.786c.045-.163.076-.332.076-.51v-7h-2v5.586L7.414 6H13V4H6c-.178 0-.347.031-.51.076l-1.78-1.78L2.296 3.71l18 18 1.414-1.414zM4 8.121V18c0 1.103.897 2 2 2h9.879l-2-2H6v-7.879l-2-2z"/>|,
      ~S|<path d="M20 18v-7.422A4.962 4.962 0 0 1 18 11a5 5 0 0 1-5-5c0-.712.153-1.387.422-2H6c-.178 0-.347.031-.51.076L3.707 2.293 2.293 3.707l18 18 1.414-1.414-1.783-1.783c.045-.163.076-.332.076-.51zM4 18c0 1.103.897 2 2 2h9.879L4 8.121V18z"/>|
    )
  end

  @doc """
  Renders the `copy_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.copy_alt />
  <Boxicons.copy_alt class="w-4 h-4" />
  <Boxicons.copy_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def copy_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H10c-1.103 0-2 .897-2 2v4H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h10c1.103 0 2-.897 2-2v-4h4c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM4 20V10h10l.002 10H4zm16-6h-4v-4c0-1.103-.897-2-2-2h-4V4h10v10z"/><path d="M6 12h6v2H6zm0 4h6v2H6z"/>|,
      ~S|<path d="M20 2H10a2 2 0 0 0-2 2v2h8a2 2 0 0 1 2 2v8h2a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2z"/><path d="M4 22h10c1.103 0 2-.897 2-2V10c0-1.103-.897-2-2-2H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2zm2-10h6v2H6v-2zm0 4h6v2H6v-2z"/>|
    )
  end

  @doc """
  Renders the `chevron_left_square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevron_left_square />
  <Boxicons.chevron_left_square class="w-4 h-4" />
  <Boxicons.chevron_left_square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevron_left_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zM5 5h14l.001 14H5V5z"/><path d="M13.293 6.293 7.586 12l5.707 5.707 1.414-1.414L10.414 12l4.293-4.293z"/>|,
      ~S|<path d="M5 3c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5zm9.707 13.293-1.414 1.414L7.586 12l5.707-5.707 1.414 1.414L10.414 12l4.293 4.293z"/>|
    )
  end

  @doc """
  Renders the `rename` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.rename />
  <Boxicons.rename class="w-4 h-4" />
  <Boxicons.rename solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def rename(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.005 5.995h-1v2h1v8h-1v2h1c1.103 0 2-.897 2-2v-8c0-1.102-.898-2-2-2zm-14 4H15v4H6.005z"/><path d="M17.005 17.995V4H20V2h-8v2h3.005v1.995h-11c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2h11V20H12v2h8v-2h-2.995v-2.005zm-13-2v-8h11v8h-11z"/>|,
      ~S|<path d="M20 5.995h-1v12h1c1.103 0 2-.897 2-2v-8c0-1.102-.897-2-2-2z"/><path d="M17 17.995V4h2.995V2h-8v2H15v1.995H4c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2h11V20h-3.005v2h8v-2H17v-2.005zm-11-4v-4h9v4H6z"/>|
    )
  end

  @doc """
  Renders the `comment_add` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.comment_add />
  <Boxicons.comment_add class="w-4 h-4" />
  <Boxicons.comment_add solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def comment_add(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 14h2v-3h3V9h-3V6h-2v3H8v2h3z"/><path d="M20 2H4c-1.103 0-2 .897-2 2v18l5.333-4H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14H6.667L4 18V4h16v12z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v18l4-4h14c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm-3 9h-4v4h-2v-4H7V9h4V5h2v4h4v2z"/>|
    )
  end

  @doc """
  Renders the `home_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.home_circle />
  <Boxicons.home_circle class="w-4 h-4" />
  <Boxicons.home_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def home_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 13h1v7c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-7h1a1 1 0 0 0 .707-1.707l-9-9a.999.999 0 0 0-1.414 0l-9 9A1 1 0 0 0 3 13zm9-8.586 6 6V15l.001 5H6v-9.585l6-6.001z"/><path d="M12 17c2.206 0 4-1.794 4-4s-1.794-4-4-4-4 1.794-4 4 1.794 4 4 4zm0-6c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2z"/>|,
      ~S|<path d="m21.743 12.331-9-10c-.379-.422-1.107-.422-1.486 0l-9 10A1 1 0 0 0 3 14h2v7a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-7h2a.998.998 0 0 0 .743-1.669zM12 16a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>|
    )
  end

  @doc """
  Renders the `phone_off` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.phone_off />
  <Boxicons.phone_off class="w-4 h-4" />
  <Boxicons.phone_off solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def phone_off(assigns) do
    svg(
      assigns,
      ~S|<path d="M10.09 12.5a8.92 8.92 0 0 1-1-2.2l1.59-1.59a1 1 0 0 0 0-1.42l-4-4a1 1 0 0 0-1.41 0L2.59 6A2 2 0 0 0 2 7.44 15.44 15.44 0 0 0 5.62 17L2.3 20.29l1.41 1.42 18-18-1.41-1.42zM7 15.55a13.36 13.36 0 0 1-3-8.13l2-2L8.59 8 7.3 9.29a1 1 0 0 0-.27.92 11 11 0 0 0 1.62 3.73zm9.71-2.26a1 1 0 0 0-1.41 0l-1.6 1.6-.34-.12-1.56 1.55a12.06 12.06 0 0 0 2 .66 1 1 0 0 0 .91-.27l1.3-1.3L18.59 18l-2 2A13.61 13.61 0 0 1 10 18.1l-1.43 1.45a15.63 15.63 0 0 0 8 2.45 2 2 0 0 0 1.43-.58l2.71-2.71a1 1 0 0 0 0-1.42z"/>|,
      ~S|<path d="M9.17 13.42a5.24 5.24 0 0 1-.93-2.06L10.7 9a1 1 0 0 0 0-1.39l-3.65-4.1a1 1 0 0 0-1.4-.08L3.48 5.29a1 1 0 0 0-.29.65 15.25 15.25 0 0 0 3.54 9.92l-4.44 4.43 1.42 1.42 18-18-1.42-1.42zm7.44.02a1 1 0 0 0-1.39.05L12.82 16a4.07 4.07 0 0 1-.51-.14l-2.66 2.61A15.46 15.46 0 0 0 17.89 21h.36a1 1 0 0 0 .65-.29l1.86-2.17a1 1 0 0 0-.09-1.39z"/>|
    )
  end

  @doc """
  Renders the `right_arrow_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.right_arrow_circle />
  <Boxicons.right_arrow_circle class="w-4 h-4" />
  <Boxicons.right_arrow_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def right_arrow_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.999 1.993c-5.514.001-10 4.487-10 10.001s4.486 10 10.001 10c5.513 0 9.999-4.486 10-10 0-5.514-4.486-10-10.001-10.001zM12 19.994c-4.412 0-8.001-3.589-8.001-8s3.589-8 8-8.001C16.411 3.994 20 7.583 20 11.994c-.001 4.411-3.59 8-8 8z"/><path d="M12 10.994H8v2h4V16l4.005-4.005L12 7.991z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 15v-4H7v-2h5V7l5 5-5 5z"/>|
    )
  end

  @doc """
  Renders the `message_square_dots` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_square_dots />
  <Boxicons.message_square_dots class="w-4 h-4" />
  <Boxicons.message_square_dots solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_square_dots(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v12a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm4 13c0 2.206-1.794 4-4 4H4V8c0-2.206 1.794-4 4-4h8c2.206 0 4 1.794 4 4v7z"/>|,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm-5 10.5A1.5 1.5 0 0 1 9.5 14c-.086 0-.168-.011-.25-.025-.083.01-.164.025-.25.025a2 2 0 1 1 2-2c0 .085-.015.167-.025.25.013.082.025.164.025.25zm4 1.5c-.086 0-.167-.015-.25-.025a1.471 1.471 0 0 1-.25.025 1.5 1.5 0 0 1-1.5-1.5c0-.085.012-.168.025-.25-.01-.083-.025-.164-.025-.25a2 2 0 1 1 2 2z"/>|
    )
  end

  @doc """
  Renders the `clinic` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.clinic />
  <Boxicons.clinic class="w-4 h-4" />
  <Boxicons.clinic solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def clinic(assigns) do
    svg(
      assigns,
      ~S|<path d="M12.707 2.293a.999.999 0 0 0-1.414 0l-9 9A1 1 0 0 0 3 13h1v7c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-7h1a.999.999 0 0 0 .707-1.707l-9-9zM18.001 20H6v-9.586l6-6 6 6V15l.001 5z"/><path d="M13 10h-2v3H8v2h3v3h2v-3h3v-2h-3z"/>|,
      ~S|<path d="m21.743 12.331-9-10c-.379-.422-1.107-.422-1.486 0l-9 10a.998.998 0 0 0-.17 1.076c.16.361.518.593.913.593h2v7a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-7h2a.998.998 0 0 0 .743-1.669zM16 15h-3v3h-2v-3H8v-2h3v-3h2v3h3v2z"/>|
    )
  end

  @doc """
  Renders the `message_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_minus />
  <Boxicons.message_minus class="w-4 h-4" />
  <Boxicons.message_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3v3.767L13.277 18H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14h-7.277L9 18.233V16H4V4h16v12z"/><path d="M8 9h8v2H8z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .894-2 1.992v12.016C2 17.106 2.897 18 4 18h3v4l6.351-4H20c1.103 0 2-.894 2-1.992V3.992A1.998 1.998 0 0 0 20 2zm-4 9H8V9h8v2z"/>|
    )
  end

  @doc """
  Renders the `dice_2` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dice_2 />
  <Boxicons.dice_2 class="w-4 h-4" />
  <Boxicons.dice_2 solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dice_2(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM5 19V5h14l.002 14H5z"/>|,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM9.5 13.5a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 9.5 13.5zm5 0a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 14.5 13.5z"/>|
    )
  end

  @doc """
  Renders the `log_out_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.log_out_circle />
  <Boxicons.log_out_circle class="w-4 h-4" />
  <Boxicons.log_out_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def log_out_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="m2 12 5 4v-3h9v-2H7V8z"/><path d="M13.001 2.999a8.938 8.938 0 0 0-6.364 2.637L8.051 7.05c1.322-1.322 3.08-2.051 4.95-2.051s3.628.729 4.95 2.051 2.051 3.08 2.051 4.95-.729 3.628-2.051 4.95-3.08 2.051-4.95 2.051-3.628-.729-4.95-2.051l-1.414 1.414c1.699 1.7 3.959 2.637 6.364 2.637s4.665-.937 6.364-2.637c1.7-1.699 2.637-3.959 2.637-6.364s-.937-4.665-2.637-6.364a8.938 8.938 0 0 0-6.364-2.637z"/>|,
      ~S|<path d="M12 3c-4.963 0-9 4.037-9 9v.001l5-4v3h7v2H8v3l-5-4C3.001 16.964 7.037 21 12 21s9-4.037 9-9-4.037-9-9-9z"/>|
    )
  end

  @doc """
  Renders the `color_fill` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.color_fill />
  <Boxicons.color_fill class="w-4 h-4" />
  <Boxicons.color_fill solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def color_fill(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 13.998c-.092.065-2 2.083-2 3.5 0 1.494.949 2.448 2 2.5.906.044 2-.891 2-2.5 0-1.5-1.908-3.435-2-3.5zm-16.586-1c0 .534.208 1.036.586 1.414l5.586 5.586c.378.378.88.586 1.414.586s1.036-.208 1.414-.586l7-7-.707-.707L11 4.584 8.707 2.291 7.293 3.705l2.293 2.293L4 11.584c-.378.378-.586.88-.586 1.414zM11 7.412l5.586 5.586L11 18.584h.001l-.001 1v-1l-5.586-5.586L11 7.412z"/>|,
      ~S|<path d="M20 14c-.092.064-2 2.083-2 3.5 0 1.494.949 2.448 2 2.5.906.044 2-.891 2-2.5 0-1.5-1.908-3.436-2-3.5zM9.586 20c.378.378.88.586 1.414.586s1.036-.208 1.414-.586l7-7-.707-.707L11 4.586 8.707 2.293 7.293 3.707 9.586 6 4 11.586c-.378.378-.586.88-.586 1.414s.208 1.036.586 1.414L9.586 20zM11 7.414 16.586 13H5.414L11 7.414z"/>|
    )
  end

  @doc """
  Renders the `chevron_right_square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevron_right_square />
  <Boxicons.chevron_right_square class="w-4 h-4" />
  <Boxicons.chevron_right_square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevron_right_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zM5 5h14l.001 14H5V5z"/><path d="M9.293 7.707 13.586 12l-4.293 4.293 1.414 1.414L16.414 12l-5.707-5.707z"/>|,
      ~S|<path d="M3 5v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2zm6.293 2.707 1.414-1.414L16.414 12l-5.707 5.707-1.414-1.414L13.586 12 9.293 7.707z"/>|
    )
  end

  @doc """
  Renders the `lemon` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.lemon />
  <Boxicons.lemon class="w-4 h-4" />
  <Boxicons.lemon solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def lemon(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 22a9.83 9.83 0 0 1-3.26-.55 2.23 2.23 0 0 0-1.7.19 3.51 3.51 0 0 1-2.47.24 3.55 3.55 0 0 1-2.45-2.45A3.51 3.51 0 0 1 2.36 17a2.23 2.23 0 0 0 .19-1.7 10.07 10.07 0 0 1 0-6.53 9.87 9.87 0 0 1 6.18-6.23 10.07 10.07 0 0 1 6.53 0A2.23 2.23 0 0 0 17 2.36a3.51 3.51 0 0 1 2.47-.24 3.55 3.55 0 0 1 2.45 2.45A3.51 3.51 0 0 1 21.64 7a2.23 2.23 0 0 0-.19 1.7 10.07 10.07 0 0 1 0 6.53 9.87 9.87 0 0 1-6.19 6.19A10.33 10.33 0 0 1 12 22zm-3.84-2.64a3.91 3.91 0 0 1 1.23.2 8 8 0 0 0 5.24 0 7.84 7.84 0 0 0 4.94-4.93 8 8 0 0 0 0-5.24 4.19 4.19 0 0 1 .29-3.23 1.53 1.53 0 0 0 .09-1.08 1.49 1.49 0 0 0-1-1 1.53 1.53 0 0 0-1.08.09 4.19 4.19 0 0 1-3.23.29 8 8 0 0 0-5.24 0 7.84 7.84 0 0 0-4.97 4.91 8 8 0 0 0 0 5.24 4.19 4.19 0 0 1-.29 3.23 1.53 1.53 0 0 0-.09 1.08 1.49 1.49 0 0 0 1 1 1.53 1.53 0 0 0 1.08-.09 4.47 4.47 0 0 1 2.03-.47z"/><path d="M8 12H6a6 6 0 0 1 6-6v2a4 4 0 0 0-4 4z"/>|,
      ~S|<path d="M21.45 8.74A2.23 2.23 0 0 1 21.64 7a3.51 3.51 0 0 0 .24-2.47 3.55 3.55 0 0 0-2.45-2.45 3.51 3.51 0 0 0-2.43.28 2.23 2.23 0 0 1-1.7.19 10.07 10.07 0 0 0-6.53 0 9.87 9.87 0 0 0-6.23 6.18 10.07 10.07 0 0 0 0 6.53A2.23 2.23 0 0 1 2.36 17a3.51 3.51 0 0 0-.24 2.47 3.55 3.55 0 0 0 2.45 2.45A3.51 3.51 0 0 0 7 21.64a2.23 2.23 0 0 1 1.7-.19A9.83 9.83 0 0 0 12 22a10.33 10.33 0 0 0 3.27-.54 9.87 9.87 0 0 0 6.19-6.19 10.07 10.07 0 0 0-.01-6.53zM12 7a5 5 0 0 0-5 5H5a7 7 0 0 1 7-7z"/>|
    )
  end

  @doc """
  Renders the `book_open` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.book_open />
  <Boxicons.book_open class="w-4 h-4" />
  <Boxicons.book_open solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def book_open(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 3h-7a2.98 2.98 0 0 0-2 .78A2.98 2.98 0 0 0 10 3H3a1 1 0 0 0-1 1v15a1 1 0 0 0 1 1h5.758c.526 0 1.042.214 1.414.586l1.121 1.121c.009.009.021.012.03.021.086.079.182.149.294.196h.002a.996.996 0 0 0 .762 0h.002c.112-.047.208-.117.294-.196.009-.009.021-.012.03-.021l1.121-1.121A2.015 2.015 0 0 1 15.242 20H21a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zM8.758 18H4V5h6c.552 0 1 .449 1 1v12.689A4.032 4.032 0 0 0 8.758 18zM20 18h-4.758c-.799 0-1.584.246-2.242.689V6c0-.551.448-1 1-1h6v13z"/>|,
      ~S|<path d="M21 3h-7a2.98 2.98 0 0 0-2 .78A2.98 2.98 0 0 0 10 3H3a1 1 0 0 0-1 1v15a1 1 0 0 0 1 1h5.758a2.01 2.01 0 0 1 1.414.586l1.121 1.121c.009.009.021.012.03.021.086.08.182.15.294.196h.002a.996.996 0 0 0 .762 0h.002c.112-.046.208-.117.294-.196.009-.009.021-.012.03-.021l1.121-1.121A2.01 2.01 0 0 1 15.242 20H21a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zm-1 15h-4.758a4.03 4.03 0 0 0-2.242.689V6c0-.551.448-1 1-1h6v13z"/>|
    )
  end

  @doc """
  Renders the `toggle_right` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.toggle_right />
  <Boxicons.toggle_right class="w-4 h-4" />
  <Boxicons.toggle_right solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def toggle_right(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 9c-1.628 0-3 1.372-3 3s1.372 3 3 3 3-1.372 3-3-1.372-3-3-3z"/><path d="M16 6H8c-3.296 0-5.982 2.682-6 5.986v.042A6.01 6.01 0 0 0 8 18h8c3.309 0 6-2.691 6-6s-2.691-6-6-6zm0 10H8a4.006 4.006 0 0 1-4-3.99C4.004 9.799 5.798 8 8 8h8c2.206 0 4 1.794 4 4s-1.794 4-4 4z"/>|,
      ~S|<path d="M16 6H8c-3.296 0-5.982 2.682-6 5.986v.042A6.01 6.01 0 0 0 8 18h8c3.309 0 6-2.691 6-6s-2.691-6-6-6zm0 9c-1.627 0-3-1.373-3-3s1.373-3 3-3 3 1.373 3 3-1.373 3-3 3z"/>|
    )
  end

  @doc """
  Renders the `microphone` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.microphone />
  <Boxicons.microphone class="w-4 h-4" />
  <Boxicons.microphone solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def microphone(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 12V6c0-2.217-1.785-4.021-3.979-4.021a.933.933 0 0 0-.209.025A4.006 4.006 0 0 0 8 6v6c0 2.206 1.794 4 4 4s4-1.794 4-4zm-6 0V6c0-1.103.897-2 2-2a.89.89 0 0 0 .163-.015C13.188 4.06 14 4.935 14 6v6c0 1.103-.897 2-2 2s-2-.897-2-2z"/><path d="M6 12H4c0 4.072 3.061 7.436 7 7.931V22h2v-2.069c3.939-.495 7-3.858 7-7.931h-2c0 3.309-2.691 6-6 6s-6-2.691-6-6z"/>|,
      ~S|<path d="M12 16c2.206 0 4-1.794 4-4V6c0-2.217-1.785-4.021-3.979-4.021a.933.933 0 0 0-.209.025A4.006 4.006 0 0 0 8 6v6c0 2.206 1.794 4 4 4z"/><path d="M11 19.931V22h2v-2.069c3.939-.495 7-3.858 7-7.931h-2c0 3.309-2.691 6-6 6s-6-2.691-6-6H4c0 4.072 3.061 7.436 7 7.931z"/>|
    )
  end

  @doc """
  Renders the `dice_6` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dice_6 />
  <Boxicons.dice_6 class="w-4 h-4" />
  <Boxicons.dice_6 solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dice_6(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM5 19V5h14l.002 14H5z"/>|,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM8 17.5a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 8 17.5zm0-4a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 8 13.5zm0-4a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 8 9.5zm8 8a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 16 17.5zm0-4a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 16 13.5zm0-4a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 16 9.5z"/>|
    )
  end

  @doc """
  Renders the `image` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.image />
  <Boxicons.image class="w-4 h-4" />
  <Boxicons.image solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def image(assigns) do
    svg(
      assigns,
      ~S|<path d="m10.499 14-1.5-2-3 4h12l-4.5-6z"/><path d="M19.999 4h-16c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm-16 14V6h16l.002 12H3.999z"/>|,
      ~S|<path d="M19.999 4h-16c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm-13.5 3a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3zm5.5 10h-7l4-5 1.5 2 3-4 5.5 7h-7z"/>|
    )
  end

  @doc """
  Renders the `shield_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shield_minus />
  <Boxicons.shield_minus class="w-4 h-4" />
  <Boxicons.shield_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def shield_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="m20.41 6.11-8-4a.94.94 0 0 0-.89 0l-8 4A1 1 0 0 0 3 6.9c0 .11-1 10.77 8.59 15a1 1 0 0 0 .41.1.93.93 0 0 0 .4-.09C21.92 17.67 21 7 21 6.9a1 1 0 0 0-.59-.79zM12 19.9C5.2 16.63 4.88 9.64 4.93 7.63l7-3.51 7 3.51c.13 2.01-.19 9-6.93 12.27z"/><path d="M8 11h8v2H8z"/>|,
      ~S|<path d="m20.43 5.76-8-3.56a1 1 0 0 0-.82 0l-8 3.56a1 1 0 0 0-.59.9c0 2.37.44 10.8 8.51 15.11a1 1 0 0 0 1 0c8-4.3 8.58-12.71 8.57-15.1a1 1 0 0 0-.67-.91zm-4.43 7H8v-2h8z"/>|
    )
  end

  @doc """
  Renders the `train` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.train />
  <Boxicons.train class="w-4 h-4" />
  <Boxicons.train solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def train(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.87 3.34A3.55 3.55 0 0 0 16.38 2H7.62a3.47 3.47 0 0 0-2.5 1.35A4.32 4.32 0 0 0 4 6v12a1 1 0 0 0 1 1h2l-2 3h2.32L8 21h8l.68 1H19l-2-3h2a1 1 0 0 0 1-1V6a4.15 4.15 0 0 0-1.13-2.66zM7.62 4h8.72a1.77 1.77 0 0 1 1 .66 3.25 3.25 0 0 1 .25.34H6.39a2.3 2.3 0 0 1 .25-.35A1.65 1.65 0 0 1 7.62 4zM6 8V7h12v3H6zm12 9H6v-5h12z"/>|,
      ~S|<path d="M16.375 2H7.621c-.224 0-1.399.065-2.503 1.351C4.031 4.616 4 5.862 4 6v11a2 2 0 0 0 2 2h1l-2 3h2.353l.667-1h8l.677 1H19l-2-3h1a2 2 0 0 0 2-2V6c.001-.188-.032-1.434-1.129-2.665C17.715 2.037 16.509 2 16.375 2zM10 4h4v2h-4V4zM7.5 17a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 7.5 17zm9 0a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 16.5 17zm1.5-5H6V8h12v4z"/>|
    )
  end

  @doc """
  Renders the `info_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.info_circle />
  <Boxicons.info_circle class="w-4 h-4" />
  <Boxicons.info_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def info_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M11 11h2v6h-2zm0-4h2v2h-2z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm1 15h-2v-6h2v6zm0-8h-2V7h2v2z"/>|
    )
  end

  @doc """
  Renders the `bus_school` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bus_school />
  <Boxicons.bus_school class="w-4 h-4" />
  <Boxicons.bus_school solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bus_school(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.259 11.948A.986.986 0 0 0 22 11V8a.999.999 0 0 0-.996-.999V6H21c0-2.206-1.794-4-4-4H7C4.794 2 3 3.794 3 6v1a1 1 0 0 0-1 1v3c0 .461.317.832.742.948a3.953 3.953 0 0 0-.741 2.298l.004 3.757c.001.733.404 1.369.995 1.716V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1h12v1a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1.274a2.02 2.02 0 0 0 .421-.313c.377-.378.585-.881.584-1.415l-.004-3.759a3.966 3.966 0 0 0-.742-2.291zM5 18h-.995l-.004-3.757c-.001-.459.161-.89.443-1.243h15.111c.283.353.445.783.446 1.242L20.006 18H5zm6.004-10v3H5V8h6.004zM19 11h-5.996V8H19v3zM7 4h10c1.103 0 2 .897 2 2h-4V5H9v1H5c0-1.103.897-2 2-2z"/>|,
      ~S|<path d="M21 11.597V11h1V8h-1V6c0-2.206-1.794-4-4-4H7C4.794 2 3 3.794 3 6v2H2v3h1v.597a3.97 3.97 0 0 0-.999 2.648l.004 3.758c.001.733.404 1.369.995 1.716V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1h12v1a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1.274a2.02 2.02 0 0 0 .421-.313c.377-.378.585-.881.584-1.415l-.004-3.759A3.965 3.965 0 0 0 21 11.597zM8 4h8v2H8V4zM6.5 17a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 6.5 17zm4.5-5H5V8h6v4zm6.5 5a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 17.5 17zm1.5-5h-6V8h6v4z"/>|
    )
  end

  @doc """
  Renders the `volume` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.volume />
  <Boxicons.volume class="w-4 h-4" />
  <Boxicons.volume solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def volume(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 17h2.697l5.748 3.832a1.004 1.004 0 0 0 1.027.05A1 1 0 0 0 14 20V4a1 1 0 0 0-1.554-.832L6.697 7H4c-1.103 0-2 .897-2 2v6c0 1.103.897 2 2 2zm0-8h3c.033 0 .061-.016.093-.019a1.027 1.027 0 0 0 .379-.116c.026-.014.057-.017.082-.033L12 5.868v12.264l-4.445-2.964c-.025-.018-.056-.02-.082-.033a.977.977 0 0 0-.382-.116C7.059 15.016 7.032 15 7 15H4V9z"/>|,
      ~S|<path d="M4 17h2.697L14 21.868V2.132L6.697 7H4c-1.103 0-2 .897-2 2v6c0 1.103.897 2 2 2z"/>|
    )
  end

  @doc """
  Renders the `gift` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.gift />
  <Boxicons.gift class="w-4 h-4" />
  <Boxicons.gift solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def gift(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 7h-1.209A4.92 4.92 0 0 0 19 5.5C19 3.57 17.43 2 15.5 2c-1.622 0-2.705 1.482-3.404 3.085C11.407 3.57 10.269 2 8.5 2 6.57 2 5 3.57 5 5.5c0 .596.079 1.089.209 1.5H4c-1.103 0-2 .897-2 2v2c0 1.103.897 2 2 2v7c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-7c1.103 0 2-.897 2-2V9c0-1.103-.897-2-2-2zm-4.5-3c.827 0 1.5.673 1.5 1.5C17 7 16.374 7 16 7h-2.478c.511-1.576 1.253-3 1.978-3zM7 5.5C7 4.673 7.673 4 8.5 4c.888 0 1.714 1.525 2.198 3H8c-.374 0-1 0-1-1.5zM4 9h7v2H4V9zm2 11v-7h5v7H6zm12 0h-5v-7h5v7zm-5-9V9.085L13.017 9H20l.001 2H13z"/>|,
      ~S|<path d="M5 12H4v8a2 2 0 0 0 2 2h5V12H5zm13 0h-5v10h5a2 2 0 0 0 2-2v-8h-2zm.791-5A4.92 4.92 0 0 0 19 5.5C19 3.57 17.43 2 15.5 2c-1.622 0-2.705 1.482-3.404 3.085C11.407 3.57 10.269 2 8.5 2 6.57 2 5 3.57 5 5.5c0 .596.079 1.089.209 1.5H2v4h9V9h2v2h9V7h-3.209zM7 5.5C7 4.673 7.673 4 8.5 4c.888 0 1.714 1.525 2.198 3H8c-.374 0-1 0-1-1.5zM15.5 4c.827 0 1.5.673 1.5 1.5C17 7 16.374 7 16 7h-2.477c.51-1.576 1.251-3 1.977-3z"/>|
    )
  end

  @doc """
  Renders the `chip` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chip />
  <Boxicons.chip class="w-4 h-4" />
  <Boxicons.chip solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chip(assigns) do
    svg(
      assigns,
      ~S|<path d="M9 9h6v6H9z"/><path d="M20 6c0-1.103-.897-2-2-2h-2V2h-2v2h-4V2H8v2H6c-1.103 0-2 .897-2 2v2H2v2h2v4H2v2h2v2c0 1.103.897 2 2 2h2v2h2v-2h4v2h2v-2h2c1.103 0 2-.897 2-2v-2h2v-2h-2v-4h2V8h-2V6zM6 18V6h12l.002 12H6z"/>|,
      ~S|<path d="M19 7a2 2 0 0 0-2-2h-1V2h-2v3h-4V2H8v3H7a2 2 0 0 0-2 2v1H2v2h3v4H2v2h3v1a2 2 0 0 0 2 2h1v3h2v-3h4v3h2v-3h1a2 2 0 0 0 2-2v-1h3v-2h-3v-4h3V8h-3V7zm-4 8H9V9h6v6z"/>|
    )
  end

  @doc """
  Renders the `hdd` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hdd />
  <Boxicons.hdd class="w-4 h-4" />
  <Boxicons.hdd solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def hdd(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.983 13.821-1.851-10.18A1.998 1.998 0 0 0 18.165 2H5.835a2 2 0 0 0-1.968 1.643l-1.85 10.178.019.003c-.012.06-.036.114-.036.176v5c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2v-5c0-.063-.024-.116-.035-.176l.018-.003zM5.835 4h12.331l1.637 9H4.198l1.637-9zM4 19v-4h16l.002 4H4z"/><path d="M17 16h2v2h-2zm-3 0h2v2h-2z"/>|,
      ~S|<path d="M20 13H4a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2zm-4 5h-2v-2h2v2zm4 0h-2v-2h2v2zm.775-7H21l-1.652-7.434A2 2 0 0 0 17.396 2H6.604a2 2 0 0 0-1.952 1.566L3 11h17.775z"/>|
    )
  end

  @doc """
  Renders the `band_aid` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.band_aid />
  <Boxicons.band_aid class="w-4 h-4" />
  <Boxicons.band_aid solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def band_aid(assigns) do
    svg(
      assigns,
      ~S|<path d="M8.111 21.889a5.962 5.962 0 0 0 4.242-1.757l7.778-7.778a6.007 6.007 0 0 0 0-8.485 5.965 5.965 0 0 0-4.243-1.757 5.962 5.962 0 0 0-4.242 1.757l-7.778 7.778a6.007 6.007 0 0 0 0 8.485 5.965 5.965 0 0 0 4.243 1.757zm-2.829-8.828 7.778-7.778a3.976 3.976 0 0 1 2.828-1.171c1.069 0 2.073.416 2.829 1.171a4.006 4.006 0 0 1 0 5.657l-7.778 7.778a3.976 3.976 0 0 1-2.828 1.171 3.977 3.977 0 0 1-2.829-1.171 4.008 4.008 0 0 1 0-5.657z"/>|,
      ~S|<path d="m11.646 3.868-7.778 7.778a6.007 6.007 0 0 0 0 8.485 5.984 5.984 0 0 0 4.242 1.754 5.984 5.984 0 0 0 4.243-1.754l7.778-7.778a6.007 6.007 0 0 0 0-8.485 6.008 6.008 0 0 0-8.485 0zM9 13a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm3 3a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm0-6a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm3 3a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>|
    )
  end

  @doc """
  Renders the `bath` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bath />
  <Boxicons.bath class="w-4 h-4" />
  <Boxicons.bath solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bath(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 10H7V7c0-1.103.897-2 2-2s2 .897 2 2h2c0-2.206-1.794-4-4-4S5 4.794 5 7v3H3a1 1 0 0 0-1 1v2c0 2.606 1.674 4.823 4 5.65V22h2v-3h8v3h2v-3.35c2.326-.827 4-3.044 4-5.65v-2a1 1 0 0 0-1-1zm-1 3c0 2.206-1.794 4-4 4H8c-2.206 0-4-1.794-4-4v-1h16v1z"/>|,
      ~S|<path d="M21 10H7V7.113c0-.997.678-1.923 1.661-2.085A2.003 2.003 0 0 1 11 7h2a4.003 4.003 0 0 0-4.398-3.98C6.523 3.222 5 5.089 5 7.178V10H3a1 1 0 0 0-1 1v2c0 2.606 1.674 4.823 4 5.65V22h2v-3h8v3h2v-3.35c2.326-.827 4-3.044 4-5.65v-2a1 1 0 0 0-1-1z"/>|
    )
  end

  @doc """
  Renders the `laugh` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.laugh />
  <Boxicons.laugh class="w-4 h-4" />
  <Boxicons.laugh solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def laugh(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M12 18c4 0 5-4 5-4H7s1 4 5 4zm5.555-9.168-1.109-1.664-3 2a1.001 1.001 0 0 0 .108 1.727l4 2 .895-1.789-2.459-1.229 1.565-1.045zm-6.557 1.23a1 1 0 0 0-.443-.894l-3-2-1.11 1.664 1.566 1.044-2.459 1.229.895 1.789 4-2a.998.998 0 0 0 .551-.832z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-6.447 9.105 2.459-1.229-1.567-1.044 1.109-1.664 3 2a1 1 0 0 1-.108 1.727l-4 2-.893-1.79zM12 18c-4 0-5-4-5-4h10s-1 4-5 4zm5.553-5.105-4-2a1 1 0 0 1-.108-1.727l3-2 1.109 1.664-1.566 1.044 2.459 1.229-.894 1.79z"/>|
    )
  end

  @doc """
  Renders the `envelope_open` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.envelope_open />
  <Boxicons.envelope_open class="w-4 h-4" />
  <Boxicons.envelope_open solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def envelope_open(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.555 8.168-9-6a1 1 0 0 0-1.109 0l-9 6A1 1 0 0 0 2 9v11c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V9c0-.334-.167-.646-.445-.832zM12 4.202 19.197 9 12 13.798 4.803 9 12 4.202zM4 20v-9.131l7.445 4.963a1 1 0 0 0 1.11 0L20 10.869 19.997 20H4z"/>|,
      ~S|<path d="m21.555 8.168-9-6a1 1 0 0 0-1.109 0l-9 6A.995.995 0 0 0 2.004 9H2v11a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V9h-.004a.997.997 0 0 0-.441-.832zM20 12.7 12 17l-8-4.3v-2.403l8 4.299 8-4.299V12.7z"/>|
    )
  end

  @doc """
  Renders the `book_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.book_alt />
  <Boxicons.book_alt class="w-4 h-4" />
  <Boxicons.book_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def book_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 2H6c-1.206 0-3 .799-3 3v14c0 2.201 1.794 3 3 3h15v-2H6.012C5.55 19.988 5 19.806 5 19s.55-.988 1.012-1H21V4c0-1.103-.897-2-2-2zm0 14H5V5c0-.806.55-.988 1-1h13v12z"/>|,
      ~S|<path d="M3 5v14c0 2.201 1.794 3 3 3h15v-2H6.012C5.55 19.988 5 19.806 5 19s.55-.988 1.012-1H21V4c0-1.103-.897-2-2-2H6c-1.206 0-3 .799-3 3z"/>|
    )
  end

  @doc """
  Renders the `analyse` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.analyse />
  <Boxicons.analyse class="w-4 h-4" />
  <Boxicons.analyse solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def analyse(assigns) do
    svg(
      assigns,
      ~S|<path d="M2 12h2a7.986 7.986 0 0 1 2.337-5.663 7.91 7.91 0 0 1 2.542-1.71 8.12 8.12 0 0 1 6.13-.041A2.488 2.488 0 0 0 17.5 7C18.886 7 20 5.886 20 4.5S18.886 2 17.5 2c-.689 0-1.312.276-1.763.725-2.431-.973-5.223-.958-7.635.059a9.928 9.928 0 0 0-3.18 2.139 9.92 9.92 0 0 0-2.14 3.179A10.005 10.005 0 0 0 2 12zm17.373 3.122c-.401.952-.977 1.808-1.71 2.541s-1.589 1.309-2.542 1.71a8.12 8.12 0 0 1-6.13.041A2.488 2.488 0 0 0 6.5 17C5.114 17 4 18.114 4 19.5S5.114 22 6.5 22c.689 0 1.312-.276 1.763-.725A9.965 9.965 0 0 0 12 22a9.983 9.983 0 0 0 9.217-6.102A9.992 9.992 0 0 0 22 12h-2a7.993 7.993 0 0 1-.627 3.122z"/><path d="M12 7.462c-2.502 0-4.538 2.036-4.538 4.538S9.498 16.538 12 16.538s4.538-2.036 4.538-4.538S14.502 7.462 12 7.462zm0 7.076c-1.399 0-2.538-1.139-2.538-2.538S10.601 9.462 12 9.462s2.538 1.139 2.538 2.538-1.139 2.538-2.538 2.538z"/>|,
      ~S|<path d="M4.626 8.878a7.937 7.937 0 0 1 1.71-2.541 7.92 7.92 0 0 1 2.542-1.71 8.12 8.12 0 0 1 6.13-.041A2.49 2.49 0 0 0 17.5 7C18.886 7 20 5.886 20 4.5S18.886 2 17.5 2c-.689 0-1.312.276-1.763.725-2.431-.973-5.223-.958-7.635.059-1.19.5-2.26 1.22-3.18 2.139A9.98 9.98 0 0 0 2 12h2c0-1.086.211-2.136.626-3.122zm14.747 6.244c-.401.952-.977 1.808-1.71 2.541s-1.589 1.309-2.542 1.71a8.12 8.12 0 0 1-6.13.041A2.488 2.488 0 0 0 6.5 17C5.114 17 4 18.114 4 19.5S5.114 22 6.5 22c.689 0 1.312-.276 1.763-.725A9.973 9.973 0 0 0 12 22a9.983 9.983 0 0 0 9.217-6.102A9.992 9.992 0 0 0 22 12h-2a7.993 7.993 0 0 1-.627 3.122z"/><path d="M12 7.462c-2.502 0-4.538 2.036-4.538 4.538S9.498 16.538 12 16.538c2.502 0 4.538-2.036 4.538-4.538S14.502 7.462 12 7.462z"/>|
    )
  end

  @doc """
  Renders the `ball` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.ball />
  <Boxicons.ball class="w-4 h-4" />
  <Boxicons.ball solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def ball(assigns) do
    svg(
      assigns,
      ~S|<path d="M3.76 21a17.68 17.68 0 0 0 4 .43 13.89 13.89 0 0 0 9.93-3.69C23 12.37 21.06 4.11 21 3.76a1 1 0 0 0-.76-.76 17.91 17.91 0 0 0-4-.43 13.82 13.82 0 0 0-9.96 3.71C.94 11.63 2.94 19.89 3 20.24a1 1 0 0 0 .76.76zM7.7 7.7a11.86 11.86 0 0 1 8.49-3.1 17.57 17.57 0 0 1 3 .25c.31 1.87.91 7.67-2.86 11.44a11.91 11.91 0 0 1-8.55 3.11 17.16 17.16 0 0 1-2.93-.25c-.32-1.88-.92-7.67 2.85-11.45z"/><path d="m7.29 15.29 1.42 1.42 1.79-1.79 1.79 1.79 1.42-1.42-1.8-1.79 1.59-1.59 1.79 1.8 1.42-1.42-1.8-1.79 1.8-1.79-1.42-1.42-1.79 1.8-1.79-1.8-1.42 1.42 1.8 1.79-1.59 1.59-1.79-1.8-1.42 1.42 1.8 1.79z"/>|,
      ~S|<path d="M20.247 3.034c-.069-.018-1.742-.433-4.052-.433-2.842 0-6.868.64-9.91 3.687-5.34 5.349-3.34 13.61-3.252 13.96a1 1 0 0 0 .728.726c.069.018 1.726.426 4.018.426 2.849 0 6.884-.641 9.932-3.688 5.335-5.335 3.351-13.6 3.264-13.949a1.005 1.005 0 0 0-.728-.729zm-3.537 9.262-1.414 1.414-1.793-1.792-1.586 1.586 1.792 1.793-1.414 1.414-1.792-1.793-1.793 1.793-1.414-1.414 1.793-1.793-1.793-1.794 1.414-1.414 1.793 1.794 1.586-1.586-1.794-1.793 1.414-1.414 1.794 1.793 1.793-1.793 1.414 1.414-1.793 1.793 1.793 1.792z"/>|
    )
  end

  @doc """
  Renders the `customize` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.customize />
  <Boxicons.customize class="w-4 h-4" />
  <Boxicons.customize solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def customize(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 11h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1zm1-6h4v4H5V5zm15-2h-6a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zm-1 6h-4V5h4v4zm-9 12a1 1 0 0 0 1-1v-6a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6zm-5-6h4v4H5v-4zm13-1h-2v2h-2v2h2v2h2v-2h2v-2h-2z"/>|,
      ~S|<path d="M10 3H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zm10 0h-6a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zM10 13H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-6a1 1 0 0 0-1-1zm8 1h-2v2h-2v2h2v2h2v-2h2v-2h-2z"/>|
    )
  end

  @doc """
  Renders the `down_arrow_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.down_arrow_alt />
  <Boxicons.down_arrow_alt class="w-4 h-4" />
  <Boxicons.down_arrow_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def down_arrow_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="m18.707 12.707-1.414-1.414L13 15.586V6h-2v9.586l-4.293-4.293-1.414 1.414L12 19.414z"/>|,
      ~S|<path d="M18 12h-5V6h-2v6H6l6 7z"/>|
    )
  end

  @doc """
  Renders the `calendar_edit` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.calendar_edit />
  <Boxicons.calendar_edit class="w-4 h-4" />
  <Boxicons.calendar_edit solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def calendar_edit(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 4h-3V2h-2v2h-4V2H8v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zM5 20V7h14V6l.002 14H5z"/><path d="m15.628 12.183-1.8-1.799 1.37-1.371 1.8 1.799zm-7.623 4.018V18h1.799l4.976-4.97-1.799-1.799z"/>|,
      ~S|<path d="M5 22h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zm4.799-2.013H8v-1.799l4.977-4.97 1.799 1.799-4.977 4.97zm5.824-5.817-1.799-1.799L15.196 11l1.799 1.799-1.372 1.371zM5 7h14v2H5V7z"/>|
    )
  end

  @doc """
  Renders the `camera_home` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.camera_home />
  <Boxicons.camera_home class="w-4 h-4" />
  <Boxicons.camera_home solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def camera_home(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.125 2H5.875A1.877 1.877 0 0 0 4 3.875v12.25C4 17.159 4.841 18 5.875 18H11v2H7v2h10v-2h-4v-2h5.125A1.877 1.877 0 0 0 20 16.125V3.875A1.877 1.877 0 0 0 18.125 2zM18 16H6V4h12v12z"/><path d="M12 14c2.206 0 4-1.794 4-4s-1.794-4-4-4-4 1.794-4 4 1.794 4 4 4zm0-6c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2z"/>|,
      ~S|<path d="M18.125 2H5.875A1.877 1.877 0 0 0 4 3.875v12.25C4 17.159 4.841 18 5.875 18H11v2H7v2h10v-2h-4v-2h5.125A1.877 1.877 0 0 0 20 16.125V3.875A1.877 1.877 0 0 0 18.125 2zM12 15c-2.757 0-5-2.243-5-5s2.243-5 5-5 5 2.243 5 5-2.243 5-5 5z"/>|
    )
  end

  @doc """
  Renders the `up_arrow_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.up_arrow_circle />
  <Boxicons.up_arrow_circle class="w-4 h-4" />
  <Boxicons.up_arrow_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def up_arrow_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12.001 1.993C6.486 1.994 2 6.48 2 11.994c.001 5.514 4.487 10 10 10 5.515 0 10.001-4.486 10.001-10s-4.486-10-10-10.001zM12 19.994c-4.41 0-7.999-3.589-8-8 0-4.411 3.589-8 8.001-8.001 4.411.001 8 3.59 8 8.001s-3.589 8-8.001 8z"/><path d="m12.001 8.001-4.005 4.005h3.005V16h2v-3.994h3.004z"/>|,
      ~S|<path d="M12 22c5.514 0 10-4.486 10-10S17.514 2 12 2 2 6.486 2 12s4.486 10 10 10zm0-15 5 5h-4v5h-2v-5H7l5-5z"/>|
    )
  end

  @doc """
  Renders the `cart_download` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cart_download />
  <Boxicons.cart_download class="w-4 h-4" />
  <Boxicons.cart_download solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cart_download(assigns) do
    svg(
      assigns,
      ~S|<path d="m14 13.99 4-5h-3v-4h-2v4h-3l4 5z"/><path d="M17.31 15h-6.64L6.18 4.23A2 2 0 0 0 4.33 3H2v2h2.33l4.75 11.38A1 1 0 0 0 10 17h8a1 1 0 0 0 .93-.64L21.76 9h-2.14z"/>|,
      ~S|<path d="M21 7H7.334L6.18 4.23A1.995 1.995 0 0 0 4.333 3H2v2h2.334l4.743 11.385c.155.372.52.615.923.615h8c.417 0 .79-.259.937-.648l3-8A1.003 1.003 0 0 0 21 7zm-7 8-3-3h2V9h2v3h2l-3 3z"/>|
    )
  end

  @doc """
  Renders the `door_open` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.door_open />
  <Boxicons.door_open class="w-4 h-4" />
  <Boxicons.door_open solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def door_open(assigns) do
    svg(
      assigns,
      ~S|<path d="M10.385 21.788a.997.997 0 0 0 .857.182l8-2A.999.999 0 0 0 20 19V5a1 1 0 0 0-.758-.97l-8-2A1.003 1.003 0 0 0 10 3v1H6a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h4v1c0 .308.142.599.385.788zM12 4.281l6 1.5v12.438l-6 1.5V4.281zM7 18V6h3v12H7z"/><path d="M14.242 13.159c.446-.112.758-.512.758-.971v-.377a1 1 0 1 0-2 .001v.377a1 1 0 0 0 1.242.97z"/>|,
      ~S|<path d="M5 5v14a1 1 0 0 0 1 1h3v-2H7V6h2V4H6a1 1 0 0 0-1 1zm14.242-.97-8-2A1 1 0 0 0 10 3v18a.998.998 0 0 0 1.242.97l8-2A1 1 0 0 0 20 19V5a1 1 0 0 0-.758-.97zM15 12.188a1.001 1.001 0 0 1-2 0v-.377a1 1 0 1 1 2 .001v.376z"/>|
    )
  end

  @doc """
  Renders the `slideshow` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.slideshow />
  <Boxicons.slideshow class="w-4 h-4" />
  <Boxicons.slideshow solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def slideshow(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h7v3H8v2h8v-2h-3v-3h7c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM4 15V5h16l.001 10H4z"/><path d="m10 13 5-3-5-3z"/>|,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h7v3H8v2h8v-2h-3v-3h7c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM10 13V7l5 3-5 3z"/>|
    )
  end

  @doc """
  Renders the `volume_full` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.volume_full />
  <Boxicons.volume_full class="w-4 h-4" />
  <Boxicons.volume_full solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def volume_full(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 21c3.527-1.547 5.999-4.909 5.999-9S19.527 4.547 16 3v2c2.387 1.386 3.999 4.047 3.999 7S18.387 17.614 16 19v2z"/><path d="M16 7v10c1.225-1.1 2-3.229 2-5s-.775-3.9-2-5zM4 17h2.697l5.748 3.832a1.004 1.004 0 0 0 1.027.05A1 1 0 0 0 14 20V4a1 1 0 0 0-1.554-.832L6.697 7H4c-1.103 0-2 .897-2 2v6c0 1.103.897 2 2 2zm0-8h3c.033 0 .061-.016.093-.019a1.027 1.027 0 0 0 .38-.116c.026-.015.057-.017.082-.033L12 5.868v12.264l-4.445-2.964c-.025-.017-.056-.02-.082-.033a.986.986 0 0 0-.382-.116C7.059 15.016 7.032 15 7 15H4V9z"/>|,
      ~S|<path d="M16 21c3.527-1.547 5.999-4.909 5.999-9S19.527 4.547 16 3v2c2.387 1.386 3.999 4.047 3.999 7S18.387 17.614 16 19v2z"/><path d="M16 7v10c1.225-1.1 2-3.229 2-5s-.775-3.9-2-5zM4 17h2.697L14 21.868V2.132L6.697 7H4c-1.103 0-2 .897-2 2v6c0 1.103.897 2 2 2z"/>|
    )
  end

  @doc """
  Renders the `tone` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.tone />
  <Boxicons.tone class="w-4 h-4" />
  <Boxicons.tone solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def tone(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-1 9H4.069a7.965 7.965 0 0 1 .52-2H11v2zm0 4H4.589a7.965 7.965 0 0 1-.52-2H11v2zm0-10.931V7H5.765A7.996 7.996 0 0 1 11 4.069zM5.765 17H11v2.931A7.996 7.996 0 0 1 5.765 17zM13 19.931V4.069c3.939.495 7 3.858 7 7.931s-3.061 7.436-7 7.931z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-1 9H4.069a7.965 7.965 0 0 1 .52-2H11v2zm0 4H4.589a7.965 7.965 0 0 1-.52-2H11v2zm0-10.931V7H5.765A7.996 7.996 0 0 1 11 4.069zM5.765 17H11v2.931A7.996 7.996 0 0 1 5.765 17z"/>|
    )
  end

  @doc """
  Renders the `crown` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.crown />
  <Boxicons.crown class="w-4 h-4" />
  <Boxicons.crown solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def crown(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.219 3.375 8 7.399 4.781 3.375A1.002 1.002 0 0 0 3 4v15c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V4a1.002 1.002 0 0 0-1.781-.625L16 7.399l-3.219-4.024c-.381-.474-1.181-.474-1.562 0zM5 19v-2h14.001v2H5zm10.219-9.375c.381.475 1.182.475 1.563 0L19 6.851 19.001 15H5V6.851l2.219 2.774c.381.475 1.182.475 1.563 0L12 5.601l3.219 4.024z"/>|,
      ~S|<path d="m21 2-5 5-4-5-4 5-5-5v13h18zM5 21h14a2 2 0 0 0 2-2v-2H3v2a2 2 0 0 0 2 2z"/>|
    )
  end

  @doc """
  Renders the `message_alt_edit` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_alt_edit />
  <Boxicons.message_alt_edit class="w-4 h-4" />
  <Boxicons.message_alt_edit solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_alt_edit(assigns) do
    svg(
      assigns,
      ~S|<path d="M8.586 18 12 21.414 15.414 18H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.586zM5 4h14v12h-4.414L12 18.586 9.414 16H5V4z"/><path d="m12.479 7.219-4.977 4.969v1.799h1.8l4.975-4.969zm2.219-2.22 1.8 1.8-1.37 1.37-1.8-1.799z"/>|,
      ~S|<path d="M5 2c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.5l3.5 4 3.5-4H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5zm4.302 11.987h-1.8v-1.799l4.978-4.97 1.798 1.799-4.976 4.97zm5.823-5.817-1.798-1.799L14.698 5l1.8 1.799-1.373 1.371z"/>|
    )
  end

  @doc """
  Renders the `microchip` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.microchip />
  <Boxicons.microchip class="w-4 h-4" />
  <Boxicons.microchip solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def microchip(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 2H8c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h8c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM8 20V4h8l.001 16H8zM3 7h2V5H3v.5H2v1h1zm18-2h-2v2h2v-.5h1v-1h-1zM3 11h2V9H3v.5H2v1h1zm18-2h-2v2h2v-.5h1v-1h-1zM3 15h2v-2H3v.5H2v1h1zm18-2h-2v2h2v-.5h1v-1h-1zM3 19h2v-2H3v.5H2v1h1zm18-2h-2v2h2v-.5h1v-1h-1z"/>|,
      ~S|<path d="M7.999 22h8c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2h-8c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2zm-5-15h2V5h-2v.5h-1v1h1zm18-2h-2v2h2v-.5h1v-1h-1zm-18 6h2V9h-2v.5h-1v1h1zm18-2h-2v2h2v-.5h1v-1h-1zm-18 6h2v-2h-2v.5h-1v1h1zm18-2h-2v2h2v-.5h1v-1h-1zm-18 6h2v-2h-2v.5h-1v1h1zm18-2h-2v2h2v-.5h1v-1h-1z"/>|
    )
  end

  @doc """
  Renders the `objects_vertical_center` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.objects_vertical_center />
  <Boxicons.objects_vertical_center class="w-4 h-4" />
  <Boxicons.objects_vertical_center solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def objects_vertical_center(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 7a1 1 0 0 0-1-1h-5a1 1 0 0 0-1 1v4h-2V5a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1v6H2v2h2v6a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1v-6h2v4a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1v-4h2v-2h-2zM9 18H6V6h3zm9-2h-3V8h3z"/>|,
      ~S|<path d="M19 7a1 1 0 0 0-1-1h-4a1 1 0 0 0-1 1v4h-2V5a1 1 0 0 0-1-1H6a1 1 0 0 0-1 1v6H2v2h3v6a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1v-6h2v4a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1v-4h3v-2h-3z"/>|
    )
  end

  @doc """
  Renders the `donate_blood` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.donate_blood />
  <Boxicons.donate_blood class="w-4 h-4" />
  <Boxicons.donate_blood solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def donate_blood(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 21h9.62a3.995 3.995 0 0 0 3.037-1.397l5.102-5.952a1 1 0 0 0-.442-1.6l-1.968-.656a3.043 3.043 0 0 0-2.823.503l-3.185 2.547-.617-1.235A3.98 3.98 0 0 0 9.146 11H4c-1.103 0-2 .897-2 2v6c0 1.103.897 2 2 2zm0-8h5.146c.763 0 1.448.423 1.789 1.105l.447.895H7v2h6.014a.996.996 0 0 0 .442-.11l.003-.001.004-.002h.003l.002-.001h.004l.001-.001c.011.003.003-.001.003-.001.012 0 .002-.001.002-.001h.001l.002-.001.003-.001.002-.001.002-.001.003-.001.002-.001.002-.001.003-.002.002-.001.002-.001.003-.001.002-.001h.001l.002-.001h.001l.002-.001.002-.001c.011-.001.003-.001.003-.001l.002-.001a.915.915 0 0 0 .11-.078l4.146-3.317c.261-.208.623-.273.94-.167l.557.186-4.133 4.823a2.029 2.029 0 0 1-1.52.688H4v-6zm9.761-10.674C13.3 2.832 11 5.457 11 7.5c0 1.93 1.57 3.5 3.5 3.5S18 9.43 18 7.5c0-2.043-2.3-4.668-2.761-5.174-.379-.416-1.099-.416-1.478 0zM16 7.5c0 .827-.673 1.5-1.5 1.5S13 8.327 13 7.5c0-.708.738-1.934 1.5-2.934.762 1 1.5 2.226 1.5 2.934z"/>|,
      ~S|<path d="M17.726 13.02 14 16H9v-1h4.065a.5.5 0 0 0 .416-.777l-.888-1.332A1.995 1.995 0 0 0 10.93 12H3a1 1 0 0 0-1 1v6a2 2 0 0 0 2 2h9.639a3 3 0 0 0 2.258-1.024L22 13l-1.452-.484a2.998 2.998 0 0 0-2.822.504zM15.403 12a3 3 0 0 0 3-3c0-2.708-3-6-3-6s-3 3.271-3 6a3 3 0 0 0 3 3z"/>|
    )
  end

  @doc """
  Renders the `checkbox_checked` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.checkbox_checked />
  <Boxicons.checkbox_checked class="w-4 h-4" />
  <Boxicons.checkbox_checked solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def checkbox_checked(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 5c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h10c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2H7zm0 12V7h10l.002 10H7z"/><path d="M10.996 12.556 9.7 11.285l-1.4 1.43 2.704 2.647 4.699-4.651-1.406-1.422z"/>|,
      ~S|<path d="M7 5a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2H7zm4 10.414-2.707-2.707 1.414-1.414L11 12.586l3.793-3.793 1.414 1.414L11 15.414z"/>|
    )
  end

  @doc """
  Renders the `pie_chart_alt_2` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pie_chart_alt_2 />
  <Boxicons.pie_chart_alt_2 class="w-4 h-4" />
  <Boxicons.pie_chart_alt_2 solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def pie_chart_alt_2(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm7.931 9H13V4.069A8.008 8.008 0 0 1 19.931 11zM4 12c0-4.072 3.061-7.436 7-7.931V12a.996.996 0 0 0 .111.438c.015.03.022.063.041.093l4.202 6.723A7.949 7.949 0 0 1 12 20c-4.411 0-8-3.589-8-8zm13.052 6.196L13.805 13h6.126a7.992 7.992 0 0 1-2.879 5.196z"/>|,
      ~S|<path d="M13 2.051V11h8.949c-.47-4.717-4.232-8.479-8.949-8.949zm4.969 17.953c2.189-1.637 3.694-4.14 3.98-7.004h-8.183l4.203 7.004z"/><path d="M11 12V2.051C5.954 2.555 2 6.824 2 12c0 5.514 4.486 10 10 10a9.93 9.93 0 0 0 4.255-.964s-5.253-8.915-5.254-9.031A.02.02 0 0 0 11 12z"/>|
    )
  end

  @doc """
  Renders the `server` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.server />
  <Boxicons.server class="w-4 h-4" />
  <Boxicons.server solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def server(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2zM4 9V5h16v4zm16 4H4a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2zM4 19v-4h16v4z"/><path d="M17 6h2v2h-2zm-3 0h2v2h-2zm3 10h2v2h-2zm-3 0h2v2h-2z"/>|,
      ~S|<path d="M20 3H4a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2zm-5 5h-2V6h2zm4 0h-2V6h2zm1 5H4a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2zm-5 5h-2v-2h2zm4 0h-2v-2h2z"/>|
    )
  end

  @doc """
  Renders the `right_arrow_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.right_arrow_alt />
  <Boxicons.right_arrow_alt class="w-4 h-4" />
  <Boxicons.right_arrow_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def right_arrow_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="m11.293 17.293 1.414 1.414L19.414 12l-6.707-6.707-1.414 1.414L15.586 11H6v2h9.586z"/>|,
      ~S|<path d="m19 12-7-6v5H6v2h6v5z"/>|
    )
  end

  @doc """
  Renders the `briefcase_alt_2` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.briefcase_alt_2 />
  <Boxicons.briefcase_alt_2 class="w-4 h-4" />
  <Boxicons.briefcase_alt_2 solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def briefcase_alt_2(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 6h-3V4c0-1.103-.897-2-2-2H9c-1.103 0-2 .897-2 2v2H4c-1.103 0-2 .897-2 2v11c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2zm-5-2v2H9V4h6zM4 8h16v4h-3v-2h-2v2H9v-2H7v2H4V8zm0 11v-5h3v2h2v-2h6v2h2v-2h3.001v5H4z"/>|,
      ~S|<path d="M20 6h-3V4c0-1.103-.897-2-2-2H9c-1.103 0-2 .897-2 2v2H4c-1.103 0-2 .897-2 2v4h5v-2h2v2h6v-2h2v2h5V8c0-1.103-.897-2-2-2zM9 4h6v2H9V4zm8 11h-2v-2H9v2H7v-2H2v6c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2v-6h-5v2z"/>|
    )
  end

  @doc """
  Renders the `memory_card` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.memory_card />
  <Boxicons.memory_card class="w-4 h-4" />
  <Boxicons.memory_card solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def memory_card(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 4v16c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V8a.997.997 0 0 0-.293-.707l-5-5A.996.996 0 0 0 14 2H6c-1.103 0-2 .897-2 2zm14 4.414L18.001 20H6V4h7.586L18 8.414z"/><path d="M8 6h2v4H8zm4 0h2v4h-2z"/>|,
      ~S|<path d="M15 2H6c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V7l-5-5zm-6 8H7V6h2v4zm3 0h-2V6h2v4zm3 0h-2V6h2v4z"/>|
    )
  end

  @doc """
  Renders the `alarm_snooze` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.alarm_snooze />
  <Boxicons.alarm_snooze class="w-4 h-4" />
  <Boxicons.alarm_snooze solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def alarm_snooze(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 4c-4.879 0-9 4.121-9 9s4.121 9 9 9 9-4.121 9-9-4.121-9-9-9zm0 16c-3.794 0-7-3.206-7-7s3.206-7 7-7 7 3.206 7 7-3.206 7-7 7zm8.292-13.292-3.01-3 1.412-1.417 3.01 3zM6.698 3.707l-2.99 2.999L2.29 5.294l2.99-3z"/><path d="M14.832 10.555A1 1 0 0 0 14 9H9v2h3.132l-2.964 4.445A1 1 0 0 0 10 17h5v-2h-3.132l2.964-4.445z"/>|,
      ~S|<path d="m17.284 3.707 1.412-1.416 3.01 3-1.413 1.417zm-10.586 0-2.99 2.999L2.29 5.294l2.99-3zM12 4c-4.878 0-9 4.121-9 9s4.122 9 9 9c4.879 0 9-4.121 9-9s-4.121-9-9-9zm4 13H8.131l4-6H8V9h7.868l-1.035 1.554-.001.001L11.869 15H16v2z"/>|
    )
  end

  @doc """
  Renders the `network_chart` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.network_chart />
  <Boxicons.network_chart class="w-4 h-4" />
  <Boxicons.network_chart solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def network_chart(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3c-1.654 0-3 1.346-3 3 0 .502.136.968.354 1.385l-1.116 1.302A3.976 3.976 0 0 0 13 8c-.739 0-1.425.216-2.02.566L9.566 7.152A3.449 3.449 0 0 0 10 5.5C10 3.57 8.43 2 6.5 2S3 3.57 3 5.5 4.57 9 6.5 9c.601 0 1.158-.166 1.652-.434L9.566 9.98A3.972 3.972 0 0 0 9 12c0 .997.38 1.899.985 2.601l-1.692 1.692.025.025A2.962 2.962 0 0 0 7 16c-1.654 0-3 1.346-3 3s1.346 3 3 3 3-1.346 3-3c0-.476-.121-.919-.318-1.318l.025.025 1.954-1.954c.421.15.867.247 1.339.247 2.206 0 4-1.794 4-4a3.96 3.96 0 0 0-.439-1.785l1.253-1.462c.364.158.764.247 1.186.247 1.654 0 3-1.346 3-3s-1.346-3-3-3zM7 20a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM5 5.5C5 4.673 5.673 4 6.5 4S8 4.673 8 5.5 7.327 7 6.5 7 5 6.327 5 5.5zm8 8.5c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2zm6-7a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>|,
      ~S|<path d="M19.5 3A2.502 2.502 0 0 0 17 5.5c0 .357.078.696.214 1.005l-1.955 2.199A3.977 3.977 0 0 0 13 8c-.74 0-1.424.216-2.019.566L8.707 6.293l-.023.023C8.88 5.918 9 5.475 9 5a3 3 0 1 0-3 3c.475 0 .917-.12 1.316-.316l-.023.023L9.567 9.98A3.956 3.956 0 0 0 9 12c0 .997.38 1.899.985 2.601l-2.577 2.576A2.472 2.472 0 0 0 6.5 17C5.122 17 4 18.121 4 19.5S5.122 22 6.5 22 9 20.879 9 19.5c0-.321-.066-.626-.177-.909l2.838-2.838c.421.15.867.247 1.339.247 2.206 0 4-1.794 4-4 0-.636-.163-1.229-.428-1.764l2.117-2.383c.256.088.526.147.811.147C20.879 8 22 6.879 22 5.5S20.879 3 19.5 3zM13 14c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2z"/>|
    )
  end

  @doc """
  Renders the `message_square_detail` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_square_detail />
  <Boxicons.message_square_detail class="w-4 h-4" />
  <Boxicons.message_square_detail solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_square_detail(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm4 14c0 2.206-1.794 4-4 4H4V8c0-2.206 1.794-4 4-4h8c2.206 0 4 1.794 4 4v8z"/><path d="M7 9h10v2H7zm0 4h7v2H7z"/>|,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm-2 13H7v-2h7v2zm3-4H7V9h10v2z"/>|
    )
  end

  @doc """
  Renders the `meh` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.meh />
  <Boxicons.meh class="w-4 h-4" />
  <Boxicons.meh solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def meh(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M7.974 15H16v2H7.974z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-5 8.5a1.5 1.5 0 1 1 3.001.001A1.5 1.5 0 0 1 7 10.5zm9 6.5H7.974v-2H16v2zm-.507-5.014a1.494 1.494 0 1 1 .001-2.987 1.494 1.494 0 0 1-.001 2.987z"/>|
    )
  end

  @doc """
  Renders the `comment_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.comment_minus />
  <Boxicons.comment_minus class="w-4 h-4" />
  <Boxicons.comment_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def comment_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="M8 9h8v2H8z"/><path d="M20 2H4c-1.103 0-2 .897-2 2v18l5.333-4H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14H6.667L4 18V4h16v12z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v18l4-4h14c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm-4 9H8V9h8v2z"/>|
    )
  end

  @doc """
  Renders the `arrow_from_left` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.arrow_from_left />
  <Boxicons.arrow_from_left class="w-4 h-4" />
  <Boxicons.arrow_from_left solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def arrow_from_left(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 6h2v12H4zm4 7h8.586l-4.293 4.293 1.414 1.414L20.414 12l-6.707-6.707-1.414 1.414L16.586 11H8z"/>|,
      ~S|<path d="M4 6h2v12H4zm10 5H8v2h6v5l6-6-6-6z"/>|
    )
  end

  @doc """
  Renders the `box` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.box />
  <Boxicons.box class="w-4 h-4" />
  <Boxicons.box solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def box(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4a2 2 0 0 0-2 2v2a2 2 0 0 0 1 1.72V19a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V8.72A2 2 0 0 0 22 7V5a2 2 0 0 0-2-2zM4 5h16v2H4zm1 14V9h14v10z"/><path d="M8 11h8v2H8z"/>|,
      ~S|<path d="M2 3h20v4H2zm17 5H3v11a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V8h-2zm-3 6H8v-2h8v2z"/>|
    )
  end

  @doc """
  Renders the `cart_add` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cart_add />
  <Boxicons.cart_add class="w-4 h-4" />
  <Boxicons.cart_add solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cart_add(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 13h2v-2.99h2.99v-2H15V5.03h-2v2.98h-2.99v2H13V13z"/><path d="M10 17h8a1 1 0 0 0 .93-.64L21.76 9h-2.14l-2.31 6h-6.64L6.18 4.23A2 2 0 0 0 4.33 3H2v2h2.33l4.75 11.38A1 1 0 0 0 10 17z"/>|,
      ~S|<path d="M21 7H7.334L6.18 4.23A1.995 1.995 0 0 0 4.333 3H2v2h2.334l4.743 11.385c.155.372.52.615.923.615h8c.417 0 .79-.259.937-.648l3-8A1.003 1.003 0 0 0 21 7zm-4 6h-2v2h-2v-2h-2v-2h2V9h2v2h2v2z"/>|
    )
  end

  @doc """
  Renders the `bell_off` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bell_off />
  <Boxicons.bell_off class="w-4 h-4" />
  <Boxicons.bell_off solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bell_off(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 22a2.98 2.98 0 0 0 2.818-2H9.182A2.98 2.98 0 0 0 12 22zm9-4v-2a.996.996 0 0 0-.293-.707L19 13.586V10c0-3.217-2.185-5.927-5.145-6.742C13.562 2.52 12.846 2 12 2s-1.562.52-1.855 1.258c-1.323.364-2.463 1.128-3.346 2.127L3.707 2.293 2.293 3.707l18 18 1.414-1.414-1.362-1.362A.993.993 0 0 0 21 18zM12 5c2.757 0 5 2.243 5 5v4c0 .266.105.52.293.707L19 16.414V17h-.586L8.207 6.793C9.12 5.705 10.471 5 12 5zm-5.293 9.707A.996.996 0 0 0 7 14v-2.879L5.068 9.189C5.037 9.457 5 9.724 5 10v3.586l-1.707 1.707A.996.996 0 0 0 3 16v2a1 1 0 0 0 1 1h10.879l-2-2H5v-.586l1.707-1.707z"/>|,
      ~S|<path d="M20.345 18.931A.993.993 0 0 0 21 18v-1a.996.996 0 0 0-.293-.707L19 14.586V10c0-3.217-2.185-5.927-5.145-6.742C13.562 2.52 12.846 2 12 2s-1.562.52-1.855 1.258c-1.323.364-2.463 1.128-3.346 2.127L3.707 2.293 2.293 3.707l18 18 1.414-1.414-1.362-1.362zM12 22a2.98 2.98 0 0 0 2.818-2H9.182A2.98 2.98 0 0 0 12 22zM5 10v4.586l-1.707 1.707A.996.996 0 0 0 3 17v1a1 1 0 0 0 1 1h10.879L5.068 9.189C5.037 9.457 5 9.724 5 10z"/>|
    )
  end

  @doc """
  Renders the `cloud_upload` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cloud_upload />
  <Boxicons.cloud_upload class="w-4 h-4" />
  <Boxicons.cloud_upload solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cloud_upload(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 19v-4h3l-4-5-4 5h3v4z"/><path d="M7 19h2v-2H7c-1.654 0-3-1.346-3-3 0-1.404 1.199-2.756 2.673-3.015l.581-.102.192-.558C8.149 8.274 9.895 7 12 7c2.757 0 5 2.243 5 5v1h1c1.103 0 2 .897 2 2s-.897 2-2 2h-3v2h3c2.206 0 4-1.794 4-4a4.01 4.01 0 0 0-3.056-3.888C18.507 7.67 15.56 5 12 5 9.244 5 6.85 6.611 5.757 9.15 3.609 9.792 2 11.82 2 14c0 2.757 2.243 5 5 5z"/>|,
      ~S|<path d="M18.944 11.112C18.507 7.67 15.56 5 12 5 9.244 5 6.85 6.611 5.757 9.15 3.609 9.792 2 11.82 2 14c0 2.757 2.243 5 5 5h11c2.206 0 4-1.794 4-4a4.01 4.01 0 0 0-3.056-3.888zM13 14v3h-2v-3H8l4-5 4 5h-3z"/>|
    )
  end

  @doc """
  Renders the `message_edit` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_edit />
  <Boxicons.message_edit class="w-4 h-4" />
  <Boxicons.message_edit solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_edit(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3v3.767L13.277 18H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14h-7.277L9 18.233V16H4V4h16v12z"/><path d="m13.803 9.189-1.399-1.398-3.869 3.864v1.399h1.399zm.327-3.123 1.398 1.399-1.066 1.066-1.399-1.398z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .894-2 1.992v12.016C2 17.106 2.897 18 4 18h3v4l6.351-4H20c1.103 0 2-.894 2-1.992V3.992A1.998 1.998 0 0 0 20 2zM8.999 14.999H7V13l5.53-5.522 1.998 1.999-5.529 5.522zm6.472-6.464-1.999-1.999 1.524-1.523 1.999 1.999-1.524 1.523z"/>|
    )
  end

  @doc """
  Renders the `star` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.star />
  <Boxicons.star class="w-4 h-4" />
  <Boxicons.star solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def star(assigns) do
    svg(
      assigns,
      ~S|<path d="m6.516 14.323-1.49 6.452a.998.998 0 0 0 1.529 1.057L12 18.202l5.445 3.63a1.001 1.001 0 0 0 1.517-1.106l-1.829-6.4 4.536-4.082a1 1 0 0 0-.59-1.74l-5.701-.454-2.467-5.461a.998.998 0 0 0-1.822 0L8.622 8.05l-5.701.453a1 1 0 0 0-.619 1.713l4.214 4.107zm2.853-4.326a.998.998 0 0 0 .832-.586L12 5.43l1.799 3.981a.998.998 0 0 0 .832.586l3.972.315-3.271 2.944c-.284.256-.397.65-.293 1.018l1.253 4.385-3.736-2.491a.995.995 0 0 0-1.109 0l-3.904 2.603 1.05-4.546a1 1 0 0 0-.276-.94l-3.038-2.962 4.09-.326z"/>|,
      ~S|<path d="M21.947 9.179a1.001 1.001 0 0 0-.868-.676l-5.701-.453-2.467-5.461a.998.998 0 0 0-1.822-.001L8.622 8.05l-5.701.453a1 1 0 0 0-.619 1.713l4.213 4.107-1.49 6.452a1 1 0 0 0 1.53 1.057L12 18.202l5.445 3.63a1.001 1.001 0 0 0 1.517-1.106l-1.829-6.4 4.536-4.082c.297-.268.406-.686.278-1.065z"/>|
    )
  end

  @doc """
  Renders the `share_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.share_alt />
  <Boxicons.share_alt class="w-4 h-4" />
  <Boxicons.share_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def share_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M5.5 15a3.51 3.51 0 0 0 2.36-.93l6.26 3.58a3.06 3.06 0 0 0-.12.85 3.53 3.53 0 1 0 1.14-2.57l-6.26-3.58a2.74 2.74 0 0 0 .12-.76l6.15-3.52A3.49 3.49 0 1 0 14 5.5a3.35 3.35 0 0 0 .12.85L8.43 9.6A3.5 3.5 0 1 0 5.5 15zm12 2a1.5 1.5 0 1 1-1.5 1.5 1.5 1.5 0 0 1 1.5-1.5zm0-13A1.5 1.5 0 1 1 16 5.5 1.5 1.5 0 0 1 17.5 4zm-12 6A1.5 1.5 0 1 1 4 11.5 1.5 1.5 0 0 1 5.5 10z"/>|,
      ~S|<path d="M3 12c0 1.654 1.346 3 3 3 .794 0 1.512-.315 2.049-.82l5.991 3.424c-.018.13-.04.26-.04.396 0 1.654 1.346 3 3 3s3-1.346 3-3-1.346-3-3-3c-.794 0-1.512.315-2.049.82L8.96 12.397c.018-.131.04-.261.04-.397s-.022-.266-.04-.397l5.991-3.423c.537.505 1.255.82 2.049.82 1.654 0 3-1.346 3-3s-1.346-3-3-3-3 1.346-3 3c0 .136.022.266.04.397L8.049 9.82A2.982 2.982 0 0 0 6 9c-1.654 0-3 1.346-3 3z"/>|
    )
  end

  @doc """
  Renders the `chevrons_down` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevrons_down />
  <Boxicons.chevrons_down class="w-4 h-4" />
  <Boxicons.chevrons_down solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevrons_down(assigns) do
    svg(
      assigns,
      ~S|<path d="m12 15.586-4.293-4.293-1.414 1.414L12 18.414l5.707-5.707-1.414-1.414z"/><path d="m17.707 7.707-1.414-1.414L12 10.586 7.707 6.293 6.293 7.707 12 13.414z"/>|,
      ~S|<path d="M16.939 10.939 12 15.879l-4.939-4.94-2.122 2.122L12 20.121l7.061-7.06z"/><path d="M16.939 3.939 12 8.879l-4.939-4.94-2.122 2.122L12 13.121l7.061-7.06z"/>|
    )
  end

  @doc """
  Renders the `alarm_add` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.alarm_add />
  <Boxicons.alarm_add class="w-4 h-4" />
  <Boxicons.alarm_add solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def alarm_add(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 4c-4.879 0-9 4.121-9 9s4.121 9 9 9 9-4.121 9-9-4.121-9-9-9zm0 16c-3.794 0-7-3.206-7-7s3.206-7 7-7 7 3.206 7 7-3.206 7-7 7z"/><path d="M13 8h-2v4H7v2h4v4h2v-4h4v-2h-4zm7.292-1.292-3.01-3 1.412-1.417 3.01 3zM5.282 2.294 6.7 3.706l-2.99 3-1.417-1.413z"/>|,
      ~S|<path d="M12 4c-4.879 0-9 4.121-9 9s4.121 9 9 9 9-4.121 9-9-4.121-9-9-9zm4 10h-3v3h-2v-3H8v-2h3V9h2v3h3v2zm1.284-10.293 1.412-1.416 3.01 3-1.413 1.417zM5.282 2.294 6.7 3.706l-2.99 3-1.417-1.413z"/>|
    )
  end

  @doc """
  Renders the `duplicate` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.duplicate />
  <Boxicons.duplicate class="w-4 h-4" />
  <Boxicons.duplicate solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def duplicate(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 10H9v3H6v2h3v3h2v-3h3v-2h-3z"/><path d="M4 22h12c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2zM4 8h12l.002 12H4V8z"/><path d="M20 2H8v2h12v12h2V4c0-1.103-.897-2-2-2z"/>|,
      ~S|<path d="M4 22h12a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2zm2-9h3v-3h2v3h3v2h-3v3H9v-3H6v-2z"/><path d="M20 2H8v2h12v12h2V4c0-1.103-.897-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `bowl_rice` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bowl_rice />
  <Boxicons.bowl_rice class="w-4 h-4" />
  <Boxicons.bowl_rice solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bowl_rice(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 19.66V21a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1v-1.34A10 10 0 0 0 22 11a1 1 0 0 0-1-1 3.58 3.58 0 0 0-1.8-3 3.66 3.66 0 0 0-3.63-3.13 3.86 3.86 0 0 0-1 .13 3.7 3.7 0 0 0-5.11 0 3.86 3.86 0 0 0-1-.13A3.66 3.66 0 0 0 4.81 7 3.58 3.58 0 0 0 3 10a1 1 0 0 0-1 1 10 10 0 0 0 5 8.66zm-.89-11 .83-.26-.16-.9a1.64 1.64 0 0 1 1.66-1.62 1.78 1.78 0 0 1 .83.2l.81.45.5-.77a1.71 1.71 0 0 1 2.84 0l.5.77.81-.45a1.78 1.78 0 0 1 .83-.2 1.65 1.65 0 0 1 1.67 1.6l-.16.85.82.28A1.59 1.59 0 0 1 19 10H5a1.59 1.59 0 0 1 1.11-1.39zM19.94 12a8 8 0 0 1-4.39 6.16 1 1 0 0 0-.55.9V20H9v-.94a1 1 0 0 0-.55-.9A8 8 0 0 1 4.06 12z"/>|,
      ~S|<path d="M21 10a3.58 3.58 0 0 0-1.8-3 3.66 3.66 0 0 0-3.63-3.13 3.86 3.86 0 0 0-1 .13 3.7 3.7 0 0 0-5.11 0 3.86 3.86 0 0 0-1-.13A3.66 3.66 0 0 0 4.81 7 3.58 3.58 0 0 0 3 10a1 1 0 0 0-1 1 10 10 0 0 0 5 8.66V21a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1v-1.34A10 10 0 0 0 22 11a1 1 0 0 0-1-1zM5 10a1.59 1.59 0 0 1 1.11-1.39l.83-.26-.16-.85a1.64 1.64 0 0 1 1.66-1.62 1.78 1.78 0 0 1 .83.2l.81.45.5-.77a1.71 1.71 0 0 1 2.84 0l.5.77.81-.45a1.78 1.78 0 0 1 .83-.2 1.65 1.65 0 0 1 1.67 1.6l-.16.85.82.28A1.59 1.59 0 0 1 19 10z"/>|
    )
  end

  @doc """
  Renders the `key` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.key />
  <Boxicons.key class="w-4 h-4" />
  <Boxicons.key solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def key(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 17a5.007 5.007 0 0 0 4.898-4H14v2h2v-2h2v3h2v-3h1v-2h-9.102A5.007 5.007 0 0 0 7 7c-2.757 0-5 2.243-5 5s2.243 5 5 5zm0-8c1.654 0 3 1.346 3 3s-1.346 3-3 3-3-1.346-3-3 1.346-3 3-3z"/>|,
      ~S|<path d="M3.433 17.325 3.079 19.8a1 1 0 0 0 1.131 1.131l2.475-.354C7.06 20.524 8 18 8 18s.472.405.665.466c.412.13.813-.274.948-.684L10 16.01s.577.292.786.335c.266.055.524-.109.707-.293a.988.988 0 0 0 .241-.391L12 14.01s.675.187.906.214c.263.03.519-.104.707-.293l1.138-1.137a5.502 5.502 0 0 0 5.581-1.338 5.507 5.507 0 0 0 0-7.778 5.507 5.507 0 0 0-7.778 0 5.5 5.5 0 0 0-1.338 5.581l-7.501 7.5a.994.994 0 0 0-.282.566zM18.504 5.506a2.919 2.919 0 0 1 0 4.122l-4.122-4.122a2.919 2.919 0 0 1 4.122 0z"/>|
    )
  end

  @doc """
  Renders the `paint` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.paint />
  <Boxicons.paint class="w-4 h-4" />
  <Boxicons.paint solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def paint(assigns) do
    svg(
      assigns,
      ~S|<path d="M7.061 22c1.523 0 2.84-.543 3.91-1.613 1.123-1.123 1.707-2.854 1.551-4.494l8.564-8.564a3.123 3.123 0 0 0-.002-4.414c-1.178-1.18-3.234-1.18-4.412 0l-8.884 8.884c-1.913.169-3.807 1.521-3.807 3.919 0 .303.021.588.042.86.08 1.031.109 1.418-1.471 2.208a1.001 1.001 0 0 0-.122 1.717C2.52 20.563 4.623 22 7.061 22c-.001 0-.001 0 0 0zM18.086 4.328a1.144 1.144 0 0 1 1.586.002 1.12 1.12 0 0 1 0 1.584L12 13.586 10.414 12l7.672-7.672zM6.018 16.423c-.018-.224-.037-.458-.037-.706 0-1.545 1.445-1.953 2.21-1.953.356 0 .699.073.964.206.945.475 1.26 1.293 1.357 1.896.177 1.09-.217 2.368-.956 3.107C8.865 19.664 8.049 20 7.061 20H7.06c-.75 0-1.479-.196-2.074-.427 1.082-.973 1.121-1.989 1.032-3.15z"/>|,
      ~S|<path d="M21.084 2.914c-1.178-1.179-3.234-1.179-4.412 0l-8.379 8.379a.999.999 0 0 0 0 1.414l3 3a.997.997 0 0 0 1.414 0l8.379-8.379a3.123 3.123 0 0 0-.002-4.414zm-1.412 3L12 13.586 10.414 12l7.672-7.672a1.146 1.146 0 0 1 1.586.002 1.123 1.123 0 0 1 0 1.584zM8 15c-1.265-.634-3.5 0-3.5 2 0 1.197.5 2-1.5 3 0 0 3.25 2.25 5.5 0 1.274-1.274 1.494-4-.5-5z"/>|
    )
  end

  @doc """
  Renders the `group` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.group />
  <Boxicons.group class="w-4 h-4" />
  <Boxicons.group solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def group(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.604 11.048a5.67 5.67 0 0 0 .751-3.44c-.179-1.784-1.175-3.361-2.803-4.44l-1.105 1.666c1.119.742 1.8 1.799 1.918 2.974a3.693 3.693 0 0 1-1.072 2.986l-1.192 1.192 1.618.475C18.951 13.701 19 17.957 19 18h2c0-1.789-.956-5.285-4.396-6.952z"/><path d="M9.5 12c2.206 0 4-1.794 4-4s-1.794-4-4-4-4 1.794-4 4 1.794 4 4 4zm0-6c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2zm1.5 7H8c-3.309 0-6 2.691-6 6v1h2v-1c0-2.206 1.794-4 4-4h3c2.206 0 4 1.794 4 4v1h2v-1c0-3.309-2.691-6-6-6z"/>|,
      ~S|<path d="M9.5 12c2.206 0 4-1.794 4-4s-1.794-4-4-4-4 1.794-4 4 1.794 4 4 4zm1.5 1H8c-3.309 0-6 2.691-6 6v1h15v-1c0-3.309-2.691-6-6-6z"/><path d="M16.604 11.048a5.67 5.67 0 0 0 .751-3.44c-.179-1.784-1.175-3.361-2.803-4.44l-1.105 1.666c1.119.742 1.8 1.799 1.918 2.974a3.693 3.693 0 0 1-1.072 2.986l-1.192 1.192 1.618.475C18.951 13.701 19 17.957 19 18h2c0-1.789-.956-5.285-4.396-6.952z"/>|
    )
  end

  @doc """
  Renders the `hide` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hide />
  <Boxicons.hide class="w-4 h-4" />
  <Boxicons.hide solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def hide(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 19c.946 0 1.81-.103 2.598-.281l-1.757-1.757c-.273.021-.55.038-.841.038-5.351 0-7.424-3.846-7.926-5a8.642 8.642 0 0 1 1.508-2.297L4.184 8.305c-1.538 1.667-2.121 3.346-2.132 3.379a.994.994 0 0 0 0 .633C2.073 12.383 4.367 19 12 19zm0-14c-1.837 0-3.346.396-4.604.981L3.707 2.293 2.293 3.707l18 18 1.414-1.414-3.319-3.319c2.614-1.951 3.547-4.615 3.561-4.657a.994.994 0 0 0 0-.633C21.927 11.617 19.633 5 12 5zm4.972 10.558-2.28-2.28c.19-.39.308-.819.308-1.278 0-1.641-1.359-3-3-3-.459 0-.888.118-1.277.309L8.915 7.501A9.26 9.26 0 0 1 12 7c5.351 0 7.424 3.846 7.926 5-.302.692-1.166 2.342-2.954 3.558z"/>|,
      ~S|<path d="M8.073 12.194 4.212 8.333c-1.52 1.657-2.096 3.317-2.106 3.351L2 12l.105.316C2.127 12.383 4.421 19 12.054 19c.929 0 1.775-.102 2.552-.273l-2.746-2.746a3.987 3.987 0 0 1-3.787-3.787zM12.054 5c-1.855 0-3.375.404-4.642.998L3.707 2.293 2.293 3.707l18 18 1.414-1.414-3.298-3.298c2.638-1.953 3.579-4.637 3.593-4.679l.105-.316-.105-.316C21.98 11.617 19.687 5 12.054 5zm1.906 7.546c.187-.677.028-1.439-.492-1.96s-1.283-.679-1.96-.492L10 8.586A3.955 3.955 0 0 1 12.054 8c2.206 0 4 1.794 4 4a3.94 3.94 0 0 1-.587 2.053l-1.507-1.507z"/>|
    )
  end

  @doc """
  Renders the `universal_access` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.universal_access />
  <Boxicons.universal_access class="w-4 h-4" />
  <Boxicons.universal_access solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def universal_access(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2a10 10 0 1 0 10 10A10 10 0 0 0 12 2zm0 18a8 8 0 1 1 8-8 8 8 0 0 1-8 8z"/><path d="M16.5 10.5 16 9l-3 1h-2L8 9l-.5 1.5 3 1V13L9 17.25l1.5.75 1.25-3.5h.5L13.5 18l1.5-.75L13.5 13v-1.5l3-1z"/>|,
      ~S|<path d="M12 2a10 10 0 1 0 10 10A10 10 0 0 0 12 2zm0 3.33A1.67 1.67 0 1 1 10.33 7 1.67 1.67 0 0 1 12 5.33zm3.33 12.5-1.66.84-1.39-3.89h-.56l-1.39 3.89-1.66-.84 1.66-4.72v-1.66L7 10.33l.56-1.66 3.33 1.11h2.22l3.33-1.11.56 1.66-3.33 1.12v1.66z"/>|
    )
  end

  @doc """
  Renders the `user` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.user />
  <Boxicons.user class="w-4 h-4" />
  <Boxicons.user solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def user(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2a5 5 0 1 0 5 5 5 5 0 0 0-5-5zm0 8a3 3 0 1 1 3-3 3 3 0 0 1-3 3zm9 11v-1a7 7 0 0 0-7-7h-4a7 7 0 0 0-7 7v1h2v-1a5 5 0 0 1 5-5h4a5 5 0 0 1 5 5v1z"/>|,
      ~S|<path d="M7.5 6.5C7.5 8.981 9.519 11 12 11s4.5-2.019 4.5-4.5S14.481 2 12 2 7.5 4.019 7.5 6.5zM20 21h1v-1c0-3.859-3.141-7-7-7h-4c-3.86 0-7 3.141-7 7v1h17z"/>|
    )
  end

  @doc """
  Renders the `select_multiple` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.select_multiple />
  <Boxicons.select_multiple class="w-4 h-4" />
  <Boxicons.select_multiple solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def select_multiple(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H8c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM8 16V4h12l.002 12H8z"/><path d="M4 8H2v12c0 1.103.897 2 2 2h12v-2H4V8zm8.933 3.519-1.726-1.726-1.414 1.414 3.274 3.274 5.702-6.84-1.538-1.282z"/>|,
      ~S|<path d="M20 2H8a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2zm-6.933 12.481-3.274-3.274 1.414-1.414 1.726 1.726 4.299-5.159 1.537 1.281-5.702 6.84z"/><path d="M4 22h11v-2H4V8H2v12c0 1.103.897 2 2 2z"/>|
    )
  end

  @doc """
  Renders the `phone_incoming` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.phone_incoming />
  <Boxicons.phone_incoming class="w-4 h-4" />
  <Boxicons.phone_incoming solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def phone_incoming(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.712 13.288a.999.999 0 0 0-1.414 0l-1.597 1.596c-.824-.245-2.166-.771-2.99-1.596-.874-.874-1.374-2.253-1.594-2.992l1.594-1.594a.999.999 0 0 0 0-1.414l-4-4a1.03 1.03 0 0 0-1.414 0l-2.709 2.71c-.382.38-.597.904-.588 1.437.022 1.423.396 6.367 4.297 10.268C10.195 21.6 15.142 21.977 16.566 22h.028c.528 0 1.027-.208 1.405-.586l2.712-2.712a.999.999 0 0 0 0-1.414l-3.999-4zM16.585 20c-1.248-.021-5.518-.356-8.874-3.712C4.343 12.92 4.019 8.636 4 7.414l2.004-2.005L8.59 7.995 7.297 9.288c-.238.238-.34.582-.271.912.024.115.611 2.842 2.271 4.502s4.387 2.247 4.502 2.271a.994.994 0 0 0 .912-.271l1.293-1.293 2.586 2.586L16.585 20z"/><path d="M15.795 6.791 13.005 4v6.995H20l-2.791-2.79 4.503-4.503-1.414-1.414z"/>|,
      ~S|<path d="M15.793 6.793 13 4v7h7l-2.793-2.793 4.5-4.5-1.414-1.414z"/><path d="M16.422 13.443a1.001 1.001 0 0 0-1.391.043l-2.392 2.461c-.576-.11-1.734-.471-2.926-1.66-1.192-1.193-1.553-2.354-1.66-2.926l2.459-2.394a1 1 0 0 0 .043-1.391L6.86 3.513a1 1 0 0 0-1.391-.087l-2.17 1.861a1.001 1.001 0 0 0-.291.649c-.015.25-.301 6.172 4.291 10.766C11.305 20.707 16.324 21 17.705 21c.203 0 .326-.006.359-.008a.99.99 0 0 0 .648-.291l1.861-2.171a1.001 1.001 0 0 0-.086-1.391l-4.065-3.696z"/>|
    )
  end

  @doc """
  Renders the `message_rounded_check` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_rounded_check />
  <Boxicons.message_rounded_check class="w-4 h-4" />
  <Boxicons.message_rounded_check solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_rounded_check(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.908 1.898 5.515 5 6.934V22l5.339-4.005C17.697 17.852 22 14.32 22 10c0-4.411-4.486-8-10-8zm0 14h-.333L9 18v-2.417l-.641-.247C5.67 14.301 4 12.256 4 10c0-3.309 3.589-6 8-6s8 2.691 8 6-3.589 6-8 6z"/><path d="M11 11.586 8.707 9.293l-1.414 1.414L11 14.414l6.207-6.207-1.414-1.414z"/>|,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.907 1.897 5.515 5 6.934V22l5.34-4.005C17.697 17.853 22 14.32 22 10c0-4.411-4.486-8-10-8zm-1 12.414-3.707-3.707 1.414-1.414L11 11.586l4.793-4.793 1.414 1.414L11 14.414z"/>|
    )
  end

  @doc """
  Renders the `vial` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.vial />
  <Boxicons.vial class="w-4 h-4" />
  <Boxicons.vial solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def vial(assigns) do
    svg(
      assigns,
      ~S|<path d="m11.95 3.564.708.707-9.193 9.193C2.521 14.408 2 15.664 2 17s.521 2.592 1.465 3.535C4.408 21.479 5.664 22 7 22s2.592-.521 3.535-1.465l9.193-9.193.707.708 1.414-1.414-8.485-8.486-1.414 1.414zM9.121 19.121c-1.133 1.133-3.109 1.133-4.242 0C4.313 18.555 4 17.802 4 17s.313-1.555.879-2.121L5.758 14h8.484l-5.121 5.121zM16.242 12H7.758l6.314-6.314 4.242 4.242L16.242 12z"/>|,
      ~S|<path d="M7 22a4.965 4.965 0 0 0 3.535-1.465l9.193-9.193.707.708 1.414-1.414-8.485-8.486-1.414 1.414.708.707-9.193 9.193C2.521 14.408 2 15.664 2 17s.521 2.592 1.465 3.535A4.965 4.965 0 0 0 7 22zM18.314 9.928 15.242 13H6.758l7.314-7.314 4.242 4.242z"/>|
    )
  end

  @doc """
  Renders the `injection` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.injection />
  <Boxicons.injection class="w-4 h-4" />
  <Boxicons.injection solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def injection(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.84 7.4 22.25 6 18 1.75l-1.4 1.41L18 4.58 16.6 6l-2.13-2.13-1.41-1.42-1.41 1.42.7.71L3 13.92a2 2 0 0 0-.3 2.45L4 18.56l-2.25 2.28 1.41 1.41L5.44 20l2.19 1.31a2 2 0 0 0 1 .28 2 2 0 0 0 1.45-.59l9.34-9.34.71.7 1.42-1.41-1.42-1.42L18 7.4 19.42 6zM18 10.23l-9.34 9.35L6 18l-1.58-2.66.86-.87 2.83 2.83 1.42-1.41-2.83-2.83 1.41-1.41 2.83 2.82 1.41-1.41-2.83-2.83 1.42-1.41 2.83 2.83 1.41-1.42-2.83-2.83L13.77 6z"/>|,
      ~S|<path d="M12 5.61 9.24 8.35l3.31 3.31-1.06 1.06-3.31-3.31-1.77 1.77 3.31 3.31-1.06 1.06-3.31-3.31-2 2A2 2 0 0 0 3 16.66l1 1.89-2.25 2.29 1.41 1.41L5.45 20l1.89 1a2 2 0 0 0 1 .26 2 2 0 0 0 1.42-.59L18.39 12zm7.8 3.59-1.79-1.8 1.42-1.41 1.41 1.41 1.41-1.41-4.24-4.24-1.41 1.41 1.41 1.42-1.41 1.41-1.8-1.79-1.74-1.75-1.41 1.42 1.03 1.03v.01l6.41 6.41h.01l1.03 1.03 1.42-1.41-1.74-1.74h-.01z"/>|
    )
  end

  @doc """
  Renders the `folder` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.folder />
  <Boxicons.folder class="w-4 h-4" />
  <Boxicons.folder solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def folder(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 5h-8.586L9.707 3.293A.997.997 0 0 0 9 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2zM4 19V7h16l.002 12H4z"/>|,
      ~S|<path d="M20 5h-9.586L8.707 3.293A.997.997 0 0 0 8 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `sushi` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sushi />
  <Boxicons.sushi class="w-4 h-4" />
  <Boxicons.sushi solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def sushi(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C7.51 2 4 4.2 4 7v10c0 2.8 3.51 5 8 5s8-2.2 8-5V7c0-2.8-3.51-5-8-5zm0 18c-3.54 0-6-1.58-6-3v-6.67A10.52 10.52 0 0 0 12 12a10.52 10.52 0 0 0 6-1.67V17c0 1.42-2.46 3-6 3zm0-10c-3.54 0-6-1.58-6-3s2.46-3 6-3 6 1.58 6 3-2.46 3-6 3z"/>|,
      ~S|<path d="M12.07 22c4.48 0 8-2.2 8-5V7c0-2.8-3.52-5-8-5s-8 2.2-8 5v10c0 2.8 3.51 5 8 5zm0-18c3.53 0 6 1.58 6 3a2 2 0 0 1-.29.87c-.68 1-2.53 2-5 2.12h-1.39C8.88 9.83 7 8.89 6.35 7.84a2.16 2.16 0 0 1-.28-.76V7c0-1.42 2.46-3 6-3z"/>|
    )
  end

  @doc """
  Renders the `bullseye` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bullseye />
  <Boxicons.bullseye class="w-4 h-4" />
  <Boxicons.bullseye solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bullseye(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 6c-3.309 0-6 2.691-6 6s2.691 6 6 6 6-2.691 6-6-2.691-6-6-6zm0 10c-2.206 0-4-1.794-4-4s1.794-4 4-4 4 1.794 4 4-1.794 4-4 4z"/><path d="M12 2C6.579 2 2 6.579 2 12s4.579 10 10 10 10-4.579 10-10S17.421 2 12 2zm0 18c-4.337 0-8-3.663-8-8s3.663-8 8-8 8 3.663 8 8-3.663 8-8 8z"/><path d="M12 10c-1.081 0-2 .919-2 2s.919 2 2 2 2-.919 2-2-.919-2-2-2z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 17c-3.859 0-7-3.14-7-7s3.141-7 7-7 7 3.14 7 7-3.141 7-7 7z"/><path d="M12 7c-2.757 0-5 2.243-5 5s2.243 5 5 5 5-2.243 5-5-2.243-5-5-5zm0 7c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2z"/>|
    )
  end

  @doc """
  Renders the `skip_next_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.skip_next_circle />
  <Boxicons.skip_next_circle class="w-4 h-4" />
  <Boxicons.skip_next_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def skip_next_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="m8 16 5-4-5-4zm5-4v4h2V8h-2z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm4 14h-2v-4l-6 4V8l6 4V8h2v8z"/>|
    )
  end

  @doc """
  Renders the `left_arrow_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.left_arrow_circle />
  <Boxicons.left_arrow_circle class="w-4 h-4" />
  <Boxicons.left_arrow_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def left_arrow_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.999 1.993C6.486 1.994 2 6.48 1.999 11.994c0 5.514 4.486 10 10.001 10 5.514-.001 10-4.487 10-10 0-5.514-4.486-10-10.001-10.001zM12 19.994c-4.412 0-8.001-3.589-8.001-8 .001-4.411 3.59-8 8-8.001C16.411 3.994 20 7.583 20 11.994c0 4.41-3.589 7.999-8 8z"/><path d="m12.012 7.989-4.005 4.005 4.005 4.004v-3.004h3.994v-2h-3.994z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm5 11h-5v4l-5-5 5-5v4h5v2z"/>|
    )
  end

  @doc """
  Renders the `bell_plus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bell_plus />
  <Boxicons.bell_plus class="w-4 h-4" />
  <Boxicons.bell_plus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bell_plus(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 7.037h-2V10H8.037v2H11v2.963h2V12h2.963v-2H13z"/><path d="M19 13.586V10c0-3.217-2.185-5.927-5.145-6.742C13.562 2.52 12.846 2 12 2s-1.562.52-1.855 1.258C7.185 4.074 5 6.783 5 10v3.586l-1.707 1.707A.996.996 0 0 0 3 16v2a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1v-2a.996.996 0 0 0-.293-.707L19 13.586zM19 17H5v-.586l1.707-1.707A.996.996 0 0 0 7 14v-4c0-2.757 2.243-5 5-5s5 2.243 5 5v4c0 .266.105.52.293.707L19 16.414V17zm-7 5a2.98 2.98 0 0 0 2.818-2H9.182A2.98 2.98 0 0 0 12 22z"/>|,
      ~S|<path d="M12 22a2.98 2.98 0 0 0 2.818-2H9.182A2.98 2.98 0 0 0 12 22zm8.707-5.707L19 14.586V10c0-3.217-2.185-5.926-5.145-6.743C13.562 2.52 12.846 2 12 2s-1.562.52-1.855 1.258C7.185 4.074 5 6.783 5 10v4.586l-1.707 1.707A.997.997 0 0 0 3 17v1a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1v-1a.997.997 0 0 0-.293-.707zM16 12h-3v3h-2v-3H8v-2h3V7h2v3h3v2z"/>|
    )
  end

  @doc """
  Renders the `battery` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.battery />
  <Boxicons.battery class="w-4 h-4" />
  <Boxicons.battery solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def battery(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 18h14c1.103 0 2-.897 2-2v-2h2v-4h-2V8c0-1.103-.897-2-2-2H4c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2zM4 8h14l.002 8H4V8z"/>|,
      ~S|<path d="M20 8a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-2h2v-4h-2V8z"/>|
    )
  end

  @doc """
  Renders the `bookmark` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bookmark />
  <Boxicons.bookmark class="w-4 h-4" />
  <Boxicons.bookmark solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bookmark(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 2H6c-1.103 0-2 .897-2 2v18l8-4.572L20 22V4c0-1.103-.897-2-2-2zm0 16.553-6-3.428-6 3.428V4h12v14.553z"/>|,
      ~S|<path d="M19 10.132v-6c0-1.103-.897-2-2-2H7c-1.103 0-2 .897-2 2V22l7-4.666L19 22V10.132z"/>|
    )
  end

  @doc """
  Renders the `calendar_x` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.calendar_x />
  <Boxicons.calendar_x class="w-4 h-4" />
  <Boxicons.calendar_x solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def calendar_x(assigns) do
    svg(
      assigns,
      ~S|<path d="m8.293 16.293 1.414 1.414L12 15.414l2.293 2.293 1.414-1.414L13.414 14l2.293-2.293-1.414-1.414L12 12.586l-2.293-2.293-1.414 1.414L10.586 14z"/><path d="M19 4h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm.002 16H5V8h14l.002 12z"/>|,
      ~S|<path d="M5 22h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zm10.707-4.707-1.414 1.414L12 16.414l-2.293 2.293-1.414-1.414L10.586 15l-2.293-2.293 1.414-1.414L12 13.586l2.293-2.293 1.414 1.414L13.414 15l2.293 2.293zM5 7h14v2H5V7z"/>|
    )
  end

  @doc """
  Renders the `dollar_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dollar_circle />
  <Boxicons.dollar_circle class="w-4 h-4" />
  <Boxicons.dollar_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dollar_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2a10 10 0 1 0 10 10A10 10 0 0 0 12 2zm0 18a8 8 0 1 1 8-8 8 8 0 0 1-8 8z"/><path d="M12 11c-2 0-2-.63-2-1s.7-1 2-1 1.39.64 1.4 1h2A3 3 0 0 0 13 7.12V6h-2v1.09C9 7.42 8 8.71 8 10c0 1.12.52 3 4 3 2 0 2 .68 2 1s-.62 1-2 1c-1.84 0-2-.86-2-1H8c0 .92.66 2.55 3 2.92V18h2v-1.08c2-.34 3-1.63 3-2.92 0-1.12-.52-3-4-3z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm1 14.915V18h-2v-1.08c-2.339-.367-3-2.002-3-2.92h2c.011.143.159 1 2 1 1.38 0 2-.585 2-1 0-.324 0-1-2-1-3.48 0-4-1.88-4-3 0-1.288 1.029-2.584 3-2.915V6.012h2v1.109c1.734.41 2.4 1.853 2.4 2.879h-1l-1 .018C13.386 9.638 13.185 9 12 9c-1.299 0-2 .516-2 1 0 .374 0 1 2 1 3.48 0 4 1.88 4 3 0 1.288-1.029 2.584-3 2.915z"/>|
    )
  end

  @doc """
  Renders the `baguette` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.baguette />
  <Boxicons.baguette class="w-4 h-4" />
  <Boxicons.baguette solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def baguette(assigns) do
    svg(
      assigns,
      ~S|<path d="M7.64 21.71a8 8 0 0 0 5.6-2.47l6-6c2.87-2.87 3.31-7.11 1-9.45s-6.58-1.91-9.45 1l-6 6c-2.87 2.87-3.31 7.11-1 9.45a5.38 5.38 0 0 0 3.85 1.47zm-2-9 2.78 2.79 1.42-1.42-2.79-2.79 1.41-1.41 2.83 2.83 1.42-1.42-2.83-2.83 1.41-1.41 2.83 2.83 1.42-1.42-2.79-2.78c2-1.61 4.65-1.87 6-.47s1.09 4.56-1 6.62l-6 6c-2.06 2.05-5.09 2.5-6.62 1s-1.06-4.07.55-6.08z"/>|,
      ~S|<path d="m11.13 4.41 4.23 4.23L14.3 9.7l-4.24-4.24-1.77 1.77 4.24 4.24-1.06 1.06-4.24-4.24-1.77 1.77L9.7 14.3l-1.06 1.06-4.23-4.23C1.86 14 1.55 18 3.79 20.21a5.38 5.38 0 0 0 3.85 1.5 8 8 0 0 0 5.6-2.47l6-6c2.87-2.87 3.31-7.11 1-9.45s-6.24-1.93-9.11.62z"/>|
    )
  end

  @doc """
  Renders the `chevron_down_square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevron_down_square />
  <Boxicons.chevron_down_square class="w-4 h-4" />
  <Boxicons.chevron_down_square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevron_down_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zM5 5h14l.001 14H5V5z"/><path d="M12 13.586 7.707 9.293l-1.414 1.414L12 16.414l5.707-5.707-1.414-1.414z"/>|,
      ~S|<path d="M5 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zM7.707 9.293 12 13.586l4.293-4.293 1.414 1.414L12 16.414l-5.707-5.707 1.414-1.414z"/>|
    )
  end

  @doc """
  Renders the `calendar_event` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.calendar_event />
  <Boxicons.calendar_event class="w-4 h-4" />
  <Boxicons.calendar_event solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def calendar_event(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 12h6v6h-6z"/><path d="M19 4h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm.001 16H5V8h14l.001 12z"/>|,
      ~S|<path d="M19 4h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm-1 15h-6v-6h6v6zm1-10H5V7h14v2z"/>|
    )
  end

  @doc """
  Renders the `category` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.category />
  <Boxicons.category class="w-4 h-4" />
  <Boxicons.category solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def category(assigns) do
    svg(
      assigns,
      ~S|<path d="M10 3H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zM9 9H5V5h4v4zm11-6h-6a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zm-1 6h-4V5h4v4zm-9 4H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-6a1 1 0 0 0-1-1zm-1 6H5v-4h4v4zm8-6c-2.206 0-4 1.794-4 4s1.794 4 4 4 4-1.794 4-4-1.794-4-4-4zm0 6c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2z"/>|,
      ~S|<path d="M4 11h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1zm10 0h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1zM4 21h6a1 1 0 0 0 1-1v-6a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1zm13 0c2.206 0 4-1.794 4-4s-1.794-4-4-4-4 1.794-4 4 1.794 4 4 4z"/>|
    )
  end

  @doc """
  Renders the `archive` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.archive />
  <Boxicons.archive class="w-4 h-4" />
  <Boxicons.archive solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def archive(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.706 5.291-2.999-2.998A.996.996 0 0 0 18 2H6a.996.996 0 0 0-.707.293L2.294 5.291A.994.994 0 0 0 2 5.999V19c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5.999a.994.994 0 0 0-.294-.708zM6.414 4h11.172l.999.999H5.415L6.414 4zM4 19V6.999h16L20.002 19H4z"/><path d="M15 12H9v-2H7v4h10v-4h-2z"/>|,
      ~S|<path d="m21.704 5.29-2.997-2.997A.996.996 0 0 0 18 2H6a.996.996 0 0 0-.707.293L2.296 5.29A.994.994 0 0 0 2 5.999V19a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V5.999a.994.994 0 0 0-.296-.709zM6.414 4h11.172l1 1H5.414l1-1zM17 13v1H7v-4h2v2h6v-2h2v3z"/>|
    )
  end

  @doc """
  Renders the `caret_down_square` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.caret_down_square />
  <Boxicons.caret_down_square class="w-4 h-4" />
  <Boxicons.caret_down_square solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def caret_down_square(assigns) do
    svg(
      assigns,
      ~S|<path d="m12 16 5-6H7z"/><path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM5 19V5h14l.002 14H5z"/>|,
      ~S|<path d="M5 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zm12-11-5 6-5-6h10z"/>|
    )
  end

  @doc """
  Renders the `map_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.map_alt />
  <Boxicons.map_alt class="w-4 h-4" />
  <Boxicons.map_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def map_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.447 6.105-6-3a1 1 0 0 0-.895 0L9 5.882 3.447 3.105A1 1 0 0 0 2 4v13c0 .379.214.725.553.895l6 3a1 1 0 0 0 .895 0L15 18.118l5.553 2.776a.992.992 0 0 0 .972-.043c.295-.183.475-.504.475-.851V7c0-.379-.214-.725-.553-.895zM10 7.618l4-2v10.764l-4 2V7.618zm-6-2 4 2v10.764l-4-2V5.618zm16 12.764-4-2V5.618l4 2v10.764z"/>|,
      ~S|<path d="m9 6.882-7-3.5v13.236l7 3.5 6-3 7 3.5V7.382l-7-3.5-6 3zM15 15l-6 3V9l6-3v9z"/>|
    )
  end

  @doc """
  Renders the `zoom_in` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.zoom_in />
  <Boxicons.zoom_in class="w-4 h-4" />
  <Boxicons.zoom_in solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def zoom_in(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 6H9v3H6v2h3v3h2v-3h3V9h-3z"/><path d="M10 2c-4.411 0-8 3.589-8 8s3.589 8 8 8a7.952 7.952 0 0 0 4.897-1.688l4.396 4.396 1.414-1.414-4.396-4.396A7.952 7.952 0 0 0 18 10c0-4.411-3.589-8-8-8zm0 14c-3.309 0-6-2.691-6-6s2.691-6 6-6 6 2.691 6 6-2.691 6-6 6z"/>|,
      ~S|<path d="M10 2c-4.411 0-8 3.589-8 8s3.589 8 8 8a7.952 7.952 0 0 0 4.897-1.688l4.396 4.396 1.414-1.414-4.396-4.396A7.952 7.952 0 0 0 18 10c0-4.411-3.589-8-8-8zm4 9h-3v3H9v-3H6V9h3V6h2v3h3v2z"/>|
    )
  end

  @doc """
  Renders the `up_arrow_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.up_arrow_alt />
  <Boxicons.up_arrow_alt class="w-4 h-4" />
  <Boxicons.up_arrow_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def up_arrow_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 8.414V18h2V8.414l4.293 4.293 1.414-1.414L12 4.586l-6.707 6.707 1.414 1.414z"/>|,
      ~S|<path d="M13 18v-6h5l-6-7-6 7h5v6z"/>|
    )
  end

  @doc """
  Renders the `calendar_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.calendar_minus />
  <Boxicons.calendar_minus class="w-4 h-4" />
  <Boxicons.calendar_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def calendar_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="M8 13h8v2H8z"/><path d="M19 4h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm.002 16H5V8h14l.002 12z"/>|,
      ~S|<path d="M5 22h14c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2h-2V2h-2v2H9V2H7v2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zm11-6H8v-2h8v2zM5 7h14v2H5V7z"/>|
    )
  end

  @doc """
  Renders the `capsule` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.capsule />
  <Boxicons.capsule class="w-4 h-4" />
  <Boxicons.capsule solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def capsule(assigns) do
    svg(
      assigns,
      ~S|<path d="M8.999 20.133a4.969 4.969 0 0 0 3.536-1.465l7.134-7.133a5.007 5.007 0 0 0-.001-7.072C18.723 3.52 17.467 3 16.132 3s-2.591.52-3.534 1.464l-7.134 7.134a5.009 5.009 0 0 0 0 7.072 4.97 4.97 0 0 0 3.535 1.463zm5.013-14.255A2.979 2.979 0 0 1 16.132 5c.802 0 1.556.313 2.122.878a3.004 3.004 0 0 1 .001 4.243l-2.893 2.892L11.12 8.77l2.892-2.892zm-7.134 7.134 2.828-2.828 4.242 4.243-2.827 2.827c-1.133 1.133-3.11 1.132-4.243.001a3.005 3.005 0 0 1 0-4.243z"/>|,
      ~S|<path d="M8.434 20.566c1.335 0 2.591-.52 3.535-1.464l7.134-7.133a5.008 5.008 0 0 0-.001-7.072 4.969 4.969 0 0 0-3.536-1.463c-1.335 0-2.59.52-3.534 1.464l-7.134 7.133a5.01 5.01 0 0 0-.001 7.072 4.971 4.971 0 0 0 3.537 1.463zm5.011-14.254a2.979 2.979 0 0 1 2.12-.878c.802 0 1.556.312 2.122.878a3.004 3.004 0 0 1 .001 4.243l-2.893 2.892-4.242-4.244 2.892-2.891z"/>|
    )
  end

  @doc """
  Renders the `fast_forward_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.fast_forward_circle />
  <Boxicons.fast_forward_circle class="w-4 h-4" />
  <Boxicons.fast_forward_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def fast_forward_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="m13 16 5-4-5-4zm-6 0 5-4-5-4z"/>|,
      ~S|<path d="M12 2C6.485 2 2 6.485 2 12s4.485 10 10 10c5.514 0 10-4.485 10-10S17.514 2 12 2zm1 14v-4l-6 4V8l6 4V8l6 4-6 4z"/>|
    )
  end

  @doc """
  Renders the `party` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.party />
  <Boxicons.party class="w-4 h-4" />
  <Boxicons.party solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def party(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 8.31c-.36-.41-.73-.82-1.12-1.21l-.29-.27.14-.12a3.15 3.15 0 0 0 .9-3.49A3.91 3.91 0 0 0 14 1v2a2 2 0 0 1 1.76 1c.17.4 0 .84-.47 1.31-.07.08-.15.13-.22.2-3-2.41-6.29-3.77-7.9-2.16a2.16 2.16 0 0 0-.41.59v.1l-.18.53-4.41 13.1A3.28 3.28 0 0 0 5.28 22a3.21 3.21 0 0 0 1-.17L20 17.28a1 1 0 0 0 .43-.31l.21-.18c1.43-1.44.51-4.21-1.41-6.9A6.63 6.63 0 0 1 23 9V7a8.44 8.44 0 0 0-5 1.31zM5.7 19.93a1.29 1.29 0 0 1-1.63-1.63l1.36-4.1a10.7 10.7 0 0 0 4.29 4.39zm7-2.33a8.87 8.87 0 0 1-6.3-6.29l1-3 .06.09c.11.22.25.45.39.68s.16.29.26.44.33.48.51.73.19.28.3.42.43.55.66.82l.29.35c.34.39.7.77 1.08 1.16s.68.64 1 1l.33.28.78.63.37.28c.28.2.55.4.83.58l.31.2c.36.22.72.43 1.07.61h.05zm6.51-2.23h-.06c-.69.38-3.56-.57-6.79-3.81-.34-.34-.66-.67-.95-1l-.29-.35-.53-.64-.29-.4c-.13-.19-.27-.37-.39-.55l-.26-.42-.29-.47c-.08-.14-.14-.27-.21-.4s-.15-.26-.21-.4a3.31 3.31 0 0 1-.14-.36c-.05-.13-.11-.26-.15-.38S8.6 6 8.57 5.88s-.05-.22-.07-.32a2.26 2.26 0 0 1 0-.26 1 1 0 0 1 0-.24l.11-.31c.36-.36 2.23 0 4.73 1.9A4.13 4.13 0 0 1 12 7v2a6.45 6.45 0 0 0 3-.94l.48.46c.42.42.81.85 1.18 1.28a5.32 5.32 0 0 0-.6 3.4l2-.39a3.57 3.57 0 0 1 0-1.12 11.3 11.3 0 0 1 .81 1.45c.56 1.32.52 2.06.34 2.23z"/>|,
      ~S|<path d="M23 7a8.44 8.44 0 0 0-5 1.31c-.36-.41-.73-.82-1.12-1.21l-.29-.27.14-.12a3.15 3.15 0 0 0 .9-3.49A3.9 3.9 0 0 0 14 1v2a2 2 0 0 1 1.76 1c.17.4 0 .84-.47 1.31l-.23.21a16.71 16.71 0 0 0-3.41-2.2c-2.53-1.14-3.83-.61-4.47 0a2.18 2.18 0 0 0-.46.68l-.18.53L5.1 8.87C6.24 11.71 9 16.76 15 18.94l5-1.66a1 1 0 0 0 .43-.31l.21-.18c1.43-1.44.51-4.21-1.41-6.9A6.63 6.63 0 0 1 23 9zm-3.79 8.37h-.06c-.69.37-3.55-.57-6.79-3.81-.34-.34-.66-.67-.95-1-.1-.11-.19-.23-.29-.35l-.53-.64-.28-.39c-.14-.19-.28-.38-.4-.56s-.16-.26-.24-.39-.22-.34-.31-.51-.13-.24-.19-.37-.17-.28-.23-.42-.09-.23-.14-.34-.11-.27-.15-.4S8.6 6 8.58 5.9s-.06-.24-.08-.34a2 2 0 0 1 0-.24 1.15 1.15 0 0 1 0-.26l.11-.31c.17-.18.91-.23 2.23.37a13.83 13.83 0 0 1 2.49 1.54A4.17 4.17 0 0 1 12 7v2a6.43 6.43 0 0 0 3-.94l.49.46c.44.43.83.86 1.19 1.27A5.31 5.31 0 0 0 16 13.2l2-.39a3.23 3.23 0 0 1 0-1.14c1.29 1.97 1.53 3.39 1.21 3.7zM4.4 11l-2.23 6.7A3.28 3.28 0 0 0 5.28 22a3.21 3.21 0 0 0 1-.17l6.52-2.17A18.7 18.7 0 0 1 4.4 11z"/>|
    )
  end

  @doc """
  Renders the `pie_chart` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pie_chart />
  <Boxicons.pie_chart class="w-4 h-4" />
  <Boxicons.pie_chart solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def pie_chart(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M12 5.166V12h6.834A6.817 6.817 0 0 0 12 5.166z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 10V5c4 0 7 3 7 7h-7z"/>|
    )
  end

  @doc """
  Renders the `notification` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.notification />
  <Boxicons.notification class="w-4 h-4" />
  <Boxicons.notification solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def notification(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 19H5V6h8c0-.712.153-1.387.422-2H5c-1.103 0-2 .897-2 2v13c0 1.103.897 2 2 2h13c1.103 0 2-.897 2-2v-8.422A4.962 4.962 0 0 1 18 11v8z"/>|,
      ~S|<path d="M13 6c0-.712.153-1.387.422-2H6c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-7.422A4.962 4.962 0 0 1 18 11a5 5 0 0 1-5-5z"/>|
    )
  end

  @doc """
  Renders the `message_x` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_x />
  <Boxicons.message_x class="w-4 h-4" />
  <Boxicons.message_x solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_x(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3v3.767L13.277 18H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14h-7.277L9 18.233V16H4V4h16v12z"/><path d="M9.707 13.707 12 11.414l2.293 2.293 1.414-1.414L13.414 10l2.293-2.293-1.414-1.414L12 8.586 9.707 6.293 8.293 7.707 10.586 10l-2.293 2.293z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .894-2 1.992v12.016C2 17.106 2.897 18 4 18h3v4l6.351-4H20c1.103 0 2-.894 2-1.992V3.992A1.998 1.998 0 0 0 20 2zm-3.293 11.293-1.414 1.414L12 11.414l-3.293 3.293-1.414-1.414L10.586 10 7.293 6.707l1.414-1.414L12 8.586l3.293-3.293 1.414 1.414L13.414 10l3.293 3.293z"/>|
    )
  end

  @doc """
  Renders the `add_to_queue` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.add_to_queue />
  <Boxicons.add_to_queue class="w-4 h-4" />
  <Boxicons.add_to_queue solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def add_to_queue(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H8c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM8 16V4h12l.002 12H8z"/><path d="M4 8H2v12c0 1.103.897 2 2 2h12v-2H4V8zm11-2h-2v3h-3v2h3v3h2v-3h3V9h-3z"/>|,
      ~S|<path d="M4 22h12v-2H4V8H2v12c0 1.103.897 2 2 2z"/><path d="M20 2H8c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm-2 9h-3v3h-2v-3h-3V9h3V6h2v3h3v2z"/>|
    )
  end

  @doc """
  Renders the `home_alt_2` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.home_alt_2 />
  <Boxicons.home_alt_2 class="w-4 h-4" />
  <Boxicons.home_alt_2 solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def home_alt_2(assigns) do
    svg(
      assigns,
      ~S|<path d="M12.71 2.29a1 1 0 0 0-1.42 0l-9 9a1 1 0 0 0 0 1.42A1 1 0 0 0 3 13h1v7a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-7h1a1 1 0 0 0 1-1 1 1 0 0 0-.29-.71zM6 20v-9.59l6-6 6 6V20z"/>|,
      ~S|<path d="M12.74 2.32a1 1 0 0 0-1.48 0l-9 10A1 1 0 0 0 3 14h2v7a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-7h2a1 1 0 0 0 1-1 1 1 0 0 0-.26-.68z"/>|
    )
  end

  @doc """
  Renders the `cricket_ball` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cricket_ball />
  <Boxicons.cricket_ball class="w-4 h-4" />
  <Boxicons.cricket_ball solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cricket_ball(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.07 4.93A10 10 0 0 0 4.93 19.07 10 10 0 0 0 19.07 4.93zM6.34 6.34a8 8 0 0 1 8.78-1.71l-.29.3.71.71.52-.53a9.53 9.53 0 0 1 .84.57L5.68 16.9a9.53 9.53 0 0 1-.57-.84l.53-.52-.71-.71-.29.29a8 8 0 0 1 1.7-8.78zm11.32 11.32a8 8 0 0 1-8.78 1.71l.29-.3-.71-.71-.52.53a9.53 9.53 0 0 1-.84-.57L18.32 7.1a9.53 9.53 0 0 1 .57.84l-.53.52.71.71.29-.29a8 8 0 0 1-1.7 8.78zm-6.37-2.12.71.7-1.41 1.42-.71-.66zm2.83-2.83.71.7-1.42 1.42-.7-.71zM17 9.88l.71.71L16.24 12l-.7-.71zm-4.29-1.42-.71-.7 1.41-1.42.71.71zm-2.83 2.83-.71-.7 1.42-1.42.7.71zm-2.83 2.83-.71-.71L7.76 12l.7.71z"/>|,
      ~S|<path d="m3.67 16.26.54.53-.62.61a9 9 0 0 0 .84 1.11L18.51 4.42a10.93 10.93 0 0 0-1.1-.83l-.62.61-.53-.53.48-.48A10 10 0 0 0 3.2 16.74zM14.86 5.07l.53.53L14 7l-.53-.53zm-2.79 2.8.52.53-1.39 1.4-.53-.53zm-2.8 2.8.53.53-1.4 1.39-.53-.53zm-2.8 2.79L7 14l-1.4 1.4-.53-.53zm.12 6.95.62-.61.53.53-.48.48A10 10 0 0 0 20.8 7.26l-.47.48-.54-.53.62-.61a9 9 0 0 0-.84-1.11L5.49 19.58a10.93 10.93 0 0 0 1.1.83zM18.4 8.61l.53.53-1.4 1.4L17 10zm-2.8 2.8.53.53-1.4 1.39-.53-.53zm-2.8 2.79.53.53-1.39 1.4-.54-.53zM10 17l.53.53-1.4 1.4-.53-.53z"/>|
    )
  end

  @doc """
  Renders the `data` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.data />
  <Boxicons.data class="w-4 h-4" />
  <Boxicons.data solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def data(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 17V7c0-2.168-3.663-4-8-4S4 4.832 4 7v10c0 2.168 3.663 4 8 4s8-1.832 8-4zM12 5c3.691 0 5.931 1.507 6 1.994C17.931 7.493 15.691 9 12 9S6.069 7.493 6 7.006C6.069 6.507 8.309 5 12 5zM6 9.607C7.479 10.454 9.637 11 12 11s4.521-.546 6-1.393v2.387c-.069.499-2.309 2.006-6 2.006s-5.931-1.507-6-2V9.607zM6 17v-2.393C7.479 15.454 9.637 16 12 16s4.521-.546 6-1.393v2.387c-.069.499-2.309 2.006-6 2.006s-5.931-1.507-6-2z"/>|,
      ~S|<path d="M20 6c0-2.168-3.663-4-8-4S4 3.832 4 6v2c0 2.168 3.663 4 8 4s8-1.832 8-4V6zm-8 13c-4.337 0-8-1.832-8-4v3c0 2.168 3.663 4 8 4s8-1.832 8-4v-3c0 2.168-3.663 4-8 4z"/><path d="M20 10c0 2.168-3.663 4-8 4s-8-1.832-8-4v3c0 2.168 3.663 4 8 4s8-1.832 8-4v-3z"/>|
    )
  end

  @doc """
  Renders the `lock_open` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.lock_open />
  <Boxicons.lock_open class="w-4 h-4" />
  <Boxicons.lock_open solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def lock_open(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 4c1.654 0 3 1.346 3 3h2c0-2.757-2.243-5-5-5S7 4.243 7 7v2H6c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-9c0-1.103-.897-2-2-2H9V7c0-1.654 1.346-3 3-3zm6.002 16H13v-2.278c.595-.347 1-.985 1-1.722 0-1.103-.897-2-2-2s-2 .897-2 2c0 .736.405 1.375 1 1.722V20H6v-9h12l.002 9z"/>|,
      ~S|<path d="M18 10H9V7c0-1.654 1.346-3 3-3s3 1.346 3 3h2c0-2.757-2.243-5-5-5S7 4.243 7 7v3H6a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8a2 2 0 0 0-2-2zm-7.939 5.499A2.002 2.002 0 0 1 14 16a1.99 1.99 0 0 1-1 1.723V20h-2v-2.277a1.992 1.992 0 0 1-.939-2.224z"/>|
    )
  end

  @doc """
  Renders the `stopwatch` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.stopwatch />
  <Boxicons.stopwatch class="w-4 h-4" />
  <Boxicons.stopwatch solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def stopwatch(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 5c-4.411 0-8 3.589-8 8s3.589 8 8 8 8-3.589 8-8-3.589-8-8-8zm0 14c-3.309 0-6-2.691-6-6s2.691-6 6-6 6 2.691 6 6-2.691 6-6 6z"/><path d="M11 9h2v5h-2zM9 2h6v2H9zm10.293 5.707-2-2 1.414-1.414 2 2z"/>|,
      ~S|<path d="M12 5c-4.411 0-8 3.589-8 8s3.589 8 8 8 8-3.589 8-8-3.589-8-8-8zm1 8h-2V8h2v5zM9 2h6v2H9zm9.707 2.293 2 2-1.414 1.414-2-2z"/>|
    )
  end

  @doc """
  Renders the `circle_quarter` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.circle_quarter />
  <Boxicons.circle_quarter class="w-4 h-4" />
  <Boxicons.circle_quarter solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def circle_quarter(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2h-1v11h11v-1A10 10 0 0 0 12 2zm1 9V4.06A8 8 0 0 1 19.94 11z"/>|,
      ~S|<path d="M12 2h-1v11h11v-1A10 10 0 0 0 12 2z"/>|
    )
  end

  @doc """
  Renders the `popsicle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.popsicle />
  <Boxicons.popsicle class="w-4 h-4" />
  <Boxicons.popsicle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def popsicle(assigns) do
    svg(
      assigns,
      ~S|<path d="M15 2a7 7 0 0 0-4.94 2l-7.78 7.82a1 1 0 0 0 0 1.41l3.54 3.54-3.54 3.53 1.42 1.42 3.53-3.54 3.54 3.54a1 1 0 0 0 1.41 0L20 13.94A7 7 0 0 0 15 2zm3.54 10.54-7.07 7.06-2.82-2.83-1.42-1.42-2.83-2.83 7.07-7.07a5 5 0 0 1 7.08 7.08z"/>|,
      ~S|<path d="M20 4a7 7 0 0 0-9.9 0l-7.82 7.82a1 1 0 0 0 0 1.41l3.54 3.54-3.54 3.53 1.42 1.42 3.53-3.54 3.54 3.54a1 1 0 0 0 1.41 0L20 13.94A7 7 0 0 0 20 4zm-2.7 2.7a3.33 3.33 0 0 0-4.6 0l-1.06-1.06a4.76 4.76 0 0 1 6.72 0z"/>|
    )
  end

  @doc """
  Renders the `plug` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.plug />
  <Boxicons.plug class="w-4 h-4" />
  <Boxicons.plug solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def plug(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 8h2v5c0 2.206 1.794 4 4 4h2v5h2v-5h2c2.206 0 4-1.794 4-4V8h2V6H3v2zm4 0h10v5c0 1.103-.897 2-2 2H9c-1.103 0-2-.897-2-2V8zm0-6h2v3H7zm8 0h2v3h-2z"/>|,
      ~S|<path d="M3 8h2v5c0 2.206 1.794 4 4 4h2v5h2v-5h2c2.206 0 4-1.794 4-4V8h2V6H3v2zm4-6h2v3H7zm8 0h2v3h-2z"/>|
    )
  end

  @doc """
  Renders the `show` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.show />
  <Boxicons.show class="w-4 h-4" />
  <Boxicons.show solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def show(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 9a3.02 3.02 0 0 0-3 3c0 1.642 1.358 3 3 3 1.641 0 3-1.358 3-3 0-1.641-1.359-3-3-3z"/><path d="M12 5c-7.633 0-9.927 6.617-9.948 6.684L1.946 12l.105.316C2.073 12.383 4.367 19 12 19s9.927-6.617 9.948-6.684l.106-.316-.105-.316C21.927 11.617 19.633 5 12 5zm0 12c-5.351 0-7.424-3.846-7.926-5C4.578 10.842 6.652 7 12 7c5.351 0 7.424 3.846 7.926 5-.504 1.158-2.578 5-7.926 5z"/>|,
      ~S|<path d="M12 5c-7.633 0-9.927 6.617-9.948 6.684L1.946 12l.105.316C2.073 12.383 4.367 19 12 19s9.927-6.617 9.948-6.684l.106-.316-.105-.316C21.927 11.617 19.633 5 12 5zm0 11c-2.206 0-4-1.794-4-4s1.794-4 4-4 4 1.794 4 4-1.794 4-4 4z"/><path d="M12 10c-1.084 0-2 .916-2 2s.916 2 2 2 2-.916 2-2-.916-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `message_rounded_edit` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_rounded_edit />
  <Boxicons.message_rounded_edit class="w-4 h-4" />
  <Boxicons.message_rounded_edit solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_rounded_edit(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.908 1.898 5.515 5 6.934V22l5.34-4.005C17.697 17.852 22 14.32 22 10c0-4.411-4.486-8-10-8zm0 14h-.333L9 18v-2.417l-.641-.247C5.67 14.301 4 12.256 4 10c0-3.309 3.589-6 8-6s8 2.691 8 6-3.589 6-8 6z"/><path d="M8.503 11.589v1.398h1.398l3.87-3.864-1.399-1.398zm5.927-3.125-1.398-1.398 1.067-1.067 1.398 1.398z"/>|,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.907 1.897 5.516 5 6.934V22l5.34-4.005C17.697 17.854 22 14.32 22 10c0-4.411-4.486-8-10-8zM9.302 13.986H7.503v-1.798l4.976-4.97 1.798 1.799-4.975 4.969zm5.823-5.816-1.799-1.798 1.372-1.371 1.799 1.798-1.372 1.371z"/>|
    )
  end

  @doc """
  Renders the `food_menu` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.food_menu />
  <Boxicons.food_menu class="w-4 h-4" />
  <Boxicons.food_menu solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def food_menu(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 2h2v20H3zm7 4h7v2h-7zm0 4h7v2h-7z"/><path d="M19 2H6v20h13c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 18H8V4h11v16z"/>|,
      ~S|<path d="M3 2h2v20H3zm16 0H6v20h13c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm-1 10H9v-2h9v2zm0-4H9V6h9v2z"/>|
    )
  end

  @doc """
  Renders the `cloud_lightning` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cloud_lightning />
  <Boxicons.cloud_lightning class="w-4 h-4" />
  <Boxicons.cloud_lightning solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cloud_lightning(assigns) do
    svg(
      assigns,
      ~S|<path d="m10 13-1 5h2v4l3.975-6H13l1-3z"/><path d="M18.944 10.112C18.507 6.67 15.56 4 12 4 9.244 4 6.85 5.611 5.757 8.15 3.609 8.792 2 10.819 2 13c0 2.757 2.243 5 5 5v-2c-1.654 0-3-1.346-3-3 0-1.403 1.199-2.756 2.673-3.015l.581-.103.192-.559C8.149 7.273 9.895 6 12 6c2.757 0 5 2.243 5 5v1h1c1.103 0 2 .897 2 2s-.897 2-2 2h-1v2h1c2.206 0 4-1.794 4-4a4.008 4.008 0 0 0-3.056-3.888z"/>|,
      ~S|<path d="M18.944 10.112C18.507 6.67 15.56 4 12 4 9.244 4 6.85 5.611 5.757 8.15 3.609 8.792 2 10.82 2 13c0 2.757 2.243 5 5 5h1.333L10 13h4l-2 3h2.975l-1.325 2H18c2.206 0 4-1.794 4-4a4.01 4.01 0 0 0-3.056-3.888zM11 18H8.333L8 19h3v3l2.649-4H11.5z"/>|
    )
  end

  @doc """
  Renders the `check_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.check_circle />
  <Boxicons.check_circle class="w-4 h-4" />
  <Boxicons.check_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def check_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M9.999 13.587 7.7 11.292l-1.412 1.416 3.713 3.705 6.706-6.706-1.414-1.414z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-1.999 14.413-3.713-3.705L7.7 11.292l2.299 2.295 5.294-5.294 1.414 1.414-6.706 6.706z"/>|
    )
  end

  @doc """
  Renders the `happy_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.happy_alt />
  <Boxicons.happy_alt class="w-4 h-4" />
  <Boxicons.happy_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def happy_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M12 18c5 0 6-5 6-5H6s1 5 6 5z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm3.493 6a1.494 1.494 0 1 1-.001 2.987A1.494 1.494 0 0 1 15.493 8zM8.5 8a1.5 1.5 0 1 1-.001 3.001A1.5 1.5 0 0 1 8.5 8zM12 18c-5 0-6-5-6-5h12s-1 5-6 5z"/>|
    )
  end

  @doc """
  Renders the `blanket` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.blanket />
  <Boxicons.blanket class="w-4 h-4" />
  <Boxicons.blanket solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def blanket(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H7C4.243 2 2 4.243 2 7v10c0 2.757 2.243 5 5 5h12c1.654 0 3-1.346 3-3s-1.346-3-3-3H6v2h13a1 1 0 0 1 0 2H7c-1.654 0-3-1.346-3-3s1.346-3 3-3h13c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 10H7a4.973 4.973 0 0 0-3 1.002V7c0-1.654 1.346-3 3-3h13v8z"/>|,
      ~S|<path d="M20 2H7C4.243 2 2 4.243 2 7v10c0 2.757 2.243 5 5 5h12c1.654 0 3-1.346 3-3s-1.346-3-3-3H6v2h13a1 1 0 0 1 0 2H7c-1.654 0-3-1.346-3-3s1.346-3 3-3h13c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM4 13h.003L4 13.002V13z"/>|
    )
  end

  @doc """
  Renders the `lock` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.lock />
  <Boxicons.lock class="w-4 h-4" />
  <Boxicons.lock solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def lock(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C9.243 2 7 4.243 7 7v2H6c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-9c0-1.103-.897-2-2-2h-1V7c0-2.757-2.243-5-5-5zM9 7c0-1.654 1.346-3 3-3s3 1.346 3 3v2H9V7zm9.002 13H13v-2.278c.595-.347 1-.985 1-1.722 0-1.103-.897-2-2-2s-2 .897-2 2c0 .736.405 1.375 1 1.722V20H6v-9h12l.002 9z"/>|,
      ~S|<path d="M12 2C9.243 2 7 4.243 7 7v3H6a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8a2 2 0 0 0-2-2h-1V7c0-2.757-2.243-5-5-5zM9 7c0-1.654 1.346-3 3-3s3 1.346 3 3v3H9V7zm4 10.723V20h-2v-2.277a1.993 1.993 0 0 1 .567-3.677A2.001 2.001 0 0 1 14 16a1.99 1.99 0 0 1-1 1.723z"/>|
    )
  end

  @doc """
  Renders the `volume_low` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.volume_low />
  <Boxicons.volume_low class="w-4 h-4" />
  <Boxicons.volume_low solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def volume_low(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 17h2.697l5.748 3.832a1.004 1.004 0 0 0 1.027.05A1 1 0 0 0 14 20V4a1 1 0 0 0-1.554-.832L6.697 7H4c-1.103 0-2 .897-2 2v6c0 1.103.897 2 2 2zm0-8h3c.033 0 .061-.016.093-.019a1.027 1.027 0 0 0 .379-.116c.026-.014.057-.017.082-.033L12 5.868v12.264l-4.445-2.964c-.025-.018-.056-.02-.082-.033a.977.977 0 0 0-.382-.116C7.059 15.016 7.032 15 7 15H4V9zm12-2v10c1.225-1.1 2-3.229 2-5s-.775-3.9-2-5z"/>|,
      ~S|<path d="M4 17h2.697L14 21.868V2.132L6.697 7H4c-1.103 0-2 .897-2 2v6c0 1.103.897 2 2 2zM16 7v10c1.225-1.1 2-3.229 2-5s-.775-3.9-2-5z"/>|
    )
  end

  @doc """
  Renders the `user_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.user_circle />
  <Boxicons.user_circle class="w-4 h-4" />
  <Boxicons.user_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def user_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2A10.13 10.13 0 0 0 2 12a10 10 0 0 0 4 7.92V20h.1a9.7 9.7 0 0 0 11.8 0h.1v-.08A10 10 0 0 0 22 12 10.13 10.13 0 0 0 12 2zM8.07 18.93A3 3 0 0 1 11 16.57h2a3 3 0 0 1 2.93 2.36 7.75 7.75 0 0 1-7.86 0zm9.54-1.29A5 5 0 0 0 13 14.57h-2a5 5 0 0 0-4.61 3.07A8 8 0 0 1 4 12a8.1 8.1 0 0 1 8-8 8.1 8.1 0 0 1 8 8 8 8 0 0 1-2.39 5.64z"/><path d="M12 6a3.91 3.91 0 0 0-4 4 3.91 3.91 0 0 0 4 4 3.91 3.91 0 0 0 4-4 3.91 3.91 0 0 0-4-4zm0 6a1.91 1.91 0 0 1-2-2 1.91 1.91 0 0 1 2-2 1.91 1.91 0 0 1 2 2 1.91 1.91 0 0 1-2 2z"/>|,
      ~S|<path d="M12 2C6.579 2 2 6.579 2 12s4.579 10 10 10 10-4.579 10-10S17.421 2 12 2zm0 5c1.727 0 3 1.272 3 3s-1.273 3-3 3c-1.726 0-3-1.272-3-3s1.274-3 3-3zm-5.106 9.772c.897-1.32 2.393-2.2 4.106-2.2h2c1.714 0 3.209.88 4.106 2.2C15.828 18.14 14.015 19 12 19s-3.828-.86-5.106-2.228z"/>|
    )
  end

  @doc """
  Renders the `ghost` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.ghost />
  <Boxicons.ghost class="w-4 h-4" />
  <Boxicons.ghost solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def ghost(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2c-4.963 0-9 4.038-9 9v8h.051c.245 1.691 1.69 3 3.449 3 1.174 0 2.074-.417 2.672-1.174a3.99 3.99 0 0 0 5.668-.014c.601.762 1.504 1.188 2.66 1.188 1.93 0 3.5-1.57 3.5-3.5V11c0-4.962-4.037-9-9-9zm7 16.5c0 .827-.673 1.5-1.5 1.5-.449 0-1.5 0-1.5-2v-1h-2v1c0 1.103-.897 2-2 2s-2-.897-2-2v-1H8v1c0 1.845-.774 2-1.5 2-.827 0-1.5-.673-1.5-1.5V11c0-3.86 3.141-7 7-7s7 3.14 7 7v7.5z"/>|,
      ~S|<path d="M3 11v8h.051c.245 1.692 1.69 3 3.449 3 1.174 0 2.074-.417 2.672-1.174a3.99 3.99 0 0 0 5.668-.014c.601.762 1.504 1.188 2.66 1.188 1.93 0 3.5-1.57 3.5-3.5V11c0-4.962-4.037-9-9-9s-9 4.038-9 9zm6 1c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2zm6-4c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2z"/>|
    )
  end

  @doc """
  Renders the `caret_up_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.caret_up_circle />
  <Boxicons.caret_up_circle class="w-4 h-4" />
  <Boxicons.caret_up_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def caret_up_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 14h10l-5-6z"/><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/>|,
      ~S|<path d="M12 2C6.485 2 2 6.486 2 12s4.485 10 10 10c5.514 0 10-4.486 10-10S17.514 2 12 2zM7 14l5-6 5 6H7z"/>|
    )
  end

  @doc """
  Renders the `arch` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.arch />
  <Boxicons.arch class="w-4 h-4" />
  <Boxicons.arch solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def arch(assigns) do
    svg(
      assigns,
      ~S|<path d="M8 22h1v-6.995c.006-.502.177-3.005 3-3.005s2.994 2.503 3 3v7h7v-2h-1V4h1V2H2v2h1v16H2v2h6zM19 4v2H5V4h14zM5 8h14v12h-2v-5c0-1.729-1.045-5-5-5s-5 3.271-5 5v5H5V8z"/>|,
      ~S|<path d="M21 8V6H3v14H2v2h6v-7c0-.163.046-4 4-4 3.821 0 3.993 3.602 4 4v7h6v-2h-1V8zM2 2h20v2H2z"/>|
    )
  end

  @doc """
  Renders the `album` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.album />
  <Boxicons.album class="w-4 h-4" />
  <Boxicons.album solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def album(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2a10 10 0 1 0 10 10A10 10 0 0 0 12 2zm0 18a8 8 0 1 1 8-8 8 8 0 0 1-8 8z"/><path d="M12 6a6 6 0 0 0-6 6h2a4 4 0 0 1 4-4z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-4.607 8.055A4.956 4.956 0 0 0 7 12H5a6.978 6.978 0 0 1 2.051-4.95 6.978 6.978 0 0 1 2.225-1.5l.779 1.842c-.596.252-1.13.612-1.59 1.072s-.82.995-1.072 1.591zm4.6 3.945a2.007 2.007 0 1 1 0-4.014 2.007 2.007 0 0 1 0 4.014z"/>|
    )
  end

  @doc """
  Renders the `arrow_from_right` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.arrow_from_right />
  <Boxicons.arrow_from_right class="w-4 h-4" />
  <Boxicons.arrow_from_right solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def arrow_from_right(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 6h2v12h-2zm-2 5H7.414l4.293-4.293-1.414-1.414L3.586 12l6.707 6.707 1.414-1.414L7.414 13H16z"/>|,
      ~S|<path d="M18 6h2v12h-2zm-8 12v-5h6v-2h-6V6l-6 6z"/>|
    )
  end

  @doc """
  Renders the `paper_plane` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.paper_plane />
  <Boxicons.paper_plane class="w-4 h-4" />
  <Boxicons.paper_plane solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def paper_plane(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.56,3.34a1,1,0,0,0-1-.08l-17,8a1,1,0,0,0-.57.92,1,1,0,0,0,.6.9L8,15.45v6.72L13.84,18l4.76,2.08a.93.93,0,0,0,.4.09,1,1,0,0,0,.52-.15,1,1,0,0,0,.48-.79l1-15A1,1,0,0,0,20.56,3.34ZM18.1,17.68l-5.27-2.31L16,9.17,8.35,13.42,5.42,12.13,18.89,5.79Z"/>|,
      ~S|<path d="m2.6 13.083 3.452 1.511L16 9.167l-6 7 8.6 3.916a1 1 0 0 0 1.399-.85l1-15a1.002 1.002 0 0 0-1.424-.972l-17 8a1.002 1.002 0 0 0 .025 1.822zM8 22.167l4.776-2.316L8 17.623z"/>|
    )
  end

  @doc """
  Renders the `alarm_off` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.alarm_off />
  <Boxicons.alarm_off class="w-4 h-4" />
  <Boxicons.alarm_off solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def alarm_off(assigns) do
    svg(
      assigns,
      ~S|<path d="m20.292 6.708-3.01-3 1.412-1.417 3.01 3zm1.415 13.585-2.287-2.287C20.409 16.563 21 14.838 21 13c0-4.879-4.121-9-9-9-1.838 0-3.563.591-5.006 1.58L5.91 4.496l.788-.79-1.416-1.412-.786.788-.789-.789-1.414 1.414 18 18 1.414-1.414zM12 6c3.794 0 7 3.206 7 7 0 1.292-.387 2.507-1.027 3.559L15.414 14H17v-2h-3.586L13 11.586V8h-2v1.586L8.441 7.027C9.493 6.387 10.708 6 12 6zM4.305 8.426A8.792 8.792 0 0 0 3 13c0 4.879 4.121 9 9 9a8.792 8.792 0 0 0 4.574-1.305l-1.461-1.461A6.801 6.801 0 0 1 12 20c-3.794 0-7-3.206-7-7 0-1.111.281-2.169.766-3.113L4.305 8.426z"/>|,
      ~S|<path d="m20.292 6.708-3.01-3 1.412-1.417 3.01 3zm1.415 13.585-2.287-2.288C20.409 16.563 21 14.837 21 13c0-4.878-4.121-9-9-9-1.838 0-3.563.59-5.006 1.581L5.91 4.496l.788-.79-1.416-1.412-.786.788-.789-.789-1.414 1.414 18 18 1.414-1.414zM17 14h-1.586l-2-2H17v2zm-6-6h2v3.586l-2-2V8zm1 14c1.658 0 3.224-.485 4.574-1.305L4.305 8.426A8.794 8.794 0 0 0 3 13c0 4.878 4.122 9 9 9z"/>|
    )
  end

  @doc """
  Renders the `flag` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.flag />
  <Boxicons.flag class="w-4 h-4" />
  <Boxicons.flag solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def flag(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 4H6V2H4v18H3v2h4v-2H6v-5h13a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1zm-1 9H6V6h12v7z"/>|,
      ~S|<path d="M19 4H6V2H4v18H3v2h4v-2H6v-5h13a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1z"/>|
    )
  end

  @doc """
  Renders the `shield_x` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shield_x />
  <Boxicons.shield_x class="w-4 h-4" />
  <Boxicons.shield_x solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def shield_x(assigns) do
    svg(
      assigns,
      ~S|<path d="m20.48 6.105-8-4a1 1 0 0 0-.895 0l-8 4a1.002 1.002 0 0 0-.547.795c-.011.107-.961 10.767 8.589 15.014a.99.99 0 0 0 .812 0c9.55-4.247 8.6-14.906 8.589-15.014a1.001 1.001 0 0 0-.548-.795zm-8.447 13.792C5.265 16.625 4.944 9.642 4.999 7.635l7.034-3.517 7.029 3.515c.038 1.989-.328 9.018-7.029 12.264z"/><path d="M14.293 8.293 12 10.586 9.707 8.293 8.293 9.707 10.586 12l-2.293 2.293 1.414 1.414L12 13.414l2.293 2.293 1.414-1.414L13.414 12l2.293-2.293z"/>|,
      ~S|<path d="M11.492 21.771c.294.157.663.157.957-.001 8.012-4.304 8.581-12.713 8.574-15.104a.988.988 0 0 0-.596-.903l-8.051-3.565a1.005 1.005 0 0 0-.813.001L3.57 5.765a.988.988 0 0 0-.592.891c-.034 2.379.445 10.806 8.514 15.115zM8.293 9.707l1.414-1.414L12 10.586l2.293-2.293 1.414 1.414L13.414 12l2.293 2.293-1.414 1.414L12 13.414l-2.293 2.293-1.414-1.414L10.586 12 8.293 9.707z"/>|
    )
  end

  @doc """
  Renders the `bot` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bot />
  <Boxicons.bot class="w-4 h-4" />
  <Boxicons.bot solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bot(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.928 11.607c-.202-.488-.635-.605-.928-.633V8c0-1.103-.897-2-2-2h-6V4.61c.305-.274.5-.668.5-1.11a1.5 1.5 0 0 0-3 0c0 .442.195.836.5 1.11V6H5c-1.103 0-2 .897-2 2v2.997l-.082.006A1 1 0 0 0 1.99 12v2a1 1 0 0 0 1 1H3v5c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2v-5a1 1 0 0 0 1-1v-1.938a1.006 1.006 0 0 0-.072-.455zM5 20V8h14l.001 3.996L19 12v2l.001.005.001 5.995H5z"/><path d="M8 16h8v2H8z"/>|,
      ~S|<path d="M21 10.975V8a2 2 0 0 0-2-2h-6V4.688c.305-.274.5-.668.5-1.11a1.5 1.5 0 0 0-3 0c0 .442.195.836.5 1.11V6H5a2 2 0 0 0-2 2v2.998l-.072.005A.999.999 0 0 0 2 12v2a1 1 0 0 0 1 1v5a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-5a1 1 0 0 0 1-1v-1.938a1.004 1.004 0 0 0-.072-.455c-.202-.488-.635-.605-.928-.632zM7 12c0-1.104.672-2 1.5-2s1.5.896 1.5 2-.672 2-1.5 2S7 13.104 7 12zm8.998 6c-1.001-.003-7.997 0-7.998 0v-2s7.001-.002 8.002 0l-.004 2zm-.498-4c-.828 0-1.5-.896-1.5-2s.672-2 1.5-2 1.5.896 1.5 2-.672 2-1.5 2z"/>|
    )
  end

  @doc """
  Renders the `film` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.film />
  <Boxicons.film class="w-4 h-4" />
  <Boxicons.film solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def film(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM9 11V5h6v6H9zm6 2v6H9v-6h6zM5 5h2v2H5V5zm0 4h2v2H5V9zm0 4h2v2H5v-2zm0 4h2v2H5v-2zm14.002 2H17v-2h2.002v2zm-.001-4H17v-2h2.001v2zm0-4H17V9h2.001v2zM17 7V5h2v2h-2z"/>|,
      ~S|<path d="M19 4v1h-2V3H7v2H5V3H3v18h2v-2h2v2h10v-2h2v2h2V3h-2v1zM5 7h2v2H5V7zm0 4h2v2H5v-2zm0 6v-2h2v2H5zm12 0v-2h2v2h-2zm2-4h-2v-2h2v2zm-2-4V7h2v2h-2z"/>|
    )
  end

  @doc """
  Renders the `shield_plus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shield_plus />
  <Boxicons.shield_plus class="w-4 h-4" />
  <Boxicons.shield_plus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def shield_plus(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.63 21.91A.9.9 0 0 0 12 22a1 1 0 0 0 .41-.09C22 17.67 21 7 21 6.9a1 1 0 0 0-.55-.79l-8-4a1 1 0 0 0-.9 0l-8 4A1 1 0 0 0 3 6.9c0 .1-.92 10.77 8.63 15.01zM5 7.63l7-3.51 7 3.51c.05 2-.27 9-7 12.27C5.26 16.63 4.94 9.64 5 7.63z"/><path d="M11.06 16h2v-3h3.01v-2h-3.01V8h-2v3h-3v2h3v3z"/>|,
      ~S|<path d="m20.43 5.76-8-3.56a1 1 0 0 0-.82 0l-8 3.56a1 1 0 0 0-.59.9c0 2.37.44 10.8 8.51 15.11a1 1 0 0 0 1 0c8-4.3 8.58-12.71 8.57-15.1a1 1 0 0 0-.67-.91zm-4.43 7h-3v3h-2v-3H8v-2h3v-3h2v3h3z"/>|
    )
  end

  @doc """
  Renders the `bolt_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bolt_circle />
  <Boxicons.bolt_circle class="w-4 h-4" />
  <Boxicons.bolt_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bolt_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="m13 6-6 7h4v5l6-7h-4z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-1 16v-5H7l6-7v5h4l-6 7z"/>|
    )
  end

  @doc """
  Renders the `joystick` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.joystick />
  <Boxicons.joystick class="w-4 h-4" />
  <Boxicons.joystick solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def joystick(assigns) do
    svg(
      assigns,
      ~S|<path d="M22 8.65A5 5 0 0 0 17 4H7a5 5 0 0 0-5 4.74A2 2 0 0 0 2 9v7.5A3.48 3.48 0 0 0 5.5 20c1.43 0 2.32-1.06 3.19-2.09.32-.37.65-.76 1-1.1a4.81 4.81 0 0 1 1.54-.75 6.61 6.61 0 0 1 1.54 0 4.81 4.81 0 0 1 1.54.75c.35.34.68.73 1 1.1.87 1 1.76 2.09 3.19 2.09a3.48 3.48 0 0 0 3.5-3.5V9a2.09 2.09 0 0 0 0-.26zm-2 7.85a1.5 1.5 0 0 1-1.5 1.5c-.5 0-1-.64-1.66-1.38-.34-.39-.72-.85-1.15-1.26a6.68 6.68 0 0 0-2.46-1.25 6.93 6.93 0 0 0-2.46 0 6.68 6.68 0 0 0-2.46 1.25c-.43.41-.81.87-1.15 1.26C6.54 17.36 6 18 5.5 18A1.5 1.5 0 0 1 4 16.5V9a.77.77 0 0 0 0-.15A3 3 0 0 1 7 6h10a3 3 0 0 1 3 2.72v.12A.86.86 0 0 0 20 9z"/>|,
      ~S|<path d="M21.986 9.74a3.193 3.193 0 0 0-.008-.088A5.003 5.003 0 0 0 17 5H7a4.97 4.97 0 0 0-4.987 4.737c-.01.079-.013.161-.013.253v6.51c0 .925.373 1.828 1.022 2.476A3.524 3.524 0 0 0 5.5 20c1.8 0 2.504-1 3.5-3 .146-.292.992-2 3-2 1.996 0 2.853 1.707 3 2 1.004 2 1.7 3 3.5 3 .925 0 1.828-.373 2.476-1.022A3.524 3.524 0 0 0 22 16.5V10c0-.095-.004-.18-.014-.26zM7 12.031a2 2 0 1 1-.001-3.999A2 2 0 0 1 7 12.031zm10-5a1 1 0 1 1 0 2 1 1 0 1 1 0-2zm-2 4a1 1 0 1 1 0-2 1 1 0 1 1 0 2zm2 2a1 1 0 1 1 0-2 1 1 0 1 1 0 2zm2-2a1 1 0 1 1 0-2 1 1 0 1 1 0 2z"/>|
    )
  end

  @doc """
  Renders the `compass` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.compass />
  <Boxicons.compass class="w-4 h-4" />
  <Boxicons.compass solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def compass(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="m8 16 5.991-2L16 8l-6 2z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm3 13-8 2 2-8 8-2-2 8z"/>|
    )
  end

  @doc """
  Renders the `caret_left_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.caret_left_circle />
  <Boxicons.caret_left_circle class="w-4 h-4" />
  <Boxicons.caret_left_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def caret_left_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 17V7l-6 5z"/><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm2 15-6-5 6-5v10z"/>|
    )
  end

  @doc """
  Renders the `building_house` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.building_house />
  <Boxicons.building_house class="w-4 h-4" />
  <Boxicons.building_house solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def building_house(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 2H9c-1.103 0-2 .897-2 2v5.586l-4.707 4.707A1 1 0 0 0 3 16v5a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1V4c0-1.103-.897-2-2-2zm-8 18H5v-5.586l3-3 3 3V20zm8 0h-6v-4a.999.999 0 0 0 .707-1.707L9 9.586V4h10v16z"/><path d="M11 6h2v2h-2zm4 0h2v2h-2zm0 4.031h2V12h-2zM15 14h2v2h-2zm-8 1h2v2H7z"/>|,
      ~S|<path d="M18.991 2H9.01C7.899 2 7 2.899 7 4.01v5.637l-4.702 4.642A1 1 0 0 0 3 16v5a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1V4.009C21 2.899 20.102 2 18.991 2zm-8.069 13.111V20H5v-5.568l2.987-2.949 2.935 3.003v.625zM13 9h-2V7h2v2zm4 8h-2v-2h2v2zm0-4h-2v-2h2v2zm0-4h-2V7h2v2z"/><path d="M7 15h2v2H7z"/>|
    )
  end

  @doc """
  Renders the `down_arrow_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.down_arrow_circle />
  <Boxicons.down_arrow_circle class="w-4 h-4" />
  <Boxicons.down_arrow_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def down_arrow_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 1.993C6.486 1.994 2 6.48 2 11.994c0 5.513 4.486 9.999 10 10 5.514 0 10-4.486 10-10s-4.485-10-10-10.001zm0 18.001c-4.411-.001-8-3.59-8-8 0-4.411 3.589-8 8-8.001 4.411.001 8 3.59 8 8.001s-3.589 8-8 8z"/><path d="M13 8h-2v4H7.991l4.005 4.005L16 12h-3z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 15-5-5h4V7h2v5h4l-5 5z"/>|
    )
  end

  @doc """
  Renders the `log_out` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.log_out />
  <Boxicons.log_out class="w-4 h-4" />
  <Boxicons.log_out solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def log_out(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 13v-2H7V8l-5 4 5 4v-3z"/><path d="M20 3h-9c-1.103 0-2 .897-2 2v4h2V5h9v14h-9v-4H9v4c0 1.103.897 2 2 2h9c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2z"/>|,
      ~S|<path d="M18 2H6a1 1 0 0 0-1 1v9l5-4v3h6v2h-6v3l-5-4v9a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1z"/>|
    )
  end

  @doc """
  Renders the `store_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.store_alt />
  <Boxicons.store_alt class="w-4 h-4" />
  <Boxicons.store_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def store_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M22 5c0-1.654-1.346-3-3-3H5C3.346 2 2 3.346 2 5v2.831c0 1.053.382 2.01 1 2.746V19c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2v-8.424c.618-.735 1-1.692 1-2.746V5zm-2 0v2.831c0 1.14-.849 2.112-1.891 2.167L18 10c-1.103 0-2-.897-2-2V4h3c.552 0 1 .449 1 1zM10 4h4v4c0 1.103-.897 2-2 2s-2-.897-2-2V4zM4 5c0-.551.448-1 1-1h3v4c0 1.103-.897 2-2 2l-.109-.003C4.849 9.943 4 8.971 4 7.831V5zm6 14v-3h4v3h-4zm6 0v-3c0-1.103-.897-2-2-2h-4c-1.103 0-2 .897-2 2v3H5v-7.131c.254.067.517.111.787.125A3.988 3.988 0 0 0 9 10.643c.733.832 1.807 1.357 3 1.357s2.267-.525 3-1.357a3.988 3.988 0 0 0 3.213 1.351c.271-.014.533-.058.787-.125V19h-3z"/>|,
      ~S|<path d="M19 2H5C3.346 2 2 3.346 2 5v2.831c0 1.053.382 2.01 1 2.746V20a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1v-5h4v5a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1v-9.424c.618-.735 1-1.692 1-2.746V5c0-1.654-1.346-3-3-3zm1 3v2.831c0 1.14-.849 2.112-1.891 2.167L18 10c-1.103 0-2-.897-2-2V4h3c.552 0 1 .449 1 1zM10 8V4h4v4c0 1.103-.897 2-2 2s-2-.897-2-2zM4 5c0-.551.448-1 1-1h3v4c0 1.103-.897 2-2 2l-.109-.003C4.849 9.943 4 8.971 4 7.831V5zm6 11H6v-3h4v3z"/>|
    )
  end

  @doc """
  Renders the `dock_right` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dock_right />
  <Boxicons.dock_right class="w-4 h-4" />
  <Boxicons.dock_right solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dock_right(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2zM5 5h9v14H5zm11 14V5h3v14z"/>|,
      ~S|<path d="M21 5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5zM5 5h9v14H5V5z"/>|
    )
  end

  @doc """
  Renders the `comment_error` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.comment_error />
  <Boxicons.comment_error class="w-4 h-4" />
  <Boxicons.comment_error solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def comment_error(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 6h2v5h-2zm0 6h2v2h-2z"/><path d="M20 2H4c-1.103 0-2 .897-2 2v18l5.333-4H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14H6.667L4 18V4h16v12z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v18l4-4h14c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm-7 13h-2v-2h2v2zm0-4h-2V5h2v6z"/>|
    )
  end

  @doc """
  Renders the `badge` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.badge />
  <Boxicons.badge class="w-4 h-4" />
  <Boxicons.badge solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def badge(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.965 8.521C19.988 8.347 20 8.173 20 8c0-2.378-2.143-4.288-4.521-3.964C14.786 2.802 13.466 2 12 2s-2.786.802-3.479 2.036C6.138 3.712 4 5.622 4 8c0 .173.012.347.035.521C2.802 9.214 2 10.535 2 12s.802 2.786 2.035 3.479A3.976 3.976 0 0 0 4 16c0 2.378 2.138 4.284 4.521 3.964C9.214 21.198 10.534 22 12 22s2.786-.802 3.479-2.036C17.857 20.284 20 18.378 20 16c0-.173-.012-.347-.035-.521C21.198 14.786 22 13.465 22 12s-.802-2.786-2.035-3.479zm-1.442 5.403-1.102.293.434 1.053c.095.23.145.483.145.73 0 1.103-.897 2-2 2-.247 0-.499-.05-.73-.145l-1.054-.434-.293 1.102a1.99 1.99 0 0 1-3.846 0l-.293-1.102-1.054.434A1.935 1.935 0 0 1 8 18c-1.103 0-2-.897-2-2 0-.247.05-.5.145-.73l.434-1.053-1.102-.293a1.993 1.993 0 0 1 0-3.848l1.102-.293-.434-1.053A1.932 1.932 0 0 1 6 8c0-1.103.897-2 2-2 .247 0 .499.05.73.145l1.054.434.293-1.102a1.99 1.99 0 0 1 3.846 0l.293 1.102 1.054-.434C15.501 6.05 15.753 6 16 6c1.103 0 2 .897 2 2 0 .247-.05.5-.145.73l-.434 1.053 1.102.293a1.993 1.993 0 0 1 0 3.848z"/>|,
      ~S|<path d="M19.965 8.521C19.988 8.347 20 8.173 20 8c0-2.379-2.143-4.288-4.521-3.965C14.786 2.802 13.466 2 12 2s-2.786.802-3.479 2.035C6.138 3.712 4 5.621 4 8c0 .173.012.347.035.521C2.802 9.215 2 10.535 2 12s.802 2.785 2.035 3.479A3.976 3.976 0 0 0 4 16c0 2.379 2.138 4.283 4.521 3.965C9.214 21.198 10.534 22 12 22s2.786-.802 3.479-2.035C17.857 20.283 20 18.379 20 16c0-.173-.012-.347-.035-.521C21.198 14.785 22 13.465 22 12s-.802-2.785-2.035-3.479z"/>|
    )
  end

  @doc """
  Renders the `disc` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.disc />
  <Boxicons.disc class="w-4 h-4" />
  <Boxicons.disc solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def disc(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2a10 10 0 1 0 10 10A10 10 0 0 0 12 2zm0 18a8 8 0 1 1 8-8 8 8 0 0 1-8 8z"/><path d="M12 8a4 4 0 1 0 4 4 4 4 0 0 0-4-4zm0 6a2 2 0 1 1 2-2 2 2 0 0 1-2 2z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 14c-2.206 0-4-1.794-4-4s1.794-4 4-4 4 1.794 4 4-1.794 4-4 4z"/>|
    )
  end

  @doc """
  Renders the `bookmark_alt_plus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bookmark_alt_plus />
  <Boxicons.bookmark_alt_plus class="w-4 h-4" />
  <Boxicons.bookmark_alt_plus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bookmark_alt_plus(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.5 2h-12C4.57 2 3 3.57 3 5.5V22l7-3.5 7 3.5v-9h5V5.5C22 3.57 20.43 2 18.5 2zM15 18.764l-5-2.5-5 2.5V5.5C5 4.673 5.673 4 6.5 4h8.852A3.451 3.451 0 0 0 15 5.5v13.264zM20 11h-3V5.5c0-.827.673-1.5 1.5-1.5s1.5.673 1.5 1.5V11z"/><path d="M11 7H9v2H7v2h2v2h2v-2h2V9h-2z"/>|,
      ~S|<path d="M18.5 2h-12C4.57 2 3 3.57 3 5.5V22l7-3.5 7 3.5v-9h5V5.5C22 3.57 20.43 2 18.5 2zM13 11h-2v2H9v-2H7V9h2V7h2v2h2v2zm7 0h-3V5.5c0-.827.673-1.5 1.5-1.5s1.5.673 1.5 1.5V11z"/>|
    )
  end

  @doc """
  Renders the `shopping_bag` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shopping_bag />
  <Boxicons.shopping_bag class="w-4 h-4" />
  <Boxicons.shopping_bag solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def shopping_bag(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 22h14c1.103 0 2-.897 2-2V9a1 1 0 0 0-1-1h-3V7c0-2.757-2.243-5-5-5S7 4.243 7 7v1H4a1 1 0 0 0-1 1v11c0 1.103.897 2 2 2zM9 7c0-1.654 1.346-3 3-3s3 1.346 3 3v1H9V7zm-4 3h2v2h2v-2h6v2h2v-2h2l.002 10H5V10z"/>|,
      ~S|<path d="M5 22h14a2 2 0 0 0 2-2V9a1 1 0 0 0-1-1h-3v-.777c0-2.609-1.903-4.945-4.5-5.198A5.005 5.005 0 0 0 7 7v1H4a1 1 0 0 0-1 1v11a2 2 0 0 0 2 2zm12-12v2h-2v-2h2zM9 7c0-1.654 1.346-3 3-3s3 1.346 3 3v1H9V7zm-2 3h2v2H7v-2z"/>|
    )
  end

  @doc """
  Renders the `drink` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.drink />
  <Boxicons.drink class="w-4 h-4" />
  <Boxicons.drink solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def drink(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.832 4.555A1 1 0 0 0 20 3H4a1 1 0 0 0-.832 1.554L11 16.303V20H8v2h8v-2h-3v-3.697l7.832-11.748zM12 14.197 8.535 9h6.93L12 14.197zM18.132 5l-1.333 2H7.201L5.868 5h12.264z"/>|,
      ~S|<path d="M20.832 4.555A1 1 0 0 0 20 3H4a1 1 0 0 0-.832 1.554L11 16.303V20H8v2h8v-2h-3v-3.697l7.832-11.748zm-2.7.445-2 3H7.868l-2-3h12.264z"/>|
    )
  end

  @doc """
  Renders the `message_rounded_add` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_rounded_add />
  <Boxicons.message_rounded_add class="w-4 h-4" />
  <Boxicons.message_rounded_add solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_rounded_add(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.908 1.898 5.515 5 6.934V22l5.34-4.005C17.697 17.852 22 14.32 22 10c0-4.411-4.486-8-10-8zm0 14h-.333L9 18v-2.417l-.641-.247C5.67 14.301 4 12.256 4 10c0-3.309 3.589-6 8-6s8 2.691 8 6-3.589 6-8 6z"/><path d="M13 6h-2v3H8v2h3v3h2v-3h3V9h-3z"/>|,
      ~S|<path d="M12 2C6.486 2 2 5.589 2 10c0 2.907 1.897 5.515 5 6.934V22l5.34-4.005C17.697 17.853 22 14.32 22 10c0-4.411-4.486-8-10-8zm4 9h-3v3h-2v-3H8V9h3V6h2v3h3v2z"/>|
    )
  end

  @doc """
  Renders the `cloud` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cloud />
  <Boxicons.cloud class="w-4 h-4" />
  <Boxicons.cloud solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cloud(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.944 11.112C18.507 7.67 15.56 5 12 5 9.244 5 6.85 6.611 5.757 9.15 3.609 9.792 2 11.82 2 14c0 2.757 2.243 5 5 5h11c2.206 0 4-1.794 4-4a4.01 4.01 0 0 0-3.056-3.888zM18 17H7c-1.654 0-3-1.346-3-3 0-1.404 1.199-2.756 2.673-3.015l.581-.102.192-.558C8.149 8.274 9.895 7 12 7c2.757 0 5 2.243 5 5v1h1c1.103 0 2 .897 2 2s-.897 2-2 2z"/>|,
      ~S|<path d="M18.944 11.112C18.507 7.67 15.56 5 12 5 9.244 5 6.85 6.611 5.757 9.15 3.609 9.792 2 11.82 2 14c0 2.757 2.243 5 5 5h11c2.206 0 4-1.794 4-4a4.01 4.01 0 0 0-3.056-3.888z"/>|
    )
  end

  @doc """
  Renders the `bible` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bible />
  <Boxicons.bible class="w-4 h-4" />
  <Boxicons.bible solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bible(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 22h15v-2H6.012C5.55 19.988 5 19.805 5 19s.55-.988 1.012-1H21V4c0-1.103-.897-2-2-2H6c-1.206 0-3 .799-3 3v14c0 2.201 1.794 3 3 3zM5 8V5c0-.805.55-.988 1-1h13v12H5V8z"/><path d="M11 14h2v-4h2V8h-2V6h-2v2H9v2h2z"/>|,
      ~S|<path d="M6 22h15v-2H6.012C5.55 19.988 5 19.805 5 19s.55-.988 1.012-1H21V4a2 2 0 0 0-2-2H6c-1.206 0-3 .799-3 3v14c0 2.201 1.794 3 3 3zM8 7h3V5h2v2h3v2h-3v6h-2V9H8V7z"/>|
    )
  end

  @doc """
  Renders the `checkbox_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.checkbox_minus />
  <Boxicons.checkbox_minus class="w-4 h-4" />
  <Boxicons.checkbox_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def checkbox_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="M9.01 11h6v2h-6z"/><path d="M17 5H7a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2zM7 17V7h10v10z"/>|,
      ~S|<path d="M17 5H7a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2zm-1 8H8v-2h8z"/>|
    )
  end

  @doc """
  Renders the `note` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.note />
  <Boxicons.note class="w-4 h-4" />
  <Boxicons.note solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def note(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h8a.996.996 0 0 0 .707-.293l7-7a.997.997 0 0 0 .196-.293c.014-.03.022-.061.033-.093a.991.991 0 0 0 .051-.259c.002-.021.013-.041.013-.062V5c0-1.103-.897-2-2-2zM5 5h14v7h-6a1 1 0 0 0-1 1v6H5V5zm9 12.586V14h3.586L14 17.586z"/>|,
      ~S|<path d="M19 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h8l8-8V5a2 2 0 0 0-2-2zm-7 16v-7h7l-7 7z"/>|
    )
  end

  @doc """
  Renders the `bookmark_heart` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bookmark_heart />
  <Boxicons.bookmark_heart class="w-4 h-4" />
  <Boxicons.bookmark_heart solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bookmark_heart(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 22V4c0-1.103-.897-2-2-2H6c-1.103 0-2 .897-2 2v18l8-4.572L20 22zM6 10V4h12v14.553l-6-3.428-6 3.428V10z"/><path d="M15.409 9.512c.361-.372.585-.888.585-1.456s-.223-1.083-.585-1.456a1.962 1.962 0 0 0-1.412-.603S13.001 5.994 12 7.026c-1.001-1.032-1.997-1.029-1.997-1.029-.552 0-1.051.23-1.412.603-.362.373-.585.887-.585 1.456s.223 1.084.585 1.456L12 13.203l3.409-3.691z"/>|,
      ~S|<path d="M19 22V4c0-1.103-.897-2-2-2H7c-1.103 0-2 .897-2 2v18l7-4.666L19 22zM8.006 8.056c0-.568.224-1.083.585-1.456.361-.372.86-.603 1.412-.603 0 0 .996-.003 1.997 1.029 1.001-1.032 1.997-1.029 1.997-1.029.552 0 1.051.23 1.412.603s.585.888.585 1.456-.224 1.084-.585 1.456L12 13.203 8.591 9.512a2.083 2.083 0 0 1-.585-1.456z"/>|
    )
  end

  @doc """
  Renders the `paste` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.paste />
  <Boxicons.paste class="w-4 h-4" />
  <Boxicons.paste solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def paste(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 11V5c0-1.103-.897-2-2-2h-3a1 1 0 0 0-1-1H8a1 1 0 0 0-1 1H4c-1.103 0-2 .897-2 2v13c0 1.103.897 2 2 2h7c0 1.103.897 2 2 2h7c1.103 0 2-.897 2-2v-7c0-1.103-.897-2-2-2zm-9 2v5H4V5h3v2h8V5h3v6h-5c-1.103 0-2 .897-2 2zm2 7v-7h7l.001 7H13z"/>|,
      ~S|<path d="M9 4h6v2H9zm11 7h-7a2 2 0 0 0-2 2v7a2 2 0 0 0 2 2h7a2 2 0 0 0 2-2v-7a2 2 0 0 0-2-2z"/><path d="M21 9V6a2 2 0 0 0-2-2h-2a2 2 0 0 0-2-2H9a2 2 0 0 0-2 2H5a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h4v-9a2 2 0 0 1 2-2h10zM9 6V4h6v2H9z"/>|
    )
  end

  @doc """
  Renders the `archive_out` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.archive_out />
  <Boxicons.archive_out class="w-4 h-4" />
  <Boxicons.archive_out solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def archive_out(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.706 5.292-2.999-2.999A.996.996 0 0 0 18 2H6a.996.996 0 0 0-.707.293L2.294 5.292A.994.994 0 0 0 2 6v13c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6a.994.994 0 0 0-.294-.708zM6.414 4h11.172l1 1H5.414l1-1zM4 19V7h16l.002 12H4z"/><path d="M7 14h3v3h4v-3h3l-5-5z"/>|,
      ~S|<path d="m21.706 5.292-2.999-2.999A.996.996 0 0 0 18 2H6a.996.996 0 0 0-.707.293L2.294 5.292A.994.994 0 0 0 2 6v13c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6a.994.994 0 0 0-.294-.708zM6.414 4h11.172l1 1H5.414l1-1zM14 14v3h-4v-3H7l5-5 5 5h-3z"/>|
    )
  end

  @doc """
  Renders the `pencil` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pencil />
  <Boxicons.pencil class="w-4 h-4" />
  <Boxicons.pencil solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def pencil(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 21a1 1 0 0 0 .24 0l4-1a1 1 0 0 0 .47-.26L21 7.41a2 2 0 0 0 0-2.82L19.42 3a2 2 0 0 0-2.83 0L4.3 15.29a1.06 1.06 0 0 0-.27.47l-1 4A1 1 0 0 0 3.76 21 1 1 0 0 0 4 21zM18 4.41 19.59 6 18 7.59 16.42 6zM5.91 16.51 15 7.41 16.59 9l-9.1 9.1-2.11.52z"/>|,
      ~S|<path d="M8.707 19.707 18 10.414 13.586 6l-9.293 9.293a1.003 1.003 0 0 0-.263.464L3 21l5.242-1.03c.176-.044.337-.135.465-.263zM21 7.414a2 2 0 0 0 0-2.828L19.414 3a2 2 0 0 0-2.828 0L15 4.586 19.414 9 21 7.414z"/>|
    )
  end

  @doc """
  Renders the `grid` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.grid />
  <Boxicons.grid class="w-4 h-4" />
  <Boxicons.grid solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def grid(assigns) do
    svg(
      assigns,
      ~S|<path d="M15 3H4.984c-1.103 0-2 .897-2 2v14.016c0 1.103.897 2 2 2H19c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2h-4zm4 5h-3V5h3v3zM4.984 10h3v4.016h-3V10zm5 0H14v4.016H9.984V10zM16 10h3v4.016h-3V10zm-2-5v3H9.984V5H14zM7.984 5v3h-3V5h3zm-3 11.016h3v3h-3v-3zm5 3v-3H14v3H9.984zm6.016 0v-3h3.001v3H16z"/>|,
      ~S|<path d="M4 4h4v4H4zm6 0h4v4h-4zm6 0h4v4h-4zM4 10h4v4H4zm6 0h4v4h-4zm6 0h4v4h-4zM4 16h4v4H4zm6 0h4v4h-4zm6 0h4v4h-4z"/>|
    )
  end

  @doc """
  Renders the `checkbox` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.checkbox />
  <Boxicons.checkbox class="w-4 h-4" />
  <Boxicons.checkbox solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def checkbox(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 5c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h10c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2H7zm0 12V7h10l.002 10H7z"/>|,
      ~S|<path d="M7 19h10a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2H7a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2z"/>|
    )
  end

  @doc """
  Renders the `help_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.help_circle />
  <Boxicons.help_circle class="w-4 h-4" />
  <Boxicons.help_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def help_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 6a3.939 3.939 0 0 0-3.934 3.934h2C10.066 8.867 10.934 8 12 8s1.934.867 1.934 1.934c0 .598-.481 1.032-1.216 1.626a9.208 9.208 0 0 0-.691.599c-.998.997-1.027 2.056-1.027 2.174V15h2l-.001-.633c.001-.016.033-.386.441-.793.15-.15.339-.3.535-.458.779-.631 1.958-1.584 1.958-3.182A3.937 3.937 0 0 0 12 6zm-1 10h2v2h-2z"/><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm1 16h-2v-2h2v2zm.976-4.885c-.196.158-.385.309-.535.459-.408.407-.44.777-.441.793v.133h-2v-.167c0-.118.029-1.177 1.026-2.174.195-.195.437-.393.691-.599.734-.595 1.216-1.029 1.216-1.627a1.934 1.934 0 0 0-3.867.001h-2C8.066 7.765 9.831 6 12 6s3.934 1.765 3.934 3.934c0 1.597-1.179 2.55-1.958 3.181z"/>|
    )
  end

  @doc """
  Renders the `bookmarks` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bookmarks />
  <Boxicons.bookmarks class="w-4 h-4" />
  <Boxicons.bookmarks solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bookmarks(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 5H6c-1.103 0-2 .897-2 2v16l6-3.601L16 23V7c0-1.103-.897-2-2-2zm0 14.467-4-2.399-4 2.399V7h8v12.467z"/><path d="M18 1h-8c-1.103 0-2 .897-2 2h8c1.103 0 2 .897 2 2v10.443l2 2.489V3c0-1.103-.897-2-2-2z"/>|,
      ~S|<path d="M16.999 23V7c0-1.103-.897-2-2-2h-8c-1.103 0-2 .897-2 2v16l6-3.601 6 3.601z"/><path d="M15.585 3h1.414c1.103 0 2 .897 2 2v10.443l2 2.489V3c0-1.103-.897-2-2-2h-8c-1.103 0-2 .897-2 2h6.586z"/>|
    )
  end

  @doc """
  Renders the `spray_can` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.spray_can />
  <Boxicons.spray_can class="w-4 h-4" />
  <Boxicons.spray_can solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def spray_can(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.002 2h-4a1 1 0 0 0-1 1v3.812a5.998 5.998 0 0 0-3 5.188v.988L3 13l.002.072V21a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1v-9a5.999 5.999 0 0 0-3-5.188V3a1 1 0 0 0-1-1zm-3 4V4h2v2h-2zm5.001 14h-8v-6h8v6zm-8.001-8c0-2.206 1.794-4 4-4s4 1.794 4 4h-8zm8.001-9h2v2h-2zM16 3h2v2h-2zm0 3h2v2h-2zm3-3h2v2h-2zm0 3h2v2h-2zm0 3h2v2h-2z"/>|,
      ~S|<path d="M13.003 3h2v2h-2zM16 3h2v2h-2zm0 3h2v2h-2zm3-3h2v2h-2zm0 3h2v2h-2zm0 3h2v2h-2zM4.012 12v9a1 1 0 0 0 1 1H13a1 1 0 0 0 1-1v-9a4 4 0 0 0-4-4H8.012a4 4 0 0 0-4 4zM7.003 2h4v4h-4z"/>|
    )
  end

  @doc """
  Renders the `bong` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bong />
  <Boxicons.bong class="w-4 h-4" />
  <Boxicons.bong solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bong(assigns) do
    svg(
      assigns,
      ~S|<path d="m19.293 8.293-2.069 2.069A7.017 7.017 0 0 0 15 8.681V4h1V2H8v2h1v4.681A7.01 7.01 0 0 0 5 15c0 3.859 3.141 7 7 7s7-3.141 7-7a6.958 6.958 0 0 0-.652-2.934l2.359-2.359-1.414-1.414zm-8.959 1.998.666-.235V4h2v6.056l.666.235A5.006 5.006 0 0 1 16.886 14H7.114a5.006 5.006 0 0 1 3.22-3.709zM12 20a5.007 5.007 0 0 1-4.898-4h9.797A5.009 5.009 0 0 1 12 20z"/>|,
      ~S|<path d="m19.293 8.293-2.069 2.069A7.017 7.017 0 0 0 15 8.681V4h1V2H8v2h1v4.681A7.01 7.01 0 0 0 5 15c0 3.859 3.141 7 7 7s7-3.141 7-7a6.958 6.958 0 0 0-.652-2.934l2.359-2.359-1.414-1.414zm-8.959 1.998.666-.235V4h2v6.056l.666.235A5.006 5.006 0 0 1 16.886 14H7.114a5.006 5.006 0 0 1 3.22-3.709z"/>|
    )
  end

  @doc """
  Renders the `dislike` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dislike />
  <Boxicons.dislike class="w-4 h-4" />
  <Boxicons.dislike solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dislike(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H6.693A2.01 2.01 0 0 0 4.82 4.298l-2.757 7.351A1 1 0 0 0 2 12v2c0 1.103.897 2 2 2h5.612L8.49 19.367a2.004 2.004 0 0 0 .274 1.802c.376.52.982.831 1.624.831H12c.297 0 .578-.132.769-.36l4.7-5.64H20c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zm-8.469 17h-1.145l1.562-4.684A1 1 0 0 0 11 14H4v-1.819L6.693 5H16v9.638L11.531 20zM18 14V5h2l.001 9H18z"/>|,
      ~S|<path d="M20 3h-1v13h1a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2zM4 16h7l-1.122 3.368A2 2 0 0 0 11.775 22H12l5-5.438V3H6l-3.937 8.649-.063.293V14a2 2 0 0 0 2 2z"/>|
    )
  end

  @doc """
  Renders the `folder_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.folder_minus />
  <Boxicons.folder_minus class="w-4 h-4" />
  <Boxicons.folder_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def folder_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 5h-8.586L9.707 3.293A.996.996 0 0 0 9 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2zM4 19V7h16l.002 12H4z"/><path d="M7.874 12h8v2h-8z"/>|,
      ~S|<path d="M20 5h-9.586L8.707 3.293A.997.997 0 0 0 8 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2zm-4 9H8v-2h8v2z"/>|
    )
  end

  @doc """
  Renders the `message_square_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message_square_minus />
  <Boxicons.message_square_minus class="w-4 h-4" />
  <Boxicons.message_square_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message_square_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm4 14c0 2.206-1.794 4-4 4H4V8c0-2.206 1.794-4 4-4h8c2.206 0 4 1.794 4 4v8z"/><path d="M8 11h8v2H8z"/>|,
      ~S|<path d="M16 2H8C4.691 2 2 4.691 2 8v13a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm0 11H8v-2h8v2z"/>|
    )
  end

  @doc """
  Renders the `dice_5` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dice_5 />
  <Boxicons.dice_5 class="w-4 h-4" />
  <Boxicons.dice_5 solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def dice_5(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM5 19V5h14l.002 14H5z"/>|,
      ~S|<path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM8 17.5a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 8 17.5zm0-8a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 8 9.5zm4 4a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 12 13.5zm4 4a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 16 17.5zm0-8a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 16 9.5z"/>|
    )
  end

  @doc """
  Renders the `tennis_ball` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.tennis_ball />
  <Boxicons.tennis_ball class="w-4 h-4" />
  <Boxicons.tennis_ball solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def tennis_ball(assigns) do
    svg(
      assigns,
      ~S|<path d="M4.929 19.081c1.895 1.895 4.405 2.938 7.071 2.938s5.177-1.043 7.071-2.938c3.899-3.899 3.899-10.243 0-14.143C17.177 3.044 14.665 2 12 2S6.823 3.044 4.929 4.938c-3.899 3.899-3.899 10.244 0 14.143zm12.728-1.414a7.969 7.969 0 0 1-3.813 2.129c-.009-1.602.586-3.146 1.691-4.251 1.163-1.163 2.732-1.828 4.277-1.851a7.945 7.945 0 0 1-2.155 3.973zm2.325-5.965c-2.124-.021-4.284.853-5.861 2.429-1.532 1.532-2.327 3.68-2.263 5.881a7.946 7.946 0 0 1-5.516-2.345 7.97 7.97 0 0 1-2.332-5.512c.077.002.154.014.231.014 2.115 0 4.16-.804 5.637-2.28 1.58-1.58 2.457-3.739 2.43-5.873a7.948 7.948 0 0 1 5.349 2.337 7.96 7.96 0 0 1 2.325 5.349zM6.343 6.353a7.968 7.968 0 0 1 3.973-2.169c-.018 1.555-.685 3.124-1.851 4.291-1.104 1.103-2.642 1.696-4.238 1.691a7.929 7.929 0 0 1 2.116-3.813z"/>|,
      ~S|<path d="M4.929 19.071a9.953 9.953 0 0 0 6.692 2.906c-.463-2.773.365-5.721 2.5-7.856 2.136-2.135 5.083-2.963 7.856-2.5-.092-2.433-1.053-4.839-2.906-6.692s-4.26-2.814-6.692-2.906c.463 2.773-.365 5.721-2.5 7.856-2.136 2.135-5.083 2.963-7.856 2.5a9.944 9.944 0 0 0 2.906 6.692z"/><path d="M15.535 15.535a6.996 6.996 0 0 0-1.911 6.318 9.929 9.929 0 0 0 8.229-8.229 6.999 6.999 0 0 0-6.318 1.911zm-7.07-7.07a6.996 6.996 0 0 0 1.911-6.318 9.929 9.929 0 0 0-8.23 8.229 7 7 0 0 0 6.319-1.911z"/>|
    )
  end

  @doc """
  Renders the `wink_tongue` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.wink_tongue />
  <Boxicons.wink_tongue class="w-4 h-4" />
  <Boxicons.wink_tongue solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def wink_tongue(assigns) do
    svg(
      assigns,
      ~S|<path d="M15.5 9c-2 0-2.5 2-2.5 2h5s-.501-2-2.5-2z"/><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-2 16v-3h4v3c0 1.103-.897 2-2 2s-2-.897-2-2zm5.856 1.005c.085-.323.144-.656.144-1.005v-1.499C17.589 15.028 18 13 18 13H6s.412 2.028 2 3.501V18c0 .349.059.682.144 1.005A8.005 8.005 0 0 1 4 12c0-4.411 3.589-8 8-8s8 3.589 8 8a8.005 8.005 0 0 1-4.144 7.005z"/>|,
      ~S|<path d="M14 19v-4h-4v4c0 1.103.897 2 2 2s2-.897 2-2z"/><path d="M12 2C6.486 2 2 6.486 2 12c0 4.434 2.903 8.198 6.906 9.505A3.969 3.969 0 0 1 8 19v-2.499C6.412 15.027 6 13 6 13h12s-.411 2.027-2 3.501V19c0 .953-.349 1.816-.906 2.504C19.097 20.197 22 16.434 22 12c0-5.514-4.486-10-10-10zm-3.5 9a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 8.5 11zm4.5 0s.5-2 2.5-2c1.999 0 2.5 2 2.5 2h-5z"/>|
    )
  end

  @doc """
  Renders the `like` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.like />
  <Boxicons.like class="w-4 h-4" />
  <Boxicons.like solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def like(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 8h-5.612l1.123-3.367c.202-.608.1-1.282-.275-1.802S14.253 2 13.612 2H12c-.297 0-.578.132-.769.36L6.531 8H4c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2h13.307a2.01 2.01 0 0 0 1.873-1.298l2.757-7.351A1 1 0 0 0 22 12v-2c0-1.103-.897-2-2-2zM4 10h2v9H4v-9zm16 1.819L17.307 19H8V9.362L12.468 4h1.146l-1.562 4.683A.998.998 0 0 0 13 10h7v1.819z"/>|,
      ~S|<path d="M4 21h1V8H4a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2zM20 8h-7l1.122-3.368A2 2 0 0 0 12.225 2H12L7 7.438V21h11l3.912-8.596L22 12v-2a2 2 0 0 0-2-2z"/>|
    )
  end

  @doc """
  Renders the `image_add` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.image_add />
  <Boxicons.image_add class="w-4 h-4" />
  <Boxicons.image_add solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def image_add(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 5h13v7h2V5c0-1.103-.897-2-2-2H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h8v-2H4V5z"/><path d="m8 11-3 4h11l-4-6-3 4z"/><path d="M19 14h-2v3h-3v2h3v3h2v-3h3v-2h-3z"/>|,
      ~S|<path d="m9 13 3-4 3 4.5V12h4V5c0-1.103-.897-2-2-2H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h8v-4H5l3-4 1 2z"/><path d="M19 14h-2v3h-3v2h3v3h2v-3h3v-2h-3z"/>|
    )
  end

  @doc """
  Renders the `crop` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.crop />
  <Boxicons.crop class="w-4 h-4" />
  <Boxicons.crop solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def crop(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 7c0-1.103-.897-2-2-2H7V2H5v3H2v2h15v15h2v-3h3v-2h-3V7z"/><path d="M5 9v8c0 1.103.897 2 2 2h8v-2H7V9H5z"/>|,
      ~S|<path d="M19 7.5C19 6.121 17.879 5 16.5 5H8V2H5v3H2v3h14v14h3v-3h3v-3h-3V7.5z"/><path d="M8 10H5v6.5C5 17.879 6.121 19 7.5 19H14v-3H8v-6z"/>|
    )
  end

  @doc """
  Renders the `left_top_arrow_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.left_top_arrow_circle />
  <Boxicons.left_top_arrow_circle class="w-4 h-4" />
  <Boxicons.left_top_arrow_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def left_top_arrow_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.993 2.007a9.928 9.928 0 0 0-7.071 2.922c-3.899 3.899-3.899 10.243 0 14.143a9.931 9.931 0 0 0 7.071 2.923 9.928 9.928 0 0 0 7.071-2.923c3.899-3.899 3.899-10.243 0-14.143a9.927 9.927 0 0 0-7.071-2.922zm5.657 15.65a7.945 7.945 0 0 1-5.657 2.337c-2.141 0-4.15-.83-5.657-2.337-3.119-3.119-3.119-8.195 0-11.314a7.946 7.946 0 0 1 5.657-2.336c2.142 0 4.15.829 5.657 2.336 3.12 3.119 3.12 8.195 0 11.314z"/><path d="M14.657 9H8.993v5.663l2.125-2.124 3.215 3.214 1.414-1.414-3.215-3.214z"/>|,
      ~S|<path d="M19.071 19.071c3.898-3.899 3.898-10.244 0-14.143-3.899-3.898-10.243-3.898-14.143 0-3.898 3.899-3.898 10.244 0 14.143 3.9 3.899 10.244 3.899 14.143 0zM8.465 8.464h7.07l-2.828 2.829 3.535 3.536-1.414 1.414-3.535-3.536-2.828 2.829V8.464z"/>|
    )
  end

  @doc """
  Renders the `square_rounded` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.square_rounded />
  <Boxicons.square_rounded class="w-4 h-4" />
  <Boxicons.square_rounded solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def square_rounded(assigns) do
    svg(
      assigns,
      ~S|<path d="M17 2H7C4.243 2 2 4.243 2 7v10c0 2.757 2.243 5 5 5h10c2.757 0 5-2.243 5-5V7c0-2.757-2.243-5-5-5zm3 15c0 1.654-1.346 3-3 3H7c-1.654 0-3-1.346-3-3V7c0-1.654 1.346-3 3-3h10c1.654 0 3 1.346 3 3v10z"/>|,
      ~S|<path d="M17 2H7C4.243 2 2 4.243 2 7v10c0 2.757 2.243 5 5 5h10c2.757 0 5-2.243 5-5V7c0-2.757-2.243-5-5-5z"/>|
    )
  end

  @doc """
  Renders the `label` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.label />
  <Boxicons.label class="w-4 h-4" />
  <Boxicons.label solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def label(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.813 4.419A.997.997 0 0 0 16 4H3a1 1 0 0 0-.813 1.581L6.771 12l-4.585 6.419A1 1 0 0 0 3 20h13a.997.997 0 0 0 .813-.419l5-7a.997.997 0 0 0 0-1.162l-5-7zM15.485 18H4.943l3.87-5.419a.997.997 0 0 0 0-1.162L4.943 6h10.542l4.286 6-4.286 6z"/>|,
      ~S|<path d="M16.813 4.419A.997.997 0 0 0 16 4H3a1 1 0 0 0-.813 1.581L6.771 12l-4.585 6.419A1 1 0 0 0 3 20h13a.997.997 0 0 0 .813-.419l5-7a.997.997 0 0 0 0-1.162l-5-7z"/>|
    )
  end

  @doc """
  Renders the `coin_stack` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.coin_stack />
  <Boxicons.coin_stack class="w-4 h-4" />
  <Boxicons.coin_stack solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def coin_stack(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 22c3.976 0 8-1.374 8-4V6c0-2.626-4.024-4-8-4S4 3.374 4 6v12c0 2.626 4.024 4 8 4zm0-2c-3.722 0-6-1.295-6-2v-1.268C7.541 17.57 9.777 18 12 18s4.459-.43 6-1.268V18c0 .705-2.278 2-6 2zm0-16c3.722 0 6 1.295 6 2s-2.278 2-6 2-6-1.295-6-2 2.278-2 6-2zM6 8.732C7.541 9.57 9.777 10 12 10s4.459-.43 6-1.268V10c0 .705-2.278 2-6 2s-6-1.295-6-2V8.732zm0 4C7.541 13.57 9.777 14 12 14s4.459-.43 6-1.268V14c0 .705-2.278 2-6 2s-6-1.295-6-2v-1.268z"/>|,
      ~S|<path d="M12 10c3.976 0 8-1.374 8-4s-4.024-4-8-4-8 1.374-8 4 4.024 4 8 4z"/><path d="M4 10c0 2.626 4.024 4 8 4s8-1.374 8-4V8c0 2.626-4.024 4-8 4s-8-1.374-8-4v2z"/><path d="M4 14c0 2.626 4.024 4 8 4s8-1.374 8-4v-2c0 2.626-4.024 4-8 4s-8-1.374-8-4v2z"/><path d="M4 18c0 2.626 4.024 4 8 4s8-1.374 8-4v-2c0 2.626-4.024 4-8 4s-8-1.374-8-4v2z"/>|
    )
  end

  @doc """
  Renders the `adjust` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.adjust />
  <Boxicons.adjust class="w-4 h-4" />
  <Boxicons.adjust solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def adjust(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 22c5.514 0 10-4.486 10-10S17.514 2 12 2 2 6.486 2 12s4.486 10 10 10zm0-18c4.411 0 8 3.589 8 8s-3.589 8-8 8-8-3.589-8-8 3.589-8 8-8z"/><path d="M19 12a7 7 0 0 0-7-7v14a7 7 0 0 0 7-7z"/>|,
      ~S|<path d="M12 2C6.579 2 2 6.58 2 12s4.579 10 10 10 10-4.58 10-10S17.421 2 12 2zm0 17V5c3.829 0 7 3.169 7 7 0 3.828-3.171 7-7 7z"/>|
    )
  end

  @doc """
  Renders the `first_aid` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.first_aid />
  <Boxicons.first_aid class="w-4 h-4" />
  <Boxicons.first_aid solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def first_aid(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 6h-3V4c0-1.103-.897-2-2-2H9c-1.103 0-2 .897-2 2v2H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2zM9 4h6v2H9V4zM4 18V8h16l.001 10H4z"/><path d="M13 9h-2v3H8v2h3v3h2v-3h3v-2h-3z"/>|,
      ~S|<path d="M20 6h-3V4a2 2 0 0 0-2-2H9a2 2 0 0 0-2 2v2H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2zM9 4h6v2H9zm7 10h-3v3h-2v-3H8v-2h3V9h2v3h3z"/>|
    )
  end

  @doc """
  Renders the `bookmark_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bookmark_minus />
  <Boxicons.bookmark_minus class="w-4 h-4" />
  <Boxicons.bookmark_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def bookmark_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="M8 9h8v2H8z"/><path d="M20 22V4c0-1.103-.897-2-2-2H6c-1.103 0-2 .897-2 2v18l8-4.572L20 22zM6 10V4h12v14.553l-6-3.428-6 3.428V10z"/>|,
      ~S|<path d="M17 2H7a2 2 0 0 0-2 2v18l7-4.848L19 22V4a2 2 0 0 0-2-2zm-1 9H8V9h8v2z"/>|
    )
  end

  @doc """
  Renders the `book_reader` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.book_reader />
  <Boxicons.book_reader class="w-4 h-4" />
  <Boxicons.book_reader solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def book_reader(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 8c-.202 0-4.85.029-9 2.008C7.85 8.029 3.202 8 3 8a1 1 0 0 0-1 1v9.883a1 1 0 0 0 .305.719c.195.188.48.305.729.28l.127-.001c.683 0 4.296.098 8.416 2.025.016.008.034.005.05.011.119.049.244.083.373.083s.254-.034.374-.083c.016-.006.034-.003.05-.011 4.12-1.928 7.733-2.025 8.416-2.025l.127.001c.238.025.533-.092.729-.28.194-.189.304-.449.304-.719V9a1 1 0 0 0-1-1zM4 10.049c1.485.111 4.381.48 7 1.692v7.742c-3-1.175-5.59-1.494-7-1.576v-7.858zm16 7.858c-1.41.082-4 .401-7 1.576v-7.742c2.619-1.212 5.515-1.581 7-1.692v7.858z"/>|,
      ~S|<path d="M2 8v11.529S6.621 19.357 12 22c5.379-2.643 10-2.471 10-2.471V8s-5.454 0-10 2.471C7.454 8 2 8 2 8z"/>|
    )
  end

  @doc """
  Renders the `id_card` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.id_card />
  <Boxicons.id_card class="w-4 h-4" />
  <Boxicons.id_card solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def id_card(assigns) do
    svg(
      assigns,
      ~S|<path d="M9.715 12c1.151 0 2-.849 2-2s-.849-2-2-2-2 .849-2 2 .848 2 2 2z"/><path d="M20 4H4c-1.103 0-2 .841-2 1.875v12.25C2 19.159 2.897 20 4 20h16c1.103 0 2-.841 2-1.875V5.875C22 4.841 21.103 4 20 4zm0 14-16-.011V6l16 .011V18z"/><path d="M14 9h4v2h-4zm1 4h3v2h-3zm-1.57 2.536c0-1.374-1.676-2.786-3.715-2.786S6 14.162 6 15.536V16h7.43v-.464z"/>|,
      ~S|<path d="M20 4H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zM8.715 8c1.151 0 2 .849 2 2s-.849 2-2 2-2-.849-2-2 .848-2 2-2zm3.715 8H5v-.465c0-1.373 1.676-2.785 3.715-2.785s3.715 1.412 3.715 2.785V16zM19 15h-4v-2h4v2zm0-4h-5V9h5v2z"/>|
    )
  end

  @doc """
  Renders the `chevrons_left` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevrons_left />
  <Boxicons.chevrons_left class="w-4 h-4" />
  <Boxicons.chevrons_left solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevrons_left(assigns) do
    svg(
      assigns,
      ~S|<path d="m12.707 7.707-1.414-1.414L5.586 12l5.707 5.707 1.414-1.414L8.414 12z"/><path d="M16.293 6.293 10.586 12l5.707 5.707 1.414-1.414L13.414 12l4.293-4.293z"/>|,
      ~S|<path d="m8.121 12 4.94-4.939-2.122-2.122L3.879 12l7.06 7.061 2.122-2.122z"/><path d="M17.939 4.939 10.879 12l7.06 7.061 2.122-2.122L15.121 12l4.94-4.939z"/>|
    )
  end

  @doc """
  Renders the `arrow_to_right` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.arrow_to_right />
  <Boxicons.arrow_to_right class="w-4 h-4" />
  <Boxicons.arrow_to_right solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def arrow_to_right(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 6h2v12h-2zM4 13h8.586l-4.293 4.293 1.414 1.414L16.414 12 9.707 5.293 8.293 6.707 12.586 11H4z"/>|,
      ~S|<path d="M18 6h2v12h-2zm-8 5H4v2h6v5l6-6-6-6z"/>|
    )
  end

  @doc """
  Renders the `game` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.game />
  <Boxicons.game class="w-4 h-4" />
  <Boxicons.game solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def game(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.937 7.53C19.227 4.119 15.803 2 12 2 6.486 2 2 6.486 2 12s4.486 10 10 10c3.803 0 7.227-2.119 8.937-5.53a1 1 0 0 0-.397-1.316L15.017 12l5.522-3.153c.461-.264.636-.842.398-1.317zm-8.433 3.602a.999.999 0 0 0 0 1.736l6.173 3.525A7.949 7.949 0 0 1 12 20c-4.411 0-8-3.589-8-8s3.589-8 8-8a7.95 7.95 0 0 1 6.677 3.606l-6.173 3.526z"/>|,
      ~S|<path d="M12 22c3.719 0 7.063-2.035 8.809-5.314L13 12l7.809-4.686C19.063 4.035 15.719 2 12 2 6.486 2 2 6.486 2 12s4.486 10 10 10zm-.5-16a1.5 1.5 0 1 1-.001 3.001A1.5 1.5 0 0 1 11.5 6z"/>|
    )
  end

  @doc """
  Renders the `layer_minus` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.layer_minus />
  <Boxicons.layer_minus class="w-4 h-4" />
  <Boxicons.layer_minus solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def layer_minus(assigns) do
    svg(
      assigns,
      ~S|<path d="m2.513 12.833 9.022 5.04a.995.995 0 0 0 .973.001l8.978-5a1 1 0 0 0-.002-1.749l-9.022-5a1 1 0 0 0-.968-.001l-8.978 4.96a1 1 0 0 0-.003 1.749zm9.464-4.69 6.964 3.859-6.917 3.853-6.964-3.89 6.917-3.822z"/><path d="m3.485 15.126-.971 1.748 9 5a1 1 0 0 0 .971 0l9-5-.971-1.748L12 19.856l-8.515-4.73zM16 4h6v2h-6z"/>|,
      ~S|<path d="m21.484 11.125-9.022-5a1 1 0 0 0-.968-.001l-8.978 4.96a1 1 0 0 0-.003 1.749l9.022 5.04a.995.995 0 0 0 .973.001l8.978-5a1 1 0 0 0-.002-1.749z"/><path d="M20.515 15.126 12 19.856l-8.515-4.73-.971 1.748 9 5a1 1 0 0 0 .971 0l9-5-.97-1.748zM16 4h6v2h-6z"/>|
    )
  end

  @doc """
  Renders the `cart_alt` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cart_alt />
  <Boxicons.cart_alt class="w-4 h-4" />
  <Boxicons.cart_alt solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def cart_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 4H2v2h2.3l3.28 9a3 3 0 0 0 2.82 2H19v-2h-8.6a1 1 0 0 1-.94-.66L9 13h9.28a2 2 0 0 0 1.92-1.45L22 5.27A1 1 0 0 0 21.27 4 .84.84 0 0 0 21 4zm-2.75 7h-10L6.43 6h13.24z"/>|,
      ~S|<path d="M21 4H2v2h2.3l3.521 9.683A2.004 2.004 0 0 0 9.7 17H18v-2H9.7l-.728-2H18c.4 0 .762-.238.919-.606l3-7A.998.998 0 0 0 21 4z"/>|
    )
  end

  @doc """
  Renders the `message` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.message />
  <Boxicons.message class="w-4 h-4" />
  <Boxicons.message solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def message(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3v3.767L13.277 18H20c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm0 14h-7.277L9 18.233V16H4V4h16v12z"/>|,
      ~S|<path d="M20 2H4c-1.103 0-2 .894-2 1.992v12.016C2 17.106 2.897 18 4 18h3v4l6.351-4H20c1.103 0 2-.894 2-1.992V3.992A1.998 1.998 0 0 0 20 2z"/>|
    )
  end

  @doc """
  Renders the `chevron_down_circle` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chevron_down_circle />
  <Boxicons.chevron_down_circle class="w-4 h-4" />
  <Boxicons.chevron_down_circle solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def chevron_down_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M12 13.586 7.707 9.293l-1.414 1.414L12 16.414l5.707-5.707-1.414-1.414z"/>|,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 14.414-5.707-5.707 1.414-1.414L12 13.586l4.293-4.293 1.414 1.414L12 16.414z"/>|
    )
  end

  @doc """
  Renders the `planet` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.planet />
  <Boxicons.planet class="w-4 h-4" />
  <Boxicons.planet solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def planet(assigns) do
    svg(
      assigns,
      ~S|<path d="M2.76 20.2a2.73 2.73 0 0 0 2.15.85 8.86 8.86 0 0 0 3.37-.86 9 9 0 0 0 12.27-10.9c1.31-2.23 1.75-4.26.67-5.48a2.94 2.94 0 0 0-2.57-1A5 5 0 0 0 16.1 4 9 9 0 0 0 3.58 15.14c-1.06 1.21-2.05 3.68-.82 5.06zm1.5-1.32c-.22-.25 0-1.07.37-1.76a9.26 9.26 0 0 0 1.57 1.74c-1.03.3-1.71.28-1.94.02zm14.51-5.17A7 7 0 0 1 15.58 18 7.12 7.12 0 0 1 12 19a6.44 6.44 0 0 1-1.24-.13 30.73 30.73 0 0 0 4.42-3.29 31.5 31.5 0 0 0 3.8-4 6.88 6.88 0 0 1-.21 2.13zm.09-8.89a.94.94 0 0 1 .87.32c.23.26.16.94-.26 1.93a9.2 9.2 0 0 0-1.61-1.86 2.48 2.48 0 0 1 1-.39zM5.22 10.31A6.94 6.94 0 0 1 8.41 6 7 7 0 0 1 12 5a6.9 6.9 0 0 1 6 3.41 5.19 5.19 0 0 1 .35.66 27.43 27.43 0 0 1-4.49 5A27.35 27.35 0 0 1 8.35 18a7 7 0 0 1-3.13-7.65z"/>|,
      ~S|<path d="M15.165 15.582c4.587-4.073 8.141-9.424 6.057-11.771-.661-.744-1.584-1.089-2.575-.983-.832.091-1.687.502-2.549 1.192a8.922 8.922 0 0 0-8.712.282 8.917 8.917 0 0 0-4.109 5.515 8.892 8.892 0 0 0 .306 5.325c-1.065 1.203-2.054 3.677-.823 5.063.517.581 1.257.841 2.147.841 2.707 0 6.808-2.399 10.258-5.464zm3.699-10.767c.358-.034.632.064.861.323.231.261.169.946-.252 1.929a9.059 9.059 0 0 0-1.617-1.853c.431-.262.776-.373 1.008-.399zM4.633 17.118a8.979 8.979 0 0 0 1.568 1.737c-1.025.303-1.714.283-1.945.021-.217-.243.002-1.069.377-1.758zm16.31-5.869c-1.215 1.797-2.906 3.671-4.778 5.333-1.934 1.719-4.066 3.208-6.05 4.202a9.082 9.082 0 0 0 1.874.212 8.986 8.986 0 0 0 4.616-1.282 8.915 8.915 0 0 0 4.338-8.465z"/>|
    )
  end

  @doc """
  Renders the `circle_half` icon.

  By default, the regular component is used, but the `solid`
  attribute can be provided for alternative style.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.circle_half />
  <Boxicons.circle_half class="w-4 h-4" />
  <Boxicons.circle_half solid />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"
  attr :solid, :boolean, default: false

  def circle_half(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2h-1v20h1a10 10 0 0 0 0-20zm1 17.94V4.06a8 8 0 0 1 0 15.88z"/>|,
      ~S|<path d="M12 2h-1v20h1a10 10 0 0 0 0-20z"/>|
    )
  end

  @doc """
  Renders the `t_shirt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.t_shirt />
  <Boxicons.t_shirt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def t_shirt(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.316 4.055C19.556 3.478 15 1.985 15 2a3 3 0 1 1-6 0c0-.015-4.556 1.478-6.317 2.055A.992.992 0 0 0 2 5.003v3.716a1 1 0 0 0 1.242.97L6 9v12a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V9l2.758.689A1 1 0 0 0 22 8.719V5.003a.992.992 0 0 0-.684-.948z"/>|
    )
  end

  @doc """
  Renders the `walk` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.walk />
  <Boxicons.walk class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def walk(assigns) do
    svg(
      assigns,
      ~S|<path d="M13.978 12.27c.245.368.611.647 1.031.787l2.675.892.633-1.896-2.675-.892-1.663-2.495a2.016 2.016 0 0 0-.769-.679l-1.434-.717a1.989 1.989 0 0 0-1.378-.149l-3.193.797a2.002 2.002 0 0 0-1.306 1.046l-1.794 3.589 1.789.895 1.794-3.589 2.223-.556-1.804 8.346-3.674 2.527 1.133 1.648 3.675-2.528c.421-.29.713-.725.82-1.225l.517-2.388 2.517 1.888.925 4.625 1.961-.393-.925-4.627a2 2 0 0 0-.762-1.206l-2.171-1.628.647-3.885 1.208 1.813z"/>|
    )
  end

  @doc """
  Renders the `bank` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bank />
  <Boxicons.bank class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def bank(assigns) do
    svg(
      assigns,
      ~S|<path d="M2 8v4.001h1V18H2v3h16l3 .001V21h1v-3h-1v-5.999h1V8L12 2 2 8zm4 10v-5.999h2V18H6zm5 0v-5.999h2V18h-2zm7 0h-2v-5.999h2V18zM14 8a2 2 0 1 1-4.001-.001A2 2 0 0 1 14 8z"/>|
    )
  end

  @doc """
  Renders the `face_mask` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.face_mask />
  <Boxicons.face_mask class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def face_mask(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12c0 2.521.945 4.82 2.49 6.582 1.24 1.52 3.266 3.066 6.439 3.358a9.731 9.731 0 0 0 2.141 0c3.174-.292 5.199-1.839 6.439-3.358A9.948 9.948 0 0 0 22 12c0-5.514-4.486-10-10-10zM4.709 8.724c.154.09.308.182.456.276.396.25.791.5 1.286.688.494.187 1.088.312 1.879.312.792 0 1.386-.125 1.881-.313s.891-.437 1.287-.687.792-.5 1.287-.688c.494-.187 1.088-.312 1.88-.312s1.386.125 1.88.313c.495.187.891.437 1.287.687s.792.5 1.287.688c.178.067.374.122.581.171.191.682.3 1.398.3 2.141 0 .843-.133 1.654-.375 2.417-.261.195-.733.474-1.577.756-.769.256-1.672.458-2.685.602a25.337 25.337 0 0 1-6.727 0c-1.013-.144-1.916-.346-2.685-.602-.844-.282-1.316-.561-1.577-.756a7.953 7.953 0 0 1 .335-5.693z"/>|
    )
  end

  @doc """
  Renders the `x` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.x />
  <Boxicons.x class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def x(assigns) do
    svg(
      assigns,
      ~S|<path d="m16.192 6.344-4.243 4.242-4.242-4.242-1.414 1.414L10.535 12l-4.242 4.242 1.414 1.414 4.242-4.242 4.243 4.242 1.414-1.414L13.364 12l4.242-4.242z"/>|
    )
  end

  @doc """
  Renders the `mobile_landscape` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.mobile_landscape />
  <Boxicons.mobile_landscape class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def mobile_landscape(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 5H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2zM7.001 7H19v10H7.001V7z"/>|
    )
  end

  @doc """
  Renders the `signal_5` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.signal_5 />
  <Boxicons.signal_5 class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def signal_5(assigns) do
    svg(assigns, ~S|<path d="M3 16h2v5H3zm4-3h2v8H7zm4-3h2v11h-2zm4-3h2v14h-2zm4-3h2v17h-2z"/>|)
  end

  @doc """
  Renders the `space_bar` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.space_bar />
  <Boxicons.space_bar class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def space_bar(assigns) do
    svg(assigns, ~S|<path d="M17 13H7V9H5v6h14V9h-2z"/>|)
  end

  @doc """
  Renders the `power_off` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.power_off />
  <Boxicons.power_off class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def power_off(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 21c4.411 0 8-3.589 8-8 0-3.35-2.072-6.221-5-7.411v2.223A6 6 0 0 1 18 13c0 3.309-2.691 6-6 6s-6-2.691-6-6a5.999 5.999 0 0 1 3-5.188V5.589C6.072 6.779 4 9.65 4 13c0 4.411 3.589 8 8 8z"/><path d="M11 2h2v10h-2z"/>|
    )
  end

  @doc """
  Renders the `plane` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.plane />
  <Boxicons.plane class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def plane(assigns) do
    svg(
      assigns,
      ~S|<path d="M22 16.21v-1.895L14 8V4a2 2 0 0 0-4 0v4.105L2 14.42v1.789l8-2.81V18l-3 2v2l5-2 5 2v-2l-3-2v-4.685l8 2.895z"/>|
    )
  end

  @doc """
  Renders the `dialpad` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dialpad />
  <Boxicons.dialpad class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def dialpad(assigns) do
    svg(
      assigns,
      ~S|<path d="M10 3h4v3h-4zm0 5h4v3h-4zm0 5h4v3h-4zm6-10h4v3h-4zm0 5h4v3h-4zm0 5h4v3h-4zM4 3h4v3H4zm0 5h4v3H4zm0 5h4v3H4zm6 5h4v3h-4z"/>|
    )
  end

  @doc """
  Renders the `guitar_amp` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.guitar_amp />
  <Boxicons.guitar_amp class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def guitar_amp(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 6h-2V4c0-1.103-.897-2-2-2H8c-1.103 0-2 .897-2 2v2H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2zM8 4h8v2H8V4zM6 19a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm0-3a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm3 3a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm0-3a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm3 3a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm0-3a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm3 3a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm0-3a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm3 3a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm0-3a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm2-4H4V8h16v4z"/><path d="M14 9h2v2h-2zm3 0h2v2h-2z"/>|
    )
  end

  @doc """
  Renders the `quote_alt_left` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.quote_alt_left />
  <Boxicons.quote_alt_left class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def quote_alt_left(assigns) do
    svg(
      assigns,
      ~S|<path d="M6.5 10c-.223 0-.437.034-.65.065.069-.232.14-.468.254-.68.114-.308.292-.575.469-.844.148-.291.409-.488.601-.737.201-.242.475-.403.692-.604.213-.21.492-.315.714-.463.232-.133.434-.28.65-.35l.539-.222.474-.197-.485-1.938-.597.144c-.191.048-.424.104-.689.171-.271.05-.56.187-.882.312-.318.142-.686.238-1.028.466-.344.218-.741.4-1.091.692-.339.301-.748.562-1.05.945-.33.358-.656.734-.909 1.162-.293.408-.492.856-.702 1.299-.19.443-.343.896-.468 1.336-.237.882-.343 1.72-.384 2.437-.034.718-.014 1.315.028 1.747.015.204.043.402.063.539l.025.168.026-.006A4.5 4.5 0 1 0 6.5 10zm11 0c-.223 0-.437.034-.65.065.069-.232.14-.468.254-.68.114-.308.292-.575.469-.844.148-.291.409-.488.601-.737.201-.242.475-.403.692-.604.213-.21.492-.315.714-.463.232-.133.434-.28.65-.35l.539-.222.474-.197-.485-1.938-.597.144c-.191.048-.424.104-.689.171-.271.05-.56.187-.882.312-.317.143-.686.238-1.028.467-.344.218-.741.4-1.091.692-.339.301-.748.562-1.05.944-.33.358-.656.734-.909 1.162-.293.408-.492.856-.702 1.299-.19.443-.343.896-.468 1.336-.237.882-.343 1.72-.384 2.437-.034.718-.014 1.315.028 1.747.015.204.043.402.063.539l.025.168.026-.006A4.5 4.5 0 1 0 17.5 10z"/>|
    )
  end

  @doc """
  Renders the `plane_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.plane_alt />
  <Boxicons.plane_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def plane_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M3.414 13.778 2 15.192l4.949 2.121 2.122 4.95 1.414-1.414-.707-3.536L13.091 14l3.61 7.704 1.339-1.339-1.19-10.123 2.828-2.829a2 2 0 1 0-2.828-2.828l-2.903 2.903L3.824 6.297 2.559 7.563l7.644 3.67-3.253 3.253-3.536-.708z"/>|
    )
  end

  @doc """
  Renders the `traffic` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.traffic />
  <Boxicons.traffic class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def traffic(assigns) do
    svg(
      assigns,
      ~S|<path d="m2.958 16 .043 1.042c.005.12.142 2.255 2.999 3.338v1.12a.5.5 0 0 0 .5.5h11a.5.5 0 0 0 .5-.5v-1.12c2.857-1.083 2.994-3.218 2.999-3.338L21.043 16H18v-1.62c2.857-1.083 2.994-3.218 2.999-3.338L21.043 10H18V8.38c2.857-1.083 2.994-3.218 2.999-3.338L21.043 4H18V2.5a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0-.5.5V4H2.958l.043 1.042c.005.12.142 2.255 2.999 3.338V10H2.958l.043 1.042c.005.12.142 2.255 2.999 3.338V16H2.958zM12 4a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 4zm0 6a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 10zm0 6a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 16z"/>|
    )
  end

  @doc """
  Renders the `yin_yang` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.yin_yang />
  <Boxicons.yin_yang class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def yin_yang(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.062 4.938A9.942 9.942 0 0 0 12.016 2h-.026a9.94 9.94 0 0 0-7.071 2.938c-3.898 3.898-3.898 10.243 0 14.143 1.895 1.895 4.405 2.938 7.071 2.938s5.177-1.043 7.071-2.938c3.9-3.899 3.9-10.243.001-14.143zM13.5 15a1.5 1.5 0 1 1-.001 3.001A1.5 1.5 0 0 1 13.5 15zM6.333 6.353A7.953 7.953 0 0 1 11.99 4l.026.001c1.652.008 3.242 1.066 3.55 2.371.366 1.552-1.098 3.278-4.018 4.737-5.113 2.555-5.312 5.333-4.975 6.762l.008.021c-.082-.075-.169-.146-.249-.226-3.118-3.119-3.118-8.194.001-11.313z"/>|
    )
  end

  @doc """
  Renders the `rupee` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.rupee />
  <Boxicons.rupee class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def rupee(assigns) do
    svg(
      assigns,
      ~S|<path d="M17 6V4H6v2h3.5c1.302 0 2.401.838 2.815 2H6v2h6.315A2.994 2.994 0 0 1 9.5 12H6v2.414L11.586 20h2.828l-6-6H9.5a5.007 5.007 0 0 0 4.898-4H17V8h-2.602a4.933 4.933 0 0 0-.924-2H17z"/>|
    )
  end

  @doc """
  Renders the `task` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.task />
  <Boxicons.task class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def task(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 22h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2h-2a1 1 0 0 0-1-1H8a1 1 0 0 0-1 1H5c-1.103 0-2 .897-2 2v15c0 1.103.897 2 2 2zM5 5h2v2h10V5h2v15H5V5z"/><path d="m11 13.586-1.793-1.793-1.414 1.414L11 16.414l5.207-5.207-1.414-1.414z"/>|
    )
  end

  @doc """
  Renders the `border_inner` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.border_inner />
  <Boxicons.border_inner class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def border_inner(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 19h2v2h-2zM7 19h2v2H7zm8 0h2v2h-2zM3 19h2v2H3zm0-4h2v2H3zm0-8h2v2H3zm0-4h2v2H3zm12 0h2v2h-2zM7 3h2v2H7zm12 0h2v2h-2zm0 12h2v2h-2zm0-8h2v2h-2z"/><path d="M5 13h6v8h2v-8h8v-2h-8V3h-2v8H3v2h1.93z"/>|
    )
  end

  @doc """
  Renders the `male_female` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.male_female />
  <Boxicons.male_female class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def male_female(assigns) do
    svg(
      assigns,
      ~S|<path d="M9 7H3a1 1 0 0 0-1 1v7h2v7h4v-7h2V8a1 1 0 0 0-1-1z"/><path d="M20.21 7.73a1 1 0 0 0-1-.73h-4.5a1 1 0 0 0-1 .73L12 14h2l-1 4h2v4h4v-4h2l-1-4h2z"/>|
    )
  end

  @doc """
  Renders the `align_middle` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.align_middle />
  <Boxicons.align_middle class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def align_middle(assigns) do
    svg(assigns, ~S|<path d="M4 19h16v2H4zm3-4h10v2H7zm-3-4h16v2H4zm0-8h16v2H4zm3 4h10v2H7z"/>|)
  end

  @doc """
  Renders the `yen` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.yen />
  <Boxicons.yen class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def yen(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.2 3.4 12 10.333 6.8 3.4 5.2 4.6 10 11H7v2h4v2H7v2h4v4h2v-4h4v-2h-4v-2h4v-2h-3l4.8-6.4z"/>|
    )
  end

  @doc """
  Renders the `hand_left` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hand_left />
  <Boxicons.hand_left class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def hand_left(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3h-7.21a2 2 0 0 0-1.987 1.779L10 12H4a2 2 0 0 0 0 4h12l-1.212 3.03a2.001 2.001 0 0 0 1.225 2.641l.34.113a.998.998 0 0 0 1.084-.309l4.332-5.197c.149-.179.231-.406.231-.64V5a2 2 0 0 0-2-2z"/>|
    )
  end

  @doc """
  Renders the `rotate_right` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.rotate_right />
  <Boxicons.rotate_right class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def rotate_right(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.242 17.242a6.04 6.04 0 0 1-1.37 1.027l.961 1.754a8.068 8.068 0 0 0 2.569-2.225l-1.6-1.201a5.938 5.938 0 0 1-.56.645zm1.743-4.671a5.975 5.975 0 0 1-.362 2.528l1.873.701a7.977 7.977 0 0 0 .483-3.371l-1.994.142zm1.512-2.368a8.048 8.048 0 0 0-1.841-2.859l-1.414 1.414a6.071 6.071 0 0 1 1.382 2.146l1.873-.701zm-8.128 8.763c-.047-.005-.094-.015-.141-.021a6.701 6.701 0 0 1-.468-.075 5.923 5.923 0 0 1-2.421-1.122 5.954 5.954 0 0 1-.583-.506 6.138 6.138 0 0 1-.516-.597 5.91 5.91 0 0 1-.891-1.634 6.086 6.086 0 0 1-.247-.902c-.008-.043-.012-.088-.019-.131A6.332 6.332 0 0 1 6 13.002V13c0-1.603.624-3.109 1.758-4.242A5.944 5.944 0 0 1 11 7.089V10l5-4-5-4v3.069a7.917 7.917 0 0 0-4.656 2.275A7.936 7.936 0 0 0 4 12.999v.009c0 .253.014.504.037.753.007.076.021.15.03.227.021.172.044.345.076.516.019.1.044.196.066.295.032.142.065.283.105.423.032.112.07.223.107.333.026.079.047.159.076.237l.008-.003A7.948 7.948 0 0 0 5.6 17.785l-.007.005c.021.028.049.053.07.081.211.272.433.538.681.785a8.236 8.236 0 0 0 .966.816c.265.192.537.372.821.529l.028.019.001-.001a7.877 7.877 0 0 0 2.136.795l-.001.005.053.009c.201.042.405.071.61.098.069.009.138.023.207.03a8.038 8.038 0 0 0 2.532-.137l-.424-1.955a6.11 6.11 0 0 1-1.904.102z"/>|
    )
  end

  @doc """
  Renders the `virus_block` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.virus_block />
  <Boxicons.virus_block class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def virus_block(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.952 17.538c-.749-.749-.908-1.869-.5-2.846l.021-.049c.399-.974 1.309-1.643 2.362-1.643h.08c.638 0 1.085-.447 1.085-1s-.447-1-1-1h-.17c-1.053 0-1.958-.669-2.357-1.644l-.021-.049c-.408-.977-.249-2.097.5-2.846l.119-.119a.999.999 0 1 0-1.414-1.414l-.119.119c-.749.749-1.869.908-2.846.5l-.049-.021C13.669 5.128 13 4.218 13 3.165v-.081C13 2.447 12.553 2 12 2s-1 .447-1 1v.036c0 1.096-.66 2.084-1.673 2.503l-.006.003a2.71 2.71 0 0 1-2.953-.588l-.025-.025-2.636-2.636-1.414 1.414 18 18 1.414-1.414-2.636-2.636-.119-.119zM12 10a2 2 0 1 1 2 2c-.257 0-.501-.053-.728-.142l-1.131-1.131A1.998 1.998 0 0 1 12 10zm-4 3a1 1 0 0 1-1-1 .99.99 0 0 1 .244-.635L5.431 9.552A2.634 2.634 0 0 1 3.085 11h-.001C2.447 11 2 11.447 2 12s.447 1 1 1h.068a2.66 2.66 0 0 1 2.459 1.644l.021.049a2.69 2.69 0 0 1-.583 2.929l-.036.036a.999.999 0 1 0 1.414 1.414l.036-.036a2.689 2.689 0 0 1 2.929-.583l.143.06A2.505 2.505 0 0 1 11 20.83v.085c0 .638.447 1.085 1 1.085s1-.448 1-1v-.17c0-.976.568-1.853 1.443-2.266l-5.809-5.809A.98.98 0 0 1 8 13z"/>|
    )
  end

  @doc """
  Renders the `user_rectangle` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.user_rectangle />
  <Boxicons.user_rectangle class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def user_rectangle(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 22h13a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h1zm6-17.001c1.647 0 3 1.351 3 3C15 9.647 13.647 11 12 11S9 9.647 9 7.999c0-1.649 1.353-3 3-3zM6 17.25c0-2.219 2.705-4.5 6-4.5s6 2.281 6 4.5V18H6v-.75z"/>|
    )
  end

  @doc """
  Renders the `grid_vertical` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.grid_vertical />
  <Boxicons.grid_vertical class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def grid_vertical(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 10h4v4H7zm0-6h4v4H7zm0 12h4v4H7zm6-6h4v4h-4zm0-6h4v4h-4zm0 12h4v4h-4z"/>|
    )
  end

  @doc """
  Renders the `minus_square` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.minus_square />
  <Boxicons.minus_square class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def minus_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 3a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2H5zm12 10H7v-2h10v2z"/>|
    )
  end

  @doc """
  Renders the `offer` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.offer />
  <Boxicons.offer class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def offer(assigns) do
    svg(
      assigns,
      ~S|<path d="m20.749 12 1.104-1.908a1 1 0 0 0-.365-1.366l-1.91-1.104v-2.2a1 1 0 0 0-1-1h-2.199l-1.103-1.909a1.008 1.008 0 0 0-.607-.466.993.993 0 0 0-.759.1L12 3.251l-1.91-1.105a1 1 0 0 0-1.366.366L7.62 4.422H5.421a1 1 0 0 0-1 1v2.199l-1.91 1.104a.998.998 0 0 0-.365 1.367L3.25 12l-1.104 1.908a1.004 1.004 0 0 0 .364 1.367l1.91 1.104v2.199a1 1 0 0 0 1 1h2.2l1.104 1.91a1.01 1.01 0 0 0 .866.5c.174 0 .347-.046.501-.135l1.908-1.104 1.91 1.104a1.001 1.001 0 0 0 1.366-.365l1.103-1.91h2.199a1 1 0 0 0 1-1v-2.199l1.91-1.104a1 1 0 0 0 .365-1.367L20.749 12zM9.499 6.99a1.5 1.5 0 1 1-.001 3.001 1.5 1.5 0 0 1 .001-3.001zm.3 9.6-1.6-1.199 6-8 1.6 1.199-6 8zm4.7.4a1.5 1.5 0 1 1 .001-3.001 1.5 1.5 0 0 1-.001 3.001z"/>|
    )
  end

  @doc """
  Renders the `usb` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.usb />
  <Boxicons.usb class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def usb(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 10h1v2h-4V6h2l-3-4-3 4h2v8H7v-2.277c.596-.347 1-.985 1-1.723a2 2 0 0 0-4 0c0 .738.404 1.376 1 1.723V14c0 1.103.897 2 2 2h4v2.277A1.99 1.99 0 0 0 10 20a2 2 0 0 0 4 0c0-.738-.404-1.376-1-1.723V14h4c1.103 0 2-.897 2-2v-2h1V6h-4v4z"/>|
    )
  end

  @doc """
  Renders the `check` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.check />
  <Boxicons.check class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def check(assigns) do
    svg(
      assigns,
      ~S|<path d="m10 15.586-3.293-3.293-1.414 1.414L10 18.414l9.707-9.707-1.414-1.414z"/>|
    )
  end

  @doc """
  Renders the `euro` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.euro />
  <Boxicons.euro class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def euro(assigns) do
    svg(
      assigns,
      ~S|<path d="M13.464 6c1.43 0 2.779.613 3.799 1.726l1.475-1.352C17.334 4.843 15.461 4 13.464 4c-1.998 0-3.87.843-5.272 2.375A8.034 8.034 0 0 0 6.589 9H4v2h2.114c-.038.33-.064.663-.064 1s.026.67.064 1H4v2h2.589c.362.97.901 1.861 1.603 2.626C9.594 19.157 11.466 20 13.464 20c1.997 0 3.87-.843 5.273-2.374l-1.475-1.352C16.243 17.387 14.894 18 13.464 18s-2.778-.612-3.798-1.726A5.937 5.937 0 0 1 8.801 15H13v-2H8.139c-.05-.328-.089-.66-.089-1s.039-.672.089-1H13V9H8.801c.24-.457.516-.893.865-1.274C10.686 6.613 12.034 6 13.464 6z"/>|
    )
  end

  @doc """
  Renders the `window_close` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.window_close />
  <Boxicons.window_close class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def window_close(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM4 19V7h16l.001 12H4z"/><path d="m15.707 10.707-1.414-1.414L12 11.586 9.707 9.293l-1.414 1.414L10.586 13l-2.293 2.293 1.414 1.414L12 14.414l2.293 2.293 1.414-1.414L13.414 13z"/>|
    )
  end

  @doc """
  Renders the `desktop` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.desktop />
  <Boxicons.desktop class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def desktop(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v11c0 1.103.897 2 2 2h7v2H8v2h8v-2h-3v-2h7c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM4 14V5h16l.002 9H4z"/>|
    )
  end

  @doc """
  Renders the `shekel` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shekel />
  <Boxicons.shekel class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def shekel(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 8v8h2V8c0-2.206-1.794-4-4-4H5v16h2V6h4c1.103 0 2 .897 2 2z"/><path d="M17 16c0 1.103-.897 2-2 2h-4V8H9v12h6c2.206 0 4-1.794 4-4V4h-2v12z"/>|
    )
  end

  @doc """
  Renders the `rss` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.rss />
  <Boxicons.rss class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def rss(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 20.001C19 11.729 12.271 5 4 5v2c7.168 0 13 5.832 13 13.001h2z"/><path d="M12 20.001h2C14 14.486 9.514 10 4 10v2c4.411 0 8 3.589 8 8.001z"/>|
    )
  end

  @doc """
  Renders the `anchor` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.anchor />
  <Boxicons.anchor class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def anchor(assigns) do
    svg(
      assigns,
      ~S|<path d="m22 15-3-4-3 4h1.906c-.436 2.469-2.438 4.471-4.906 4.906V13h2v-2h-2V9.336c1.543-.459 2.714-1.923 2.714-3.621C15.714 3.666 14.048 2 12 2S8.286 3.666 8.286 5.715c0 1.698 1.171 3.162 2.714 3.621V11H9v2h2v6.906C8.531 19.471 6.529 17.469 6.094 15H8l-3-4-3 4h2.073c.511 3.885 3.929 7 7.927 7s7.416-3.115 7.927-7H22zM10.286 5.715C10.286 4.77 11.055 4 12 4s1.714.77 1.714 1.715c0 .951-.801 1.785-1.714 1.785s-1.714-.834-1.714-1.785z"/>|
    )
  end

  @doc """
  Renders the `align_justify` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.align_justify />
  <Boxicons.align_justify class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def align_justify(assigns) do
    svg(assigns, ~S|<path d="M4 7h16v2H4zm0-4h16v2H4zm0 8h16v2H4zm0 4h16v2H4zm2 4h12v2H6z"/>|)
  end

  @doc """
  Renders the `voicemail` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.voicemail />
  <Boxicons.voicemail class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def voicemail(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.5 8a4.505 4.505 0 0 0-4.5 4.5c0 .925.281 1.784.762 2.5h-3.523c.48-.716.761-1.575.761-2.5C11 10.019 8.981 8 6.5 8S2 10.019 2 12.5 4.019 17 6.5 17c.171 0 .334-.032.5-.051V17h11v-.051c2.244-.252 4-2.139 4-4.449 0-2.481-2.019-4.5-4.5-4.5zM4 12.5C4 11.121 5.121 10 6.5 10S9 11.121 9 12.5 7.879 15 6.5 15 4 13.879 4 12.5zM17.5 15c-1.379 0-2.5-1.121-2.5-2.5s1.121-2.5 2.5-2.5 2.5 1.121 2.5 2.5-1.121 2.5-2.5 2.5z"/>|
    )
  end

  @doc """
  Renders the `quote_right` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.quote_right />
  <Boxicons.quote_right class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def quote_right(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.309 17.708C22.196 15.66 22.006 13.03 22 13V5a1 1 0 0 0-1-1h-6c-1.103 0-2 .897-2 2v7a1 1 0 0 0 1 1h3.078a2.89 2.89 0 0 1-.429 1.396c-.508.801-1.465 1.348-2.846 1.624l-.803.16V20h1c2.783 0 4.906-.771 6.309-2.292zm-11.007 0C11.19 15.66 10.999 13.03 10.993 13V5a1 1 0 0 0-1-1h-6c-1.103 0-2 .897-2 2v7a1 1 0 0 0 1 1h3.078a2.89 2.89 0 0 1-.429 1.396c-.508.801-1.465 1.348-2.846 1.624l-.803.16V20h1c2.783 0 4.906-.771 6.309-2.292z"/>|
    )
  end

  @doc """
  Renders the `window_open` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.window_open />
  <Boxicons.window_open class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def window_open(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h5v-2H4V7h16v12h-5v2h5c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2z"/><path d="M13 21v-5h3l-4-5-4 5h3v5z"/>|
    )
  end

  @doc """
  Renders the `dog` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dog />
  <Boxicons.dog class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def dog(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 6h-2l-1.27-1.27A2.49 2.49 0 0 0 16 4h-2.5A2.64 2.64 0 0 0 11 2v6.36a4.38 4.38 0 0 0 1.13 2.72 6.57 6.57 0 0 0 4.13 1.82l3.45-1.38a3 3 0 0 0 1.73-1.84L22 8.15a1.06 1.06 0 0 0 0-.31V7a1 1 0 0 0-1-1zm-5 2a1 1 0 1 1 1-1 1 1 0 0 1-1 1z"/><path d="M11.38 11.74A5.24 5.24 0 0 1 10.07 9H6a1.88 1.88 0 0 1-2-2 1 1 0 0 0-2 0 4.69 4.69 0 0 0 .48 2A3.58 3.58 0 0 0 4 10.53V22h3v-5h6v5h3v-8.13a7.35 7.35 0 0 1-4.62-2.13z"/>|
    )
  end

  @doc """
  Renders the `redo` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.redo />
  <Boxicons.redo class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def redo(assigns) do
    svg(
      assigns,
      ~S|<path d="M9 18h3v-2H9c-1.654 0-3-1.346-3-3s1.346-3 3-3h6v3l5-4-5-4v3H9c-2.757 0-5 2.243-5 5s2.243 5 5 5z"/>|
    )
  end

  @doc """
  Renders the `poll` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.poll />
  <Boxicons.poll class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def poll(assigns) do
    svg(assigns, ~S|<path d="M7 11h7v2H7zm0-4h10.97v2H7zm0 8h13v2H7zM4 4h2v16H4z"/>|)
  end

  @doc """
  Renders the `cloud_drizzle` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cloud_drizzle />
  <Boxicons.cloud_drizzle class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def cloud_drizzle(assigns) do
    svg(
      assigns,
      ~S|<path d="M8 13h2v3H8zm0 4h2v3H8zm3-2h2v3h-2zm0 4h2v3h-2zm3-6h2v3h-2zm0 4h2v3h-2z"/><path d="M18.944 10.112C18.507 6.67 15.56 4 12 4 9.245 4 6.85 5.611 5.757 8.15 3.609 8.792 2 10.819 2 13c0 2.757 2.243 5 5 5v-2c-1.654 0-3-1.346-3-3 0-1.403 1.199-2.756 2.673-3.015l.582-.103.191-.559C8.149 7.273 9.895 6 12 6c2.757 0 5 2.243 5 5v1h1c1.103 0 2 .897 2 2s-.897 2-2 2h-1v2h1c2.206 0 4-1.794 4-4a4.008 4.008 0 0 0-3.056-3.888z"/>|
    )
  end

  @doc """
  Renders the `font_family` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.font_family />
  <Boxicons.font_family class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def font_family(assigns) do
    svg(
      assigns,
      ~S|<path d="M15 4h7v2h-7zm1 4h6v2h-6zm2 4h4v2h-4zM9.307 4l-6 16h2.137l1.875-5h6.363l1.875 5h2.137l-6-16H9.307zm-1.239 9L10.5 6.515 12.932 13H8.068z"/>|
    )
  end

  @doc """
  Renders the `sync` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sync />
  <Boxicons.sync class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def sync(assigns) do
    svg(
      assigns,
      ~S|<path d="m13 7.101.01.001a4.978 4.978 0 0 1 2.526 1.362 5.005 5.005 0 0 1 1.363 2.528 5.061 5.061 0 0 1-.001 2.016 4.976 4.976 0 0 1-1.363 2.527l1.414 1.414a7.014 7.014 0 0 0 1.908-3.54 6.98 6.98 0 0 0 0-2.819 6.957 6.957 0 0 0-1.907-3.539 6.97 6.97 0 0 0-2.223-1.5 6.921 6.921 0 0 0-1.315-.408c-.137-.028-.275-.043-.412-.063V2L9 6l4 4V7.101zm-7.45 7.623c.174.412.392.812.646 1.19.249.37.537.718.854 1.034a7.036 7.036 0 0 0 2.224 1.501c.425.18.868.317 1.315.408.167.034.338.056.508.078v2.944l4-4-4-4v3.03c-.035-.006-.072-.003-.107-.011a4.978 4.978 0 0 1-2.526-1.362 4.994 4.994 0 0 1 .001-7.071L7.051 7.05a7.01 7.01 0 0 0-1.5 2.224A6.974 6.974 0 0 0 5 12a6.997 6.997 0 0 0 .55 2.724z"/>|
    )
  end

  @doc """
  Renders the `reflect_vertical` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.reflect_vertical />
  <Boxicons.reflect_vertical class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def reflect_vertical(assigns) do
    svg(
      assigns,
      ~S|<path d="m3 18 6-6-6-6v12zm12-6 6 6V6l-6 6zm-4-9h2v3h-2zm0 5h2v3h-2zm0 5h2v3h-2zm0 5h2v3h-2z"/>|
    )
  end

  @doc """
  Renders the `unite` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.unite />
  <Boxicons.unite class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def unite(assigns) do
    svg(
      assigns,
      ~S|<path d="M15 16a1 1 0 0 0 1-1V9a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h6z"/><path d="M5 16h1V8a2 2 0 0 1 2-2h8V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2zm3 3a2 2 0 0 0 2 2h9a2 2 0 0 0 2-2v-9a2 2 0 0 0-2-2h-1v8a2 2 0 0 1-2 2H8v1z"/>|
    )
  end

  @doc """
  Renders the `to_top` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.to_top />
  <Boxicons.to_top class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def to_top(assigns) do
    svg(assigns, ~S|<path d="M5 15h4v6h6v-6h4l-7-8zM4 3h16v2H4z"/>|)
  end

  @doc """
  Renders the `columns` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.columns />
  <Boxicons.columns class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def columns(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.893 3.001H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h15.893c1.103 0 2-.897 2-2V5a2.003 2.003 0 0 0-2-1.999zM8 19.001H4V8h4v11.001zm6 0h-4V8h4v11.001zm2 0V8h3.893l.001 11.001H16z"/>|
    )
  end

  @doc """
  Renders the `file_pdf` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_pdf />
  <Boxicons.file_pdf class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_pdf(assigns) do
    svg(
      assigns,
      ~S|<path d="M8.267 14.68c-.184 0-.308.018-.372.036v1.178c.076.018.171.023.302.023.479 0 .774-.242.774-.651 0-.366-.254-.586-.704-.586zm3.487.012c-.2 0-.33.018-.407.036v2.61c.077.018.201.018.313.018.817.006 1.349-.444 1.349-1.396.006-.83-.479-1.268-1.255-1.268z"/><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zM9.498 16.19c-.309.29-.765.42-1.296.42a2.23 2.23 0 0 1-.308-.018v1.426H7v-3.936A7.558 7.558 0 0 1 8.219 14c.557 0 .953.106 1.22.319.254.202.426.533.426.923-.001.392-.131.723-.367.948zm3.807 1.355c-.42.349-1.059.515-1.84.515-.468 0-.799-.03-1.024-.06v-3.917A7.947 7.947 0 0 1 11.66 14c.757 0 1.249.136 1.633.426.415.308.675.799.675 1.504 0 .763-.279 1.29-.663 1.615zM17 14.77h-1.532v.911H16.9v.734h-1.432v1.604h-.906V14.03H17v.74zM14 9h-1V4l5 5h-4z"/>|
    )
  end

  @doc """
  Renders the `highlight` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.highlight />
  <Boxicons.highlight class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def highlight(assigns) do
    svg(
      assigns,
      ~S|<path d="m20.707 5.826-3.535-3.533a.999.999 0 0 0-1.408-.006L7.096 10.82a1.01 1.01 0 0 0-.273.488l-1.024 4.437L4 18h2.828l1.142-1.129 3.588-.828c.18-.042.345-.133.477-.262l8.667-8.535a1 1 0 0 0 .005-1.42zm-9.369 7.833-2.121-2.12 7.243-7.131 2.12 2.12-7.242 7.131zM4 20h16v2H4z"/>|
    )
  end

  @doc """
  Renders the `radio_circle` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.radio_circle />
  <Boxicons.radio_circle class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def radio_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 12c0 3.859 3.14 7 7 7 3.859 0 7-3.141 7-7s-3.141-7-7-7c-3.86 0-7 3.141-7 7zm12 0c0 2.757-2.243 5-5 5s-5-2.243-5-5 2.243-5 5-5 5 2.243 5 5z"/>|
    )
  end

  @doc """
  Renders the `ambulance` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.ambulance />
  <Boxicons.ambulance class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def ambulance(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.86 12.48 19.15 8a2 2 0 0 0-1.72-1H15V5a1 1 0 0 0-1-1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 1 1.73 3.49 3.49 0 0 0 7 .27h3.1a3.48 3.48 0 0 0 6.9 0 2 2 0 0 0 2-2v-3a1.07 1.07 0 0 0-.14-.52zM6.5 19A1.5 1.5 0 1 1 8 17.5 1.5 1.5 0 0 1 6.5 19zm5.5-8h-2v2H8v-2H6V9h2V7h2v2h2zm4.5 8a1.5 1.5 0 1 1 1.5-1.5 1.5 1.5 0 0 1-1.5 1.5zM15 12V9h2.43l1.8 3z"/>|
    )
  end

  @doc """
  Renders the `hand_right` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hand_right />
  <Boxicons.hand_right class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def hand_right(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 8H8l1.212-3.03a2 2 0 0 0-1.225-2.641l-.34-.113a.998.998 0 0 0-1.084.309L2.231 7.722a1.001 1.001 0 0 0-.231.64V19a2 2 0 0 0 2 2h7.21a2 2 0 0 0 1.987-1.779L14 12h6a2 2 0 0 0 0-4z"/>|
    )
  end

  @doc """
  Renders the `thermometer` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.thermometer />
  <Boxicons.thermometer class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def thermometer(assigns) do
    svg(
      assigns,
      ~S|<path d="M9 16a3.001 3.001 0 0 0 6 0c0-.353-.072-.686-.184-1H9.184A2.962 2.962 0 0 0 9 16z"/><path d="M18 6V4h-3.185A2.995 2.995 0 0 0 12 2c-1.654 0-3 1.346-3 3v5.8A6.027 6.027 0 0 0 6 16c0 3.309 2.691 6 6 6s6-2.691 6-6a6.027 6.027 0 0 0-3-5.2V10h3V8h-3V6h3zm-4.405 6.324A4.033 4.033 0 0 1 16 16c0 2.206-1.794 4-4 4s-4-1.794-4-4c0-1.585.944-3.027 2.405-3.676l.595-.263V5a1 1 0 0 1 2 0v7.061l.595.263z"/>|
    )
  end

  @doc """
  Renders the `move_vertical` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.move_vertical />
  <Boxicons.move_vertical class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def move_vertical(assigns) do
    svg(assigns, ~S|<path d="m7 17 5 5 5-5h-4V7h4l-5-5-5 5h4v10z"/>|)
  end

  @doc """
  Renders the `institution` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.institution />
  <Boxicons.institution class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def institution(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.857 8.485-3-5A.997.997 0 0 0 18 3h-4.586l-.707-.707a.999.999 0 0 0-1.414 0L10.586 3H6a.997.997 0 0 0-.857.485l-3 5A1.001 1.001 0 0 0 2.002 9H2v10a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1V9h-.002c0-.178-.046-.356-.141-.515zM20 18h-6v-4h-4v4H4v-8h2.414l.293-.293 2-2L12 4.414l4.293 4.293 1 1 .293.293H20v8z"/><path d="M6 12h2v3H6zm10 0h2v3h-2z"/>|
    )
  end

  @doc """
  Renders the `droplet_half` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.droplet_half />
  <Boxicons.droplet_half class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def droplet_half(assigns) do
    svg(
      assigns,
      ~S|<path d="M12.578 2.184a1.004 1.004 0 0 0-1.156 0C11.119 2.398 4 7.513 4 13.75 4 18.53 7.364 22 12 22s8-3.468 8-8.246c0-6.241-7.119-11.356-7.422-11.57zM6 13.75c0-4.283 4.395-8.201 6-9.49V20c-3.533 0-6-2.57-6-6.25z"/>|
    )
  end

  @doc """
  Renders the `hourglass_bottom` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hourglass_bottom />
  <Boxicons.hourglass_bottom class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def hourglass_bottom(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 2H4v2h1v1a7.014 7.014 0 0 0 3.433 6.02c.355.21.567.547.567.901v.158c0 .354-.212.691-.566.9A7.016 7.016 0 0 0 5 19v1H4v2h16v-2h-1v-1a7.016 7.016 0 0 0-3.434-6.021c-.354-.208-.566-.545-.566-.9v-.158c0-.354.212-.69.566-.9A7.016 7.016 0 0 0 19 5V4h1V2H5zm12 3a5.01 5.01 0 0 1-2.45 4.299A3.107 3.107 0 0 0 13.166 11h-2.332a3.114 3.114 0 0 0-1.385-1.702A5.008 5.008 0 0 1 7 5V4h10v1z"/>|
    )
  end

  @doc """
  Renders the `shape_triangle` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shape_triangle />
  <Boxicons.shape_triangle class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def shape_triangle(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 15c-.183 0-.358.022-.532.054L8.946 6.532C8.978 6.359 9 6.182 9 6c0-1.654-1.346-3-3-3S3 4.346 3 6c0 1.302.839 2.401 2 2.815v6.369A2.997 2.997 0 0 0 3 18c0 1.654 1.346 3 3 3a2.993 2.993 0 0 0 2.815-2h6.369a2.994 2.994 0 0 0 2.815 2c1.654 0 3-1.346 3-3S19.654 15 18 15zm-11 .184V8.816c.329-.118.629-.291.894-.508l7.799 7.799a2.961 2.961 0 0 0-.508.894h-6.37A2.99 2.99 0 0 0 7 15.184zM6 5a1.001 1.001 0 1 1-1 1c0-.551.448-1 1-1zm0 14a1.001 1.001 0 0 1 0-2 1.001 1.001 0 0 1 0 2zm12 0a1.001 1.001 0 0 1 0-2 1.001 1.001 0 0 1 0 2z"/>|
    )
  end

  @doc """
  Renders the `sort_down` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sort_down />
  <Boxicons.sort_down class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def sort_down(assigns) do
    svg(
      assigns,
      ~S|<path d="m6 20 4-4H7V4H5v12H2zm5-12h9v2h-9zm0 4h7v2h-7zm0-8h11v2H11zm0 12h5v2h-5z"/>|
    )
  end

  @doc """
  Renders the `pulse` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pulse />
  <Boxicons.pulse class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def pulse(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.97 4.757a.999.999 0 0 0-1.918-.073l-3.186 9.554-2.952-6.644a1.002 1.002 0 0 0-1.843.034L5.323 12H2v2h3.323c.823 0 1.552-.494 1.856-1.257l.869-2.172 3.037 6.835c.162.363.521.594.915.594l.048-.001a.998.998 0 0 0 .9-.683l2.914-8.742.979 3.911A1.995 1.995 0 0 0 18.781 14H22v-2h-3.22l-1.81-7.243z"/>|
    )
  end

  @doc """
  Renders the `invader` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.invader />
  <Boxicons.invader class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def invader(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 3h2v2H6zm2 16h3v2H8zm8-16h2v2h-2zm-3 16h3v2h-3zm7-8V9h-2V7h-2V5h-2v2h-4V5H8v2H6v2H4v2H2v8h2v-4h2v4h2v-3h8v3h2v-4h2v4h2v-8zm-10 1H8V9h2zm6 0h-2V9h2z"/>|
    )
  end

  @doc """
  Renders the `car_garage` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.car_garage />
  <Boxicons.car_garage class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def car_garage(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 19.723V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1h12v1a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1.277A1.99 1.99 0 0 0 22 18v-3c0-.831-.507-1.542-1.228-1.845l-1.368-4.104A2.995 2.995 0 0 0 16.559 7H7.441a2.995 2.995 0 0 0-2.845 2.051l-1.368 4.104A2.001 2.001 0 0 0 2 15v3c0 .738.404 1.376 1 1.723zM5.5 18a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 5.5 18zm13 0a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 18.5 18zM7.441 9h9.117a1 1 0 0 1 .949.684L18.613 13H5.387l1.105-3.316c.137-.409.519-.684.949-.684z"/><path d="M22 7.388V5.279l-9.684-3.228a.996.996 0 0 0-.658.009L2 5.572V7.7l10.015-3.642L22 7.388z"/>|
    )
  end

  @doc """
  Renders the `battery_low` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.battery_low />
  <Boxicons.battery_low class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def battery_low(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 8a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-2h2v-4h-2V8zM5 15V9h3l4 6H5z"/>|
    )
  end

  @doc """
  Renders the `flame` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.flame />
  <Boxicons.flame class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def flame(assigns) do
    svg(
      assigns,
      ~S|<path d="M12.579 2.393a.982.982 0 0 0-1.153.006C9.592 3.728 4 8.252 4 14c0 3.247 1.948 6.043 4.734 7.296A3.971 3.971 0 0 1 8 19c-.017-3.221 3.558-6.893 3.71-7a.497.497 0 0 1 .579 0c.152.107 3.711 2.974 3.711 7.002 0 .854-.275 1.643-.733 2.294C18.052 20.043 20 17.248 20 14.005c0-5.861-5.582-10.307-7.421-11.612z"/>|
    )
  end

  @doc """
  Renders the `adjust_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.adjust_alt />
  <Boxicons.adjust_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def adjust_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.071 19.071c3.833-3.833 3.833-10.31 0-14.143s-10.31-3.833-14.143 0-3.833 10.31 0 14.143 10.31 3.833 14.143 0zM7.051 7.051c2.706-2.707 7.191-2.708 9.898 0l-9.898 9.898c-2.708-2.707-2.71-7.19 0-9.898z"/>|
    )
  end

  @doc """
  Renders the `hand_up` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hand_up />
  <Boxicons.hand_up class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def hand_up(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.221 10.803 12 10V4a2 2 0 0 0-4 0v12l-3.031-1.212a2 2 0 0 0-2.64 1.225l-.113.34a.998.998 0 0 0 .309 1.084l5.197 4.332c.179.149.406.231.64.231H19a2 2 0 0 0 2-2v-7.21a2 2 0 0 0-1.779-1.987z"/>|
    )
  end

  @doc """
  Renders the `rfid` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.rfid />
  <Boxicons.rfid class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def rfid(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 22h16a1 1 0 0 0 1-1v-8h-2v7H5V4h5V2H4a1 1 0 0 0-1 1v18a1 1 0 0 0 1 1z"/><path d="M15 11h2a5 5 0 0 0-5-5v2a3 3 0 0 1 3 3z"/><path d="M19 11h2a9 9 0 0 0-9-9v2a7 7 0 0 1 7 7zM9.65 15.67a1 1 0 0 0-.14-.51.76.76 0 0 0-.38-.31 2.3 2.3 0 0 0-.75-.09H7V18h.65v-1.35h.14a1.31 1.31 0 0 1 .33 0 .58.58 0 0 1 .19.14 4.72 4.72 0 0 1 .35.48l.47.7h.78l-.39-.63a3.56 3.56 0 0 0-.38-.53 1.25 1.25 0 0 0-.35-.27 1 1 0 0 0 .64-.3.84.84 0 0 0 .22-.57zm-.74.33a.4.4 0 0 1-.18.14 2.36 2.36 0 0 1-.59 0h-.49v-.82h1a.4.4 0 0 1 .25.13.36.36 0 0 1 .09.26.43.43 0 0 1-.08.29zM10.92 16.62h1.36v-.54h-1.36v-.77h1.57v-.55h-2.22V18h.65v-1.38zM13.01 14.76h.65V18h-.65zM16.1 14.82a2.48 2.48 0 0 0-.62-.06h-1.2V18h1.24a1.76 1.76 0 0 0 .57-.07 1.07 1.07 0 0 0 .46-.26 1.35 1.35 0 0 0 .35-.57 2 2 0 0 0 .1-.69 2.35 2.35 0 0 0-.11-.76 1.33 1.33 0 0 0-.31-.53 1.09 1.09 0 0 0-.48-.3zm.16 2.18a.74.74 0 0 1-.17.31.57.57 0 0 1-.27.13 1.79 1.79 0 0 1-.39 0h-.49v-2.13h.29a3.06 3.06 0 0 1 .54 0 .71.71 0 0 1 .3.15.82.82 0 0 1 .19.32 2.05 2.05 0 0 1 .06.57 2.41 2.41 0 0 1-.06.65z"/>|
    )
  end

  @doc """
  Renders the `git_compare` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.git_compare />
  <Boxicons.git_compare class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def git_compare(assigns) do
    svg(
      assigns,
      ~S|<path d="M6.01 2c-1.93 0-3.5 1.57-3.5 3.5 0 1.58 1.06 2.903 2.5 3.337v7.16c-.001.179.027 1.781 1.174 2.931C6.892 19.64 7.84 20 9 20v2l4-3-4-3v2c-1.823 0-1.984-1.534-1.99-2V8.837c1.44-.434 2.5-1.757 2.5-3.337 0-1.93-1.571-3.5-3.5-3.5zm0 5c-.827 0-1.5-.673-1.5-1.5S5.183 4 6.01 4s1.5.673 1.5 1.5S6.837 7 6.01 7zm13 8.163V7.997C19.005 6.391 17.933 4 15 4V2l-4 3 4 3V6c1.829 0 2.001 1.539 2.01 2v7.163c-1.44.434-2.5 1.757-2.5 3.337 0 1.93 1.57 3.5 3.5 3.5s3.5-1.57 3.5-3.5c0-1.58-1.06-2.903-2.5-3.337zm-1 4.837c-.827 0-1.5-.673-1.5-1.5s.673-1.5 1.5-1.5 1.5.673 1.5 1.5-.673 1.5-1.5 1.5z"/>|
    )
  end

  @doc """
  Renders the `no_signal` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.no_signal />
  <Boxicons.no_signal class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def no_signal(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 16h2v5H3zm4-3h2v8H7zM21 3h-2v14.59l-2-2V7h-2v6.59l-2-2V10h-1.59l-7.7-7.71-1.42 1.42 18 18 1.42-1.42-.71-.7V3zm-6 18h1.88L15 19.12V21zm-4 0h2v-3.88l-2-2V21z"/>|
    )
  end

  @doc """
  Renders the `camera_plus` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.camera_plus />
  <Boxicons.camera_plus class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def camera_plus(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 5h-2.586l-2.707-2.707A.996.996 0 0 0 14 2h-4a.996.996 0 0 0-.707.293L6.586 5H4c-1.103 0-2 .897-2 2v11c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2zm-8 12c-2.71 0-5-2.29-5-5 0-2.711 2.29-5 5-5s5 2.289 5 5c0 2.71-2.29 5-5 5z"/><path d="M13 9h-2v2H9v2h2v2h2v-2h2v-2h-2z"/>|
    )
  end

  @doc """
  Renders the `closet` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.closet />
  <Boxicons.closet class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def closet(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 10.551v-.678A4.005 4.005 0 0 0 16 6c0-2.206-1.794-4-4-4S8 3.794 8 6h2c0-1.103.897-2 2-2s2 .897 2 2-.897 2-2 2a1 1 0 0 0-1 1v1.551l-8.665 7.702A1.001 1.001 0 0 0 3 20h18a1.001 1.001 0 0 0 .664-1.748L13 10.551zM5.63 18 12 12.338 18.37 18H5.63z"/>|
    )
  end

  @doc """
  Renders the `shape_circle` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shape_circle />
  <Boxicons.shape_circle class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def shape_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.494 9.05a8.14 8.14 0 0 0-4.544-4.544C14.713 3.088 13.485 2 12 2S9.287 3.088 9.05 4.506A8.136 8.136 0 0 0 4.506 9.05C3.088 9.287 2 10.515 2 12s1.088 2.713 2.506 2.95a8.14 8.14 0 0 0 4.544 4.544C9.287 20.912 10.515 22 12 22s2.713-1.088 2.95-2.506a8.14 8.14 0 0 0 4.544-4.544C20.912 14.713 22 13.485 22 12s-1.088-2.713-2.506-2.95zM12 4a1 1 0 0 1 1 1c0 .06-.023.11-.034.167a1.015 1.015 0 0 1-.083.279c-.014.027-.034.049-.051.075a1.062 1.062 0 0 1-.16.209c-.04.037-.09.062-.136.092-.054.036-.104.078-.165.103-.115.047-.239.075-.371.075s-.256-.028-.371-.075c-.061-.024-.111-.066-.165-.103-.046-.03-.096-.055-.136-.092a1.062 1.062 0 0 1-.16-.209c-.017-.026-.037-.048-.051-.075a1.026 1.026 0 0 1-.083-.279C11.023 5.11 11 5.06 11 5a1 1 0 0 1 1-1zm-7 7c.06 0 .11.023.167.034.099.017.194.041.279.083.027.014.049.034.075.051.075.047.149.097.209.16.037.04.062.09.092.136.036.054.078.104.103.165.047.115.075.239.075.371s-.028.256-.075.371c-.024.061-.066.111-.103.165-.03.046-.055.096-.092.136-.06.063-.134.113-.209.16-.026.017-.048.037-.075.051a1.026 1.026 0 0 1-.279.083C5.11 12.977 5.06 13 5 13a1 1 0 0 1 0-2zm7 9a1 1 0 0 1-1-1c0-.06.023-.11.034-.167.017-.099.041-.194.083-.279.014-.027.034-.049.051-.075.047-.075.097-.149.16-.209.04-.037.09-.062.136-.092.054-.036.104-.078.165-.103.115-.047.239-.075.371-.075s.256.028.371.075c.061.024.111.066.165.103.046.03.096.055.136.092.063.06.113.134.16.209.017.026.037.048.051.075.042.085.066.181.083.279.011.057.034.107.034.167a1 1 0 0 1-1 1zm2.583-2.512c-.006-.011-.017-.019-.022-.029a3.007 3.007 0 0 0-.996-1.007c-.054-.033-.109-.06-.166-.09a2.902 2.902 0 0 0-.486-.205c-.064-.021-.128-.044-.194-.061-.233-.057-.471-.096-.719-.096s-.486.039-.718.097c-.066.017-.13.039-.195.061a2.928 2.928 0 0 0-.485.205c-.056.029-.112.057-.166.09a3.007 3.007 0 0 0-.996 1.007c-.006.011-.017.019-.022.029a6.15 6.15 0 0 1-2.905-2.905c.011-.006.019-.017.029-.022a3.007 3.007 0 0 0 1.007-.996c.033-.054.061-.11.09-.166.083-.154.15-.316.205-.485.021-.065.044-.129.061-.195.056-.234.095-.472.095-.72s-.039-.486-.097-.718a2.568 2.568 0 0 0-.061-.194 2.902 2.902 0 0 0-.205-.486c-.03-.057-.057-.112-.09-.166A3.007 3.007 0 0 0 6.54 9.44c-.01-.006-.018-.017-.028-.023a6.15 6.15 0 0 1 2.905-2.905c.006.01.017.018.022.029.248.411.588.755.996 1.007.054.033.11.061.166.09.155.083.316.15.486.205.064.021.128.044.194.061.233.057.47.096.719.096a2.94 2.94 0 0 0 .912-.158c.17-.055.331-.122.486-.205.056-.029.112-.057.166-.09.408-.252.748-.596.996-1.007.006-.011.017-.019.022-.029a6.15 6.15 0 0 1 2.905 2.905c-.011.006-.019.017-.029.022a3.007 3.007 0 0 0-1.007.996c-.033.054-.061.11-.09.166-.083.155-.15.316-.205.486-.021.064-.044.128-.061.194A3.07 3.07 0 0 0 16 12a2.94 2.94 0 0 0 .158.912c.055.17.122.331.205.486.029.056.057.112.09.166.252.408.596.748 1.007.996.011.006.019.017.029.022a6.145 6.145 0 0 1-2.906 2.906zM19 13c-.06 0-.11-.023-.167-.034a1.015 1.015 0 0 1-.279-.083c-.027-.014-.049-.034-.075-.051a1.062 1.062 0 0 1-.209-.16c-.037-.04-.062-.09-.092-.136-.036-.054-.078-.104-.103-.165-.047-.115-.075-.239-.075-.371s.028-.256.075-.371c.024-.061.066-.111.103-.165.03-.046.055-.096.092-.136.06-.063.134-.113.209-.16.026-.017.048-.037.075-.051.085-.042.181-.066.279-.083.057-.011.107-.034.167-.034a1 1 0 0 1 0 2z"/>|
    )
  end

  @doc """
  Renders the `last_page` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.last_page />
  <Boxicons.last_page class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def last_page(assigns) do
    svg(
      assigns,
      ~S|<path d="M7.707 17.707 13.414 12 7.707 6.293 6.293 7.707 10.586 12l-4.293 4.293zM15 6h2v12h-2z"/>|
    )
  end

  @doc """
  Renders the `expand` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.expand />
  <Boxicons.expand class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def expand(assigns) do
    svg(
      assigns,
      ~S|<path d="m21 15.344-2.121 2.121-3.172-3.172-1.414 1.414 3.172 3.172L15.344 21H21zM3 8.656l2.121-2.121 3.172 3.172 1.414-1.414-3.172-3.172L8.656 3H3zM21 3h-5.656l2.121 2.121-3.172 3.172 1.414 1.414 3.172-3.172L21 8.656zM3 21h5.656l-2.121-2.121 3.172-3.172-1.414-1.414-3.172 3.172L3 15.344z"/>|
    )
  end

  @doc """
  Renders the `plus` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.plus />
  <Boxicons.plus class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def plus(assigns) do
    svg(assigns, ~S|<path d="M19 11h-6V5h-2v6H5v2h6v6h2v-6h6z"/>|)
  end

  @doc """
  Renders the `street_view` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.street_view />
  <Boxicons.street_view class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def street_view(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 18h2v-5h2V9c0-1.103-.897-2-2-2h-4c-1.103 0-2 .897-2 2v4h2v5h2z"/><path d="m18.446 11.386-.893 1.789C19.108 13.95 20 14.98 20 16c0 1.892-3.285 4-8 4s-8-2.108-8-4c0-1.02.892-2.05 2.446-2.825l-.893-1.789C3.295 12.512 2 14.193 2 16c0 3.364 4.393 6 10 6s10-2.636 10-6c0-1.807-1.295-3.488-3.554-4.614z"/>|
    )
  end

  @doc """
  Renders the `quote_left` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.quote_left />
  <Boxicons.quote_left class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def quote_left(assigns) do
    svg(
      assigns,
      ~S|<path d="M3.691 6.292C5.094 4.771 7.217 4 10 4h1v2.819l-.804.161c-1.37.274-2.323.813-2.833 1.604A2.902 2.902 0 0 0 6.925 10H10a1 1 0 0 1 1 1v7c0 1.103-.897 2-2 2H3a1 1 0 0 1-1-1v-5l.003-2.919c-.009-.111-.199-2.741 1.688-4.789zM20 20h-6a1 1 0 0 1-1-1v-5l.003-2.919c-.009-.111-.199-2.741 1.688-4.789C16.094 4.771 18.217 4 21 4h1v2.819l-.804.161c-1.37.274-2.323.813-2.833 1.604A2.902 2.902 0 0 0 17.925 10H21a1 1 0 0 1 1 1v7c0 1.103-.897 2-2 2z"/>|
    )
  end

  @doc """
  Renders the `sidebar` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sidebar />
  <Boxicons.sidebar class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def sidebar(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM4 19V7h6v12H4zm8 0V7h8V5l.002 14H12z"/><path d="M6 10h2v2H6zm0 4h2v2H6z"/>|
    )
  end

  @doc """
  Renders the `grid_small` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.grid_small />
  <Boxicons.grid_small class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def grid_small(assigns) do
    svg(assigns, ~S|<path d="M7 7h4v4H7zm0 6h4v4H7zm6-6h4v4h-4zm0 6h4v4h-4z"/>|)
  end

  @doc """
  Renders the `coupon` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.coupon />
  <Boxicons.coupon class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def coupon(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 5H3a1 1 0 0 0-1 1v4h.893c.996 0 1.92.681 2.08 1.664A2.001 2.001 0 0 1 3 14H2v4a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1v-4h-1a2.001 2.001 0 0 1-1.973-2.336c.16-.983 1.084-1.664 2.08-1.664H22V6a1 1 0 0 0-1-1zM11 17H9v-2h2v2zm0-4H9v-2h2v2zm0-4H9V7h2v2z"/>|
    )
  end

  @doc """
  Renders the `border_outer` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.border_outer />
  <Boxicons.border_outer class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def border_outer(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 7h2v2h-2zm0 8h2v2h-2zm-4-4h2v2H7zm8 0h2v2h-2zm-4 0h2v2h-2z"/><path d="M19 3H3v18h18V3h-2zm0 4v12H5V5h14v2z"/>|
    )
  end

  @doc """
  Renders the `loader_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.loader_alt />
  <Boxicons.loader_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def loader_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 22c5.421 0 10-4.579 10-10h-2c0 4.337-3.663 8-8 8s-8-3.663-8-8c0-4.336 3.663-8 8-8V2C6.579 2 2 6.58 2 12c0 5.421 4.579 10 10 10z"/>|
    )
  end

  @doc """
  Renders the `shield_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shield_alt />
  <Boxicons.shield_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def shield_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="m20.342 8.447 1.105-.553A.998.998 0 0 0 21.8 6.4l-3-4A1 1 0 0 0 18 2H6a1 1 0 0 0-.8.4l-3 4a1 1 0 0 0 .352 1.494l1.105.553-1.131 2.262A5.052 5.052 0 0 0 2 12.944v.591a6.028 6.028 0 0 0 3.894 5.618l3.431 1.286a5.488 5.488 0 0 1 1.969 1.268.997.997 0 0 0 1.413 0 5.486 5.486 0 0 1 1.969-1.267l3.432-1.287A6.03 6.03 0 0 0 22 13.535v-.591c0-.771-.183-1.545-.527-2.236l-1.131-2.261zM20 13.535a4.019 4.019 0 0 1-2.596 3.745l-3.431 1.287a7.5 7.5 0 0 0-1.974 1.101 7.515 7.515 0 0 0-1.974-1.102L6.596 17.28A4.019 4.019 0 0 1 4 13.535v-.591c0-.463.109-.928.316-1.342l1.131-2.261a2.003 2.003 0 0 0-.895-2.684l-.033-.015L6.5 4h11l1.981 2.642-.034.017a2.004 2.004 0 0 0-.895 2.684l1.131 2.26c.208.414.317.878.317 1.341v.591z"/>|
    )
  end

  @doc """
  Renders the `wind` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.wind />
  <Boxicons.wind class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def wind(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 5.5C13 3.57 11.43 2 9.5 2 7.466 2 6.25 3.525 6.25 5h2c0-.415.388-1 1.25-1 .827 0 1.5.673 1.5 1.5S10.327 7 9.5 7H2v2h7.5C11.43 9 13 7.43 13 5.5zm2.5 9.5H8v2h7.5c.827 0 1.5.673 1.5 1.5s-.673 1.5-1.5 1.5c-.862 0-1.25-.585-1.25-1h-2c0 1.475 1.216 3 3.25 3 1.93 0 3.5-1.57 3.5-3.5S17.43 15 15.5 15z"/><path d="M18 5c-2.206 0-4 1.794-4 4h2c0-1.103.897-2 2-2s2 .897 2 2-.897 2-2 2H2v2h16c2.206 0 4-1.794 4-4s-1.794-4-4-4zM2 15h4v2H2z"/>|
    )
  end

  @doc """
  Renders the `megaphone` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.megaphone />
  <Boxicons.megaphone class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def megaphone(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.664 3.478 8 8v7l.748.267-1.127 2.254a1.999 1.999 0 0 0 1.156 2.792l4.084 1.361a2.015 2.015 0 0 0 2.421-1.003l1.303-2.606 4.079 1.457A1 1 0 0 0 22 18.581V4.419a1 1 0 0 0-1.336-.941zm-7.171 16.299L9.41 18.416l1.235-2.471 4.042 1.444-1.194 2.388zM4 15h2V8H4c-1.103 0-2 .897-2 2v3c0 1.103.897 2 2 2z"/>|
    )
  end

  @doc """
  Renders the `quote_single_left` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.quote_single_left />
  <Boxicons.quote_single_left class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def quote_single_left(assigns) do
    svg(
      assigns,
      ~S|<path d="m15.203 6.98.804-.161V4h-1c-2.784 0-4.906.771-6.309 2.292C6.81 8.34 7 10.97 7.006 11v8a1 1 0 0 0 1 1h7c1.103 0 2-.897 2-2v-7a1 1 0 0 0-1-1h-4.079c.022-.402.123-.912.429-1.396.509-.801 1.466-1.347 2.847-1.624z"/>|
    )
  end

  @doc """
  Renders the `border_top` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.border_top />
  <Boxicons.border_top class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def border_top(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 11h2v2h-2zm0 4h2v2h-2zm0-8h2v2h-2zm0 12h2v2h-2zm-8 0h2v2h-2zm4 0h2v2h-2zm-8 0h2v2H7zm-4 0h2v2H3zm0-8h2v2H3zm0 4h2v2H3zm0-8h2v2H3zm4 4h2v2H7zm8 0h2v2h-2zm-4-4h2v2h-2zm0 8h2v2h-2zm0-4h2v2h-2zm10-8H3v2h18z"/>|
    )
  end

  @doc """
  Renders the `trending_down` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.trending_down />
  <Boxicons.trending_down class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def trending_down(assigns) do
    svg(
      assigns,
      ~S|<path d="m14 9.586-4 4-6.293-6.293-1.414 1.414L10 16.414l4-4 4.293 4.293L16 19h6v-6l-2.293 2.293z"/>|
    )
  end

  @doc """
  Renders the `wifi_2` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.wifi_2 />
  <Boxicons.wifi_2 class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def wifi_2(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.671 14.307C16.184 12.819 14.17 12 12 12s-4.184.819-5.671 2.307l1.414 1.414c1.11-1.11 2.621-1.722 4.257-1.722 1.636.001 3.147.612 4.257 1.722l1.414-1.414z"/><path d="M20.437 11.292c-4.572-4.573-12.301-4.573-16.873 0l1.414 1.414c3.807-3.807 10.238-3.807 14.045 0l1.414-1.414z"/>|
    )
  end

  @doc """
  Renders the `wifi_1` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.wifi_1 />
  <Boxicons.wifi_1 class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def wifi_1(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.671 14.307C16.184 12.819 14.17 12 12 12s-4.184.819-5.671 2.307l1.414 1.414c1.11-1.11 2.621-1.722 4.257-1.722 1.636.001 3.147.612 4.257 1.722l1.414-1.414z"/>|
    )
  end

  @doc """
  Renders the `minus_front` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.minus_front />
  <Boxicons.minus_front class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def minus_front(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 16h3v3c0 1.103.897 2 2 2h9c1.103 0 2-.897 2-2v-9c0-1.103-.897-2-2-2h-3V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2zm13.997 3H10v-9h9l-.003 9z"/>|
    )
  end

  @doc """
  Renders the `caret_down` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.caret_down />
  <Boxicons.caret_down class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def caret_down(assigns) do
    svg(assigns, ~S|<path d="m11.998 17 7-8h-14z"/>|)
  end

  @doc """
  Renders the `expand_vertical` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.expand_vertical />
  <Boxicons.expand_vertical class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def expand_vertical(assigns) do
    svg(
      assigns,
      ~S|<path d="m12 19.24-4.95-4.95-1.41 1.42L12 22.07l6.36-6.36-1.41-1.42L12 19.24zM5.64 8.29l1.41 1.42L12 4.76l4.95 4.95 1.41-1.42L12 1.93 5.64 8.29z"/>|
    )
  end

  @doc """
  Renders the `plane_take_off` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.plane_take_off />
  <Boxicons.plane_take_off class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def plane_take_off(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 18h18v2H3zm18.509-9.473a1.61 1.61 0 0 0-2.036-1.019L15 9 7 6 5 7l6 4-4 2-4-2-1 1 4 4 14.547-5.455a1.611 1.611 0 0 0 .962-2.018z"/>|
    )
  end

  @doc """
  Renders the `font` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.font />
  <Boxicons.font class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def font(assigns) do
    svg(
      assigns,
      ~S|<path d="m11.307 4-6 16h2.137l1.875-5h6.363l1.875 5h2.137l-6-16h-2.387zm-1.239 9L12.5 6.515 14.932 13h-4.864z"/>|
    )
  end

  @doc """
  Renders the `play` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.play />
  <Boxicons.play class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def play(assigns) do
    svg(assigns, ~S|<path d="M7 6v12l10-6z"/>|)
  end

  @doc """
  Renders the `move_horizontal` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.move_horizontal />
  <Boxicons.move_horizontal class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def move_horizontal(assigns) do
    svg(assigns, ~S|<path d="M17 11H7V7l-5 5 5 5v-4h10v4l5-5-5-5z"/>|)
  end

  @doc """
  Renders the `link` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.link />
  <Boxicons.link class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def link(assigns) do
    svg(
      assigns,
      ~S|<path d="M8.465 11.293c1.133-1.133 3.109-1.133 4.242 0l.707.707 1.414-1.414-.707-.707c-.943-.944-2.199-1.465-3.535-1.465s-2.592.521-3.535 1.465L4.929 12a5.008 5.008 0 0 0 0 7.071 4.983 4.983 0 0 0 3.535 1.462A4.982 4.982 0 0 0 12 19.071l.707-.707-1.414-1.414-.707.707a3.007 3.007 0 0 1-4.243 0 3.005 3.005 0 0 1 0-4.243l2.122-2.121z"/><path d="m12 4.929-.707.707 1.414 1.414.707-.707a3.007 3.007 0 0 1 4.243 0 3.005 3.005 0 0 1 0 4.243l-2.122 2.121c-1.133 1.133-3.109 1.133-4.242 0L10.586 12l-1.414 1.414.707.707c.943.944 2.199 1.465 3.535 1.465s2.592-.521 3.535-1.465L19.071 12a5.008 5.008 0 0 0 0-7.071 5.006 5.006 0 0 0-7.071 0z"/>|
    )
  end

  @doc """
  Renders the `first_page` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.first_page />
  <Boxicons.first_page class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def first_page(assigns) do
    svg(
      assigns,
      ~S|<path d="m16.293 17.707 1.414-1.414L13.414 12l4.293-4.293-1.414-1.414L10.586 12zM7 6h2v12H7z"/>|
    )
  end

  @doc """
  Renders the `paragraph` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.paragraph />
  <Boxicons.paragraph class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def paragraph(assigns) do
    svg(
      assigns,
      ~S|<path d="M9 16h2v4h2V6h2v14h2V6h3V4H9c-3.309 0-6 2.691-6 6s2.691 6 6 6zM9 6h2v8H9c-2.206 0-4-1.794-4-4s1.794-4 4-4z"/>|
    )
  end

  @doc """
  Renders the `car_crash` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.car_crash />
  <Boxicons.car_crash class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def car_crash(assigns) do
    svg(
      assigns,
      ~S|<path d="M2.634 17.918a1.765 1.765 0 0 0 1.201 1.291l.18.791H4v2h16v-2H6.683a.84.84 0 0 0-.007-.278l-.196-.863 10.357-2.356.196.863a.886.886 0 0 0 1.06.667l.863-.197a.885.885 0 0 0 .667-1.06l-.251-1.103c.446-.416.67-1.046.525-1.683l-.59-2.59a1.76 1.76 0 0 0-1.262-1.307l-2.049-3.378a2.774 2.774 0 0 0-2.982-1.263l-7.868 1.79a2.769 2.769 0 0 0-2.144 2.43l-.387 3.932a1.76 1.76 0 0 0-.57 1.724l.589 2.59zm3.02-.688a1.327 1.327 0 1 1-.59-2.589 1.327 1.327 0 0 1 .59 2.589zm11.222-2.552a1.328 1.328 0 1 1-.59-2.587 1.328 1.328 0 0 1 .59 2.587zM5.589 9.192l7.869-1.791a.773.773 0 0 1 .83.351l1.585 2.613-.566.129-10.046 2.287-.568.129.299-3.042a.772.772 0 0 1 .597-.676zM18.405 4 17 2l-.5 3L19 9l3 1-2-2.539 2-.933-2-.933L22 2z"/>|
    )
  end

  @doc """
  Renders the `coffee_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.coffee_alt />
  <Boxicons.coffee_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def coffee_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 5h-1V4a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1v9a4 4 0 0 0 4 4h6c1.858 0 3.411-1.279 3.858-3H19a3 3 0 0 0 3-3V8a3 3 0 0 0-3-3zm1 6a1 1 0 0 1-1 1h-1V7h1a1 1 0 0 1 1 1v3zm-2 8H3c0 1.654 1.346 3 3 3h11c1.654 0 3-1.346 3-3h-2z"/>|
    )
  end

  @doc """
  Renders the `inbox` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.inbox />
  <Boxicons.inbox class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def inbox(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V5c0-1.103-.897-2-2-2zm-1 9h-3.142c-.446 1.722-1.997 3-3.858 3s-3.412-1.278-3.858-3H4V5h16v7h-1z"/>|
    )
  end

  @doc """
  Renders the `skip_previous` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.skip_previous />
  <Boxicons.skip_previous class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def skip_previous(assigns) do
    svg(assigns, ~S|<path d="m16 7-7 5 7 5zm-7 5V7H7v10h2z"/>|)
  end

  @doc """
  Renders the `quote_single_right` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.quote_single_right />
  <Boxicons.quote_single_right class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def quote_single_right(assigns) do
    svg(
      assigns,
      ~S|<path d="M8.804 17.02 8 17.18V20h1c2.783 0 4.906-.771 6.309-2.292C17.196 15.66 17.006 13.03 17 13V5a1 1 0 0 0-1-1H9c-1.103 0-2 .897-2 2v7a1 1 0 0 0 1 1h4.078a2.89 2.89 0 0 1-.429 1.396c-.507.801-1.464 1.347-2.845 1.624z"/>|
    )
  end

  @doc """
  Renders the `car_wash` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.car_wash />
  <Boxicons.car_wash class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def car_wash(assigns) do
    svg(
      assigns,
      ~S|<path d="m20.772 13.155-1.368-4.104A2.995 2.995 0 0 0 16.559 7H7.441a2.995 2.995 0 0 0-2.845 2.051l-1.368 4.104A2.001 2.001 0 0 0 2 15v3c0 .738.404 1.376 1 1.723V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1h12v1a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1.277A1.99 1.99 0 0 0 22 18v-3c0-.831-.507-1.542-1.228-1.845zM7.441 9h9.117a1 1 0 0 1 .949.684L18.613 13H5.387l1.105-3.316c.137-.409.519-.684.949-.684zM5.5 18a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 5.5 18zm13 0a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 18.5 18zM9 4.378c.005-1.088-1.037-2.051-1.387-2.344a.176.176 0 0 0-.228 0C7.033 2.325 5.995 3.271 6 4.377 6 5.272 6.673 6 7.5 6S9 5.272 9 4.378zm4.5 0c.005-1.088-1.037-2.052-1.387-2.344a.176.176 0 0 0-.228 0c-.353.291-1.391 1.238-1.386 2.344C10.5 5.272 11.173 6 12 6s1.5-.728 1.5-1.622zm4.5 0c.005-1.088-1.037-2.052-1.387-2.344a.176.176 0 0 0-.228 0c-.352.291-1.39 1.237-1.385 2.343C15 5.272 15.673 6 16.5 6S18 5.272 18 4.378z"/>|
    )
  end

  @doc """
  Renders the `border_all` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.border_all />
  <Boxicons.border_all class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def border_all(assigns) do
    svg(
      assigns,
      ~S|<path d="M9 21h12V3H3v18h6zm10-4v2h-6v-6h6v4zM15 5h4v6h-6V5h2zM5 7V5h6v6H5V7zm0 12v-6h6v6H5z"/>|
    )
  end

  @doc """
  Renders the `file_txt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_txt />
  <Boxicons.file_txt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_txt(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zM9.998 14.768H8.895v3.274h-.917v-3.274H6.893V14h3.105v.768zm2.725 3.274-.365-.731c-.15-.282-.246-.492-.359-.726h-.013c-.083.233-.185.443-.312.726l-.335.731h-1.045l1.171-2.045L10.336 14h1.05l.354.738c.121.245.21.443.306.671h.013c.096-.258.174-.438.276-.671l.341-.738h1.043l-1.139 1.973 1.198 2.069h-1.055zm4.384-3.274h-1.104v3.274h-.917v-3.274h-1.085V14h3.105v.768zM14 9h-1V4l5 5h-4z"/>|
    )
  end

  @doc """
  Renders the `border_radius` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.border_radius />
  <Boxicons.border_radius class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def border_radius(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 19h2v2h-2zM7 19h2v2H7zm8 0h2v2h-2zm-4 0h2v2h-2zm-8 0h2v2H3zm0-4h2v2H3zm0-8h2v2H3zm0 4h2v2H3zm0-8h2v2H3zm4 0h2v2H7zm12 12h2v2h-2zM16 3h-5v2h5c1.654 0 3 1.346 3 3v5h2V8c0-2.757-2.243-5-5-5z"/>|
    )
  end

  @doc """
  Renders the `podcast` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.podcast />
  <Boxicons.podcast class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def podcast(assigns) do
    svg(
      assigns,
      ~S|<path d="M11.01 22h2l.5-7h-3l.5 7z"/><path d="M12 2a10 10 0 0 0-2.45 19.68l-.15-2.12a8 8 0 1 1 5.21 0l-.15 2.12A10 10 0 0 0 12 2z"/><path d="M15.32 9.61a3.44 3.44 0 0 1 .37.68 3.83 3.83 0 0 1 .23.75 3.57 3.57 0 0 1 .09.8 3.66 3.66 0 0 1-.09.81 3.83 3.83 0 0 1-.23.75 3.44 3.44 0 0 1-.37.68 4.7 4.7 0 0 1-.35.43l-.19 2.62a5.33 5.33 0 0 0 .58-.31A5.86 5.86 0 0 0 17 15.2a5.57 5.57 0 0 0 .55-1 5.89 5.89 0 0 0 .35-1.13 6.06 6.06 0 0 0 .1-1.23 6.22 6.22 0 0 0-.13-1.21A6.09 6.09 0 0 0 17 8.49a6.29 6.29 0 0 0-.73-.89 5.67 5.67 0 0 0-.89-.73 6.3 6.3 0 0 0-1-.56A6.17 6.17 0 0 0 13.21 6a6.11 6.11 0 0 0-2.41 0 5.51 5.51 0 0 0-1.13.36 5.57 5.57 0 0 0-1 .55 5.67 5.67 0 0 0-.89.73 6.29 6.29 0 0 0-.78.85 6.09 6.09 0 0 0-.9 2.14 6.21 6.21 0 0 0-.1 1.21 6.06 6.06 0 0 0 .12 1.21 5.89 5.89 0 0 0 .35 1.13 5.57 5.57 0 0 0 .55 1 6.24 6.24 0 0 0 1.62 1.62 5.33 5.33 0 0 0 .58.31L9 14.51a4.7 4.7 0 0 1-.35-.43 3.44 3.44 0 0 1-.37-.68 3.83 3.83 0 0 1-.23-.75 3.65 3.65 0 0 1-.05-.81 3.56 3.56 0 0 1 .08-.8 3.83 3.83 0 0 1 .23-.75 3.44 3.44 0 0 1 .37-.68 4 4 0 0 1 .5-.61 3.87 3.87 0 0 1 .59-.48 3.44 3.44 0 0 1 .68-.37 3.86 3.86 0 0 1 .75-.24 4.36 4.36 0 0 1 1.61 0 3.86 3.86 0 0 1 .75.24 3.58 3.58 0 0 1 1.27.85 3.49 3.49 0 0 1 .49.61z"/>|
    )
  end

  @doc """
  Renders the `money` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.money />
  <Boxicons.money class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def money(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 4H3a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1zm-1 11a3 3 0 0 0-3 3H7a3 3 0 0 0-3-3V9a3 3 0 0 0 3-3h10a3 3 0 0 0 3 3v6z"/><path d="M12 8c-2.206 0-4 1.794-4 4s1.794 4 4 4 4-1.794 4-4-1.794-4-4-4zm0 6c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2z"/>|
    )
  end

  @doc """
  Renders the `file_export` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_export />
  <Boxicons.file_export class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_export(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 22a2 2 0 0 0 2-2v-5l-5 4v-3H8v-2h7v-3l5 4V8l-6-6H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12zM13 4l5 5h-5V4z"/>|
    )
  end

  @doc """
  Renders the `bluetooth` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bluetooth />
  <Boxicons.bluetooth class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def bluetooth(assigns) do
    svg(
      assigns,
      ~S|<path d="m4.41 16.192 1.18 1.615L10 14.584V21a1 1 0 0 0 1.541.841l7-4.5a.999.999 0 0 0 .049-1.649L13.537 12l5.053-3.692a1.002 1.002 0 0 0-.049-1.65l-7-4.5a1.002 1.002 0 0 0-1.021-.037c-.32.176-.52.513-.52.879v6.416L5.59 6.192 4.41 7.808 10 11.893v.215l-5.59 4.084zM12 4.832l4.232 2.721L12 10.646V4.832zm0 8.522 4.232 3.093L12 19.168v-5.814z"/>|
    )
  end

  @doc """
  Renders the `bookmark_star` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bookmark_star />
  <Boxicons.bookmark_star class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def bookmark_star(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 11.222 14.667 13l-.89-3.111L16 8l-2.667-.333L12 5l-1.333 2.667L8 8l2.223 1.889L9.333 13z"/><path d="M19 21.723V4a2 2 0 0 0-2-2H7a2 2 0 0 0-2 2v17.723l7-4.571 7 4.571zM8 8l2.667-.333L12 5l1.333 2.667L16 8l-2.223 1.889.89 3.111L12 11.222 9.333 13l.89-3.111L8 8z"/>|
    )
  end

  @doc """
  Renders the `skip_next` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.skip_next />
  <Boxicons.skip_next class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def skip_next(assigns) do
    svg(assigns, ~S|<path d="M7 7v10l7-5zm9 10V7h-2v10z"/>|)
  end

  @doc """
  Renders the `checkbox_square` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.checkbox_square />
  <Boxicons.checkbox_square class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def checkbox_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M9 9h6v6H9z"/><path d="M19 17V7c0-1.103-.897-2-2-2H7c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h10c1.103 0 2-.897 2-2zM7 7h10l.002 10H7V7z"/>|
    )
  end

  @doc """
  Renders the `file_image` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_image />
  <Boxicons.file_image class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_image(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 22h12a2 2 0 0 0 2-2V8l-6-6H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2zm7-18 5 5h-5V4zm-4.5 7a1.5 1.5 0 1 1-.001 3.001A1.5 1.5 0 0 1 8.5 11zm.5 5 1.597 1.363L13 13l4 6H7l2-3z"/>|
    )
  end

  @doc """
  Renders the `swim` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.swim />
  <Boxicons.swim class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def swim(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.875 13.219c-.567.453-.978.781-1.878.781-.899 0-1.288-.311-1.876-.781-.68-.543-1.525-1.219-3.127-1.219-1.601 0-2.445.676-3.124 1.219-.588.47-.975.781-1.875.781-.898 0-1.286-.311-1.873-.78C4.443 12.676 3.6 12 2 12v2c.897 0 1.285.311 1.872.78.679.544 1.523 1.22 3.123 1.22s2.446-.676 3.125-1.22c.587-.47.976-.78 1.874-.78.9 0 1.311.328 1.878.781.679.543 1.524 1.219 3.125 1.219 1.602 0 2.447-.676 3.127-1.219.588-.47.977-.781 1.876-.781v-2c-1.601 0-2.446.676-3.125 1.219zM16.997 19c-.899 0-1.288-.311-1.876-.781-.68-.543-1.525-1.219-3.127-1.219-1.601 0-2.445.676-3.124 1.219-.588.47-.975.781-1.875.781-.898 0-1.286-.311-1.873-.78C4.443 17.676 3.6 17 2 17v2c.897 0 1.285.311 1.872.78.679.544 1.523 1.22 3.123 1.22s2.446-.676 3.125-1.22c.587-.47.976-.78 1.874-.78.9 0 1.311.328 1.878.781.679.543 1.524 1.219 3.125 1.219 1.602 0 2.447-.676 3.127-1.219.588-.47.977-.781 1.876-.781v-2c-1.601 0-2.446.676-3.125 1.219-.567.453-.978.781-1.878.781zM11 5.419l2.104 2.104-2.057 2.57c.286-.056.596-.093.947-.093 1.602 0 2.447.676 3.127 1.219.588.47.977.781 1.876.781.9 0 1.311-.328 1.878-.781.132-.105.274-.217.423-.326l-2.096-2.09.005-.005-5.5-5.5a.999.999 0 0 0-1.414 0l-4 4 1.414 1.414L11 5.419z"/>|
    )
  end

  @doc """
  Renders the `accessibility` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.accessibility />
  <Boxicons.accessibility class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def accessibility(assigns) do
    svg(
      assigns,
      ~S|<path d="m17.836 12.014-4.345.725 3.29-4.113a1 1 0 0 0-.227-1.457l-6-4a.999.999 0 0 0-1.262.125l-4 4 1.414 1.414 3.42-3.42 2.584 1.723-2.681 3.352a5.913 5.913 0 0 0-5.5.752l1.451 1.451A3.972 3.972 0 0 1 8 12c2.206 0 4 1.794 4 4 0 .739-.216 1.425-.566 2.02l1.451 1.451A5.961 5.961 0 0 0 14 16c0-.445-.053-.878-.145-1.295L17 14.181V20h2v-7a.998.998 0 0 0-1.164-.986zM8 20c-2.206 0-4-1.794-4-4 0-.739.216-1.425.566-2.02l-1.451-1.451A5.961 5.961 0 0 0 2 16c0 3.309 2.691 6 6 6 1.294 0 2.49-.416 3.471-1.115l-1.451-1.451A3.972 3.972 0 0 1 8 20z"/>|
    )
  end

  @doc """
  Renders the `trending_up` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.trending_up />
  <Boxicons.trending_up class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def trending_up(assigns) do
    svg(
      assigns,
      ~S|<path d="m10 10.414 4 4 5.707-5.707L22 11V5h-6l2.293 2.293L14 11.586l-4-4-7.707 7.707 1.414 1.414z"/>|
    )
  end

  @doc """
  Renders the `sort_up` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sort_up />
  <Boxicons.sort_up class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def sort_up(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 9h9v2h-9zm0 4h7v2h-7zm0-8h11v2H11zm0 12h5v2h-5zm-6 3h2V8h3L6 4 2 8h3z"/>|
    )
  end

  @doc """
  Renders the `bolt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bolt />
  <Boxicons.bolt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def bolt(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.168 8H13l.806-4.835A1 1 0 0 0 12.819 2H7.667a1 1 0 0 0-.986.835l-1.667 10A1 1 0 0 0 6 14h4v8l8.01-12.459A1 1 0 0 0 17.168 8z"/>|
    )
  end

  @doc """
  Renders the `baby_carriage` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.baby_carriage />
  <Boxicons.baby_carriage class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def baby_carriage(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.666 12.277a7.72 7.72 0 0 0 .171-.665c.003-.017.004-.033.008-.05.02-.098.029-.199.045-.298.025-.157.055-.313.07-.471a7.979 7.979 0 0 0-2.303-6.45A7.979 7.979 0 0 0 14 2v8H6.517l-.858-2H2v2h2.341l1.828 4.266A3.504 3.504 0 0 0 4 17.5C4 19.43 5.57 21 7.5 21c1.759 0 3.204-1.309 3.449-3h2.102c.245 1.691 1.69 3 3.449 3 1.93 0 3.5-1.57 3.5-3.5 0-.63-.181-1.213-.473-1.725.042-.041.089-.077.131-.119.36-.361.688-.759.977-1.184.288-.43.536-.886.736-1.359.016-.037.026-.076.041-.113h.001l.015-.042c.088-.22.168-.441.235-.668l.003-.013zM7.5 19c-.827 0-1.5-.673-1.5-1.5S6.673 16 7.5 16s1.5.673 1.5 1.5S8.327 19 7.5 19zm9 0c-.827 0-1.5-.673-1.5-1.5s.673-1.5 1.5-1.5 1.5.673 1.5 1.5-.673 1.5-1.5 1.5z"/>|
    )
  end

  @doc """
  Renders the `move` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.move />
  <Boxicons.move class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def move(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 11h-5V6h3l-4-4-4 4h3v5H6V8l-4 4 4 4v-3h5v5H8l4 4 4-4h-3v-5h5v3l4-4-4-4z"/>|
    )
  end

  @doc """
  Renders the `current_location` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.current_location />
  <Boxicons.current_location class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def current_location(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 4.069V2h-2v2.069A8.01 8.01 0 0 0 4.069 11H2v2h2.069A8.008 8.008 0 0 0 11 19.931V22h2v-2.069A8.007 8.007 0 0 0 19.931 13H22v-2h-2.069A8.008 8.008 0 0 0 13 4.069zM12 18c-3.309 0-6-2.691-6-6s2.691-6 6-6 6 2.691 6 6-2.691 6-6 6z"/>|
    )
  end

  @doc """
  Renders the `upload` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.upload />
  <Boxicons.upload class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def upload(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 15h2V9h3l-4-5-4 5h3z"/><path d="M20 18H4v-7H2v7c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2v-7h-2v7z"/>|
    )
  end

  @doc """
  Renders the `stop` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.stop />
  <Boxicons.stop class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def stop(assigns) do
    svg(assigns, ~S|<path d="M7 7h10v10H7z"/>|)
  end

  @doc """
  Renders the `user_account` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.user_account />
  <Boxicons.user_account class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def user_account(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H8a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2zm-6 2.5a2.5 2.5 0 1 1 0 5 2.5 2.5 0 0 1 0-5zM19 15H9v-.25C9 12.901 11.254 11 14 11s5 1.901 5 3.75V15z"/><path d="M4 8H2v12c0 1.103.897 2 2 2h12v-2H4V8z"/>|
    )
  end

  @doc """
  Renders the `business` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.business />
  <Boxicons.business class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def business(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 7h-6a1 1 0 0 0-1 1v3h-2V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v16a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1V8a1 1 0 0 0-1-1zM8 6h2v2H8V6zM6 16H4v-2h2v2zm0-4H4v-2h2v2zm0-4H4V6h2v2zm4 8H8v-2h2v2zm0-4H8v-2h2v2zm9 4h-2v-2h2v2zm0-4h-2v-2h2v2z"/>|
    )
  end

  @doc """
  Renders the `skull` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.skull />
  <Boxicons.skull class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def skull(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C5.505 2 2 6.637 2 11c0 2.129 1.009 3.979 3 5.508V21h3v-3h2v3h4v-3h2v3h3v-4.493c1.991-1.528 3-3.379 3-5.507 0-4.363-3.505-9-10-9zM8 13c-1.121 0-2-1.098-2-2.5S6.879 8 8 8s2 1.098 2 2.5S9.121 13 8 13zm8 0c-1.121 0-2-1.098-2-2.5S14.879 8 16 8s2 1.098 2 2.5-.879 2.5-2 2.5z"/>|
    )
  end

  @doc """
  Renders the `list_plus` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.list_plus />
  <Boxicons.list_plus class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def list_plus(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 15v-3h-2v3h-3v2h3v3h2v-3h3v-2h-.937zM4 7h11v2H4zm0 4h11v2H4zm0 4h8v2H4z"/>|
    )
  end

  @doc """
  Renders the `castle` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.castle />
  <Boxicons.castle class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def castle(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 11h-2V6h1V2h-2v2h-1V2h-2v2h-1V2h-2v2h-1V2H8v2H7V2H5v4h1v5H4V9H2v12h7v-5a3 3 0 0 1 6 0v5h7V9h-2zm-10-1H8V7h2zm6 0h-2V7h2z"/>|
    )
  end

  @doc """
  Renders the `lira` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.lira />
  <Boxicons.lira class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def lira(assigns) do
    svg(
      assigns,
      ~S|<path d="M9 21h2c4.411 0 8-4.038 8-9h-2c0 3.86-2.691 7-6 7v-7.358l6-1.385V8.204l-6 1.385V7.642l6-1.385V4.204l-6 1.385V3H9v3.05l-3 .693v2.053l3-.692v1.947l-3 .692v2.053l3-.692V21z"/>|
    )
  end

  @doc """
  Renders the `shopping_bag_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shopping_bag_alt />
  <Boxicons.shopping_bag_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def shopping_bag_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 4H3a1 1 0 0 0-1 1v14a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V5a1 1 0 0 0-1-1zm-9 9c-3.309 0-6-2.691-6-6h2c0 2.206 1.794 4 4 4s4-1.794 4-4h2c0 3.309-2.691 6-6 6z"/>|
    )
  end

  @doc """
  Renders the `discount` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.discount />
  <Boxicons.discount class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def discount(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 5H3a1 1 0 0 0-1 1v4h.893c.996 0 1.92.681 2.08 1.664A2.001 2.001 0 0 1 3 14H2v4a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1v-4h-1a2.001 2.001 0 0 1-1.973-2.336c.16-.983 1.084-1.664 2.08-1.664H22V6a1 1 0 0 0-1-1zM9 9a1 1 0 1 1 0 2 1 1 0 1 1 0-2zm-.8 6.4 6-8 1.6 1.2-6 8-1.6-1.2zM15 15a1 1 0 1 1 0-2 1 1 0 1 1 0 2z"/>|
    )
  end

  @doc """
  Renders the `check_double` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.check_double />
  <Boxicons.check_double class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def check_double(assigns) do
    svg(
      assigns,
      ~S|<path d="m2.394 13.742 4.743 3.62 7.616-8.704-1.506-1.316-6.384 7.296-3.257-2.486zm19.359-5.084-1.506-1.316-6.369 7.279-.753-.602-1.25 1.562 2.247 1.798z"/>|
    )
  end

  @doc """
  Renders the `loader` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.loader />
  <Boxicons.loader class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def loader(assigns) do
    svg(
      assigns,
      ~S|<path d="M2 11h5v2H2zm15 0h5v2h-5zm-6 6h2v5h-2zm0-15h2v5h-2zM4.222 5.636l1.414-1.414 3.536 3.536-1.414 1.414zm15.556 12.728-1.414 1.414-3.536-3.536 1.414-1.414zm-12.02-3.536 1.414 1.414-3.536 3.536-1.414-1.414zm7.07-7.071 3.536-3.535 1.414 1.415-3.536 3.535z"/>|
    )
  end

  @doc """
  Renders the `file_plus` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_plus />
  <Boxicons.file_plus class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_plus(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 22h12a2 2 0 0 0 2-2V8l-6-6H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2zm7-18 5 5h-5V4zM8 14h3v-3h2v3h3v2h-3v3h-2v-3H8v-2z"/>|
    )
  end

  @doc """
  Renders the `x_square` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.x_square />
  <Boxicons.x_square class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def x_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V5zm-4.793 9.793-1.414 1.414L12 13.414l-2.793 2.793-1.414-1.414L10.586 12 7.793 9.207l1.414-1.414L12 10.586l2.793-2.793 1.414 1.414L13.414 12l2.793 2.793z"/>|
    )
  end

  @doc """
  Renders the `ship` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.ship />
  <Boxicons.ship class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def ship(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.997 20c-.899 0-1.288-.311-1.876-.781-.68-.543-1.525-1.219-3.127-1.219-1.601 0-2.446.676-3.125 1.22-.587.469-.975.78-1.874.78-.897 0-1.285-.311-1.872-.78C4.444 18.676 3.601 18 2 18v2c.898 0 1.286.311 1.873.78.679.544 1.523 1.22 3.122 1.22 1.601 0 2.445-.676 3.124-1.219.588-.47.976-.781 1.875-.781.9 0 1.311.328 1.878.781.679.543 1.524 1.219 3.125 1.219s2.446-.676 3.125-1.219C20.689 20.328 21.1 20 22 20v-2c-1.602 0-2.447.676-3.127 1.219-.588.47-.977.781-1.876.781zM6 8.5 4 9l2 8h.995c1.601 0 2.445-.676 3.124-1.219.588-.47.976-.781 1.875-.781.9 0 1.311.328 1.878.781.679.543 1.524 1.219 3.125 1.219H18l.027-.107.313-1.252L20 9l-2-.5V5.001a1 1 0 0 0-.804-.981L13 3.181V2h-2v1.181l-4.196.839A1 1 0 0 0 6 5.001V8.5zm2-2.681 4-.8 4 .8V8l-4-1-4 1V5.819z"/>|
    )
  end

  @doc """
  Renders the `infinite` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.infinite />
  <Boxicons.infinite class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def infinite(assigns) do
    svg(
      assigns,
      ~S|<path d="M17 7c-2.094 0-3.611 1.567-5.001 3.346C10.609 8.567 9.093 7 7 7c-2.757 0-5 2.243-5 5a4.98 4.98 0 0 0 1.459 3.534A4.956 4.956 0 0 0 6.99 17h.012c2.089-.005 3.605-1.572 4.996-3.351C13.389 15.431 14.906 17 17 17c2.757 0 5-2.243 5-5s-2.243-5-5-5zM6.998 15l-.008 1v-1c-.799 0-1.55-.312-2.114-.878A3.004 3.004 0 0 1 7 9c1.33 0 2.56 1.438 3.746 2.998C9.558 13.557 8.328 14.997 6.998 15zM17 15c-1.33 0-2.561-1.44-3.749-3.002C14.438 10.438 15.668 9 17 9c1.654 0 3 1.346 3 3s-1.346 3-3 3z"/>|
    )
  end

  @doc """
  Renders the `git_commit` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.git_commit />
  <Boxicons.git_commit class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def git_commit(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 6c-2.967 0-5.431 2.167-5.909 5H2v2h4.092c.479 2.832 2.942 4.998 5.909 4.998s5.43-2.166 5.909-4.998H22v-2h-4.09c-.478-2.833-2.942-5-5.91-5zm0 9.998c-2.205 0-3.999-1.794-3.999-3.999S9.795 8 12 8c2.206 0 4 1.794 4 3.999s-1.794 3.999-4 3.999z"/>|
    )
  end

  @doc """
  Renders the `images` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.images />
  <Boxicons.images class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def images(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 2H8c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM8 16V4h12l.002 12H8z"/><path d="M4 8H2v12c0 1.103.897 2 2 2h12v-2H4V8z"/><path d="m12 12-1-1-2 3h10l-4-6z"/>|
    )
  end

  @doc """
  Renders the `graduation` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.graduation />
  <Boxicons.graduation class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def graduation(assigns) do
    svg(
      assigns,
      ~S|<path d="M2 7v1l11 4 9-4V7L11 4z"/><path d="M4 11v4.267c0 1.621 4.001 3.893 9 3.734 4-.126 6.586-1.972 7-3.467.024-.089.037-.178.037-.268V11L13 14l-5-1.667v3.213l-1-.364V12l-3-1z"/>|
    )
  end

  @doc """
  Renders the `flask` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.flask />
  <Boxicons.flask class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def flask(assigns) do
    svg(
      assigns,
      ~S|<path d="M15 9.783V4h1V2H8v2h1v5.783l-4.268 9.389a1.992 1.992 0 0 0 .14 1.911A1.99 1.99 0 0 0 6.553 22h10.895a1.99 1.99 0 0 0 1.681-.917c.37-.574.423-1.289.14-1.911L15 9.783zm-4.09.631c.06-.13.09-.271.09-.414V4h2v6c0 .143.03.284.09.414L15.177 15H8.825l2.085-4.586z"/>|
    )
  end

  @doc """
  Renders the `signal_1` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.signal_1 />
  <Boxicons.signal_1 class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def signal_1(assigns) do
    svg(assigns, ~S|<path d="M3 16h2v5H3z"/>|)
  end

  @doc """
  Renders the `direction_left` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.direction_left />
  <Boxicons.direction_left class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def direction_left(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.707 11.294-8.978-9a1.001 1.001 0 0 0-1.415-.002l-9.021 9a1 1 0 0 0 0 1.416l9.021 9c.39.389 1.026.388 1.415-.002l8.978-9a.998.998 0 0 0 0-1.412zM15 16h-2v-4h-3v2l-3-3 3-3v2h5v6z"/>|
    )
  end

  @doc """
  Renders the `rewind` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.rewind />
  <Boxicons.rewind class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def rewind(assigns) do
    svg(assigns, ~S|<path d="M12 12V7l-7 5 7 5zm7-5-7 5 7 5z"/>|)
  end

  @doc """
  Renders the `keyboard` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.keyboard />
  <Boxicons.keyboard class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def keyboard(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 5H3a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h18a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2zm-8 2h2v2h-2V7zm0 4h2v2h-2v-2zM9 7h2v2H9V7zm0 4h2v2H9v-2zM5 7h2v2H5V7zm0 4h2v2H5v-2zm12 6H7v-2h10v2zm2-4h-2v-2h2v2zm0-4h-2V7h2v2z"/>|
    )
  end

  @doc """
  Renders the `sort_a_z` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sort_a_z />
  <Boxicons.sort_a_z class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def sort_a_z(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.707 14.707A1 1 0 0 0 19 13h-7v2h4.586l-4.293 4.293A1 1 0 0 0 13 21h7v-2h-4.586l4.293-4.293zM7 3.99H5v12H2l4 4 4-4H7zM17 3h-2c-.417 0-.79.259-.937.649l-2.75 7.333h2.137L14.193 9h3.613l.743 1.981h2.137l-2.75-7.333A1 1 0 0 0 17 3zm-2.057 4 .75-2h.613l.75 2h-2.113z"/>|
    )
  end

  @doc """
  Renders the `support` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.support />
  <Boxicons.support class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def support(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12v4.143C2 17.167 2.897 18 4 18h1a1 1 0 0 0 1-1v-5.143a1 1 0 0 0-1-1h-.908C4.648 6.987 7.978 4 12 4s7.352 2.987 7.908 6.857H19a1 1 0 0 0-1 1V18c0 1.103-.897 2-2 2h-2v-1h-4v3h6c2.206 0 4-1.794 4-4 1.103 0 2-.833 2-1.857V12c0-5.514-4.486-10-10-10z"/>|
    )
  end

  @doc """
  Renders the `file_css` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_css />
  <Boxicons.file_css class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_css(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zM9.446 17.412c.275 0 .581-.061.762-.132l.138.713c-.168.084-.546.174-1.037.174-1.397 0-2.117-.869-2.117-2.021C7.191 14.768 8.175 14 9.398 14c.474 0 .833.096.995.18l-.186.726a1.98 1.98 0 0 0-.768-.149c-.726 0-1.29.438-1.29 1.337.001.808.482 1.318 1.297 1.318zm2.491.755c-.461 0-.917-.119-1.145-.245l.186-.756c.246.126.624.252 1.014.252.42 0 .642-.174.642-.438 0-.252-.192-.396-.678-.57-.672-.234-1.109-.605-1.109-1.193 0-.689.575-1.217 1.529-1.217.455 0 .791.096 1.031.203l-.204.738a1.919 1.919 0 0 0-.846-.192c-.396 0-.587.181-.587.39 0 .258.228.372.749.57.714.264 1.05.636 1.05 1.205-.001.678-.523 1.253-1.632 1.253zm3.24 0c-.461 0-.917-.119-1.145-.245l.186-.756c.246.126.624.252 1.014.252.42 0 .642-.174.642-.438 0-.252-.192-.396-.678-.57-.672-.234-1.109-.605-1.109-1.193 0-.689.575-1.217 1.529-1.217.455 0 .791.096 1.031.203l-.204.738a1.919 1.919 0 0 0-.846-.192c-.396 0-.587.181-.587.39 0 .258.228.372.749.57.714.264 1.05.636 1.05 1.205 0 .678-.523 1.253-1.632 1.253zM14 9h-1V4l5 5h-4z"/>|
    )
  end

  @doc """
  Renders the `line_chart` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.line_chart />
  <Boxicons.line_chart class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def line_chart(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 3v17a1 1 0 0 0 1 1h17v-2H5V3H3z"/><path d="M15.293 14.707a.999.999 0 0 0 1.414 0l5-5-1.414-1.414L16 12.586l-2.293-2.293a.999.999 0 0 0-1.414 0l-5 5 1.414 1.414L13 12.414l2.293 2.293z"/>|
    )
  end

  @doc """
  Renders the `pause_circle` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pause_circle />
  <Boxicons.pause_circle class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def pause_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M13 9h2v6h-2zM9 9h2v6H9z"/>|
    )
  end

  @doc """
  Renders the `rotate_left` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.rotate_left />
  <Boxicons.rotate_left class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def rotate_left(assigns) do
    svg(
      assigns,
      ~S|<path d="M6.758 8.758 5.344 7.344a8.048 8.048 0 0 0-1.841 2.859l1.873.701a6.048 6.048 0 0 1 1.382-2.146zM19 12.999a7.935 7.935 0 0 0-2.344-5.655A7.917 7.917 0 0 0 12 5.069V2L7 6l5 4V7.089a5.944 5.944 0 0 1 3.242 1.669A5.956 5.956 0 0 1 17 13v.002c0 .33-.033.655-.086.977-.007.043-.011.088-.019.131a6.053 6.053 0 0 1-1.138 2.536c-.16.209-.331.412-.516.597a5.954 5.954 0 0 1-.728.613 5.906 5.906 0 0 1-2.277 1.015c-.142.03-.285.05-.43.069-.062.009-.122.021-.184.027a6.104 6.104 0 0 1-1.898-.103L9.3 20.819a8.087 8.087 0 0 0 2.534.136c.069-.007.138-.021.207-.03.205-.026.409-.056.61-.098l.053-.009-.001-.005a7.877 7.877 0 0 0 2.136-.795l.001.001.028-.019a7.906 7.906 0 0 0 1.01-.67c.27-.209.532-.43.777-.675.248-.247.47-.513.681-.785.021-.028.049-.053.07-.081l-.006-.004a7.899 7.899 0 0 0 1.093-1.997l.008.003c.029-.078.05-.158.076-.237.037-.11.075-.221.107-.333.04-.14.073-.281.105-.423.022-.099.048-.195.066-.295.032-.171.056-.344.076-.516.01-.076.023-.15.03-.227.023-.249.037-.5.037-.753.002-.002.002-.004.002-.008zM6.197 16.597l-1.6 1.201a8.045 8.045 0 0 0 2.569 2.225l.961-1.754a6.018 6.018 0 0 1-1.93-1.672zM5 13c0-.145.005-.287.015-.429l-1.994-.143a7.977 7.977 0 0 0 .483 3.372l1.873-.701A5.975 5.975 0 0 1 5 13z"/>|
    )
  end

  @doc """
  Renders the `fast_forward` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.fast_forward />
  <Boxicons.fast_forward class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def fast_forward(assigns) do
    svg(assigns, ~S|<path d="m19 12-7-5v10zM5 7v10l7-5z"/>|)
  end

  @doc """
  Renders the `female_sign` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.female_sign />
  <Boxicons.female_sign class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def female_sign(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C8.691 2 6 4.691 6 8c0 2.967 2.167 5.432 5 5.91V17H8v2h3v2.988h2V19h3v-2h-3v-3.09c2.833-.479 5-2.943 5-5.91 0-3.309-2.691-6-6-6zm0 10c-2.206 0-4-1.794-4-4s1.794-4 4-4 4 1.794 4 4-1.794 4-4 4z"/>|
    )
  end

  @doc """
  Renders the `show_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.show_alt />
  <Boxicons.show_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def show_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 12c-1.095 0-2-.905-2-2 0-.354.103-.683.268-.973C12.178 9.02 12.092 9 12 9a3.02 3.02 0 0 0-3 3c0 1.642 1.358 3 3 3 1.641 0 3-1.358 3-3 0-.092-.02-.178-.027-.268-.29.165-.619.268-.973.268z"/><path d="M12 5c-7.633 0-9.927 6.617-9.948 6.684L1.946 12l.105.316C2.073 12.383 4.367 19 12 19s9.927-6.617 9.948-6.684l.106-.316-.105-.316C21.927 11.617 19.633 5 12 5zm0 12c-5.351 0-7.424-3.846-7.926-5C4.578 10.842 6.652 7 12 7c5.351 0 7.424 3.846 7.926 5-.504 1.158-2.578 5-7.926 5z"/>|
    )
  end

  @doc """
  Renders the `subdirectory_right` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.subdirectory_right />
  <Boxicons.subdirectory_right class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def subdirectory_right(assigns) do
    svg(assigns, ~S|<path d="M14 13H8V5H6v9a1 1 0 0 0 1 1h7v3l5-4-5-4v3z"/>|)
  end

  @doc """
  Renders the `subdirectory_left` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.subdirectory_left />
  <Boxicons.subdirectory_left class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def subdirectory_left(assigns) do
    svg(assigns, ~S|<path d="M16 13h-6v-3l-5 4 5 4v-3h7a1 1 0 0 0 1-1V5h-2v8z"/>|)
  end

  @doc """
  Renders the `broadcast` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.broadcast />
  <Boxicons.broadcast class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def broadcast(assigns) do
    svg(
      assigns,
      ~S|<path d="m19.707 4.293-1.414 1.414c2.733 2.733 2.733 7.353 0 10.086l1.414 1.414c3.5-3.5 3.5-9.414 0-12.914zm-4.414 4.414c.566.566.879 1.292.879 2.043s-.313 1.477-.879 2.043l1.414 1.414c.944-.943 1.465-2.172 1.465-3.457s-.521-2.514-1.465-3.457l-1.414 1.414zm-9.086-3L4.793 4.293c-3.5 3.5-3.5 9.414 0 12.914l1.414-1.414c-2.733-2.733-2.733-7.353 0-10.086z"/><path d="M7.293 7.293c-.944.943-1.465 2.172-1.465 3.457s.521 2.514 1.465 3.457l1.414-1.414c-.566-.566-.879-1.292-.879-2.043s.313-1.477.879-2.043L7.293 7.293zM14 10.5a2 2 0 0 0-4 0 1.993 1.993 0 0 0 .895 1.666L10.002 22h3.996l-.893-9.835c.54-.358.895-.97.895-1.665z"/>|
    )
  end

  @doc """
  Renders the `chess` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chess />
  <Boxicons.chess class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def chess(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 2H3a1 1 0 0 0-1 1v18a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1zm-1 6h-4v4h4v4h-4v4h-4v-4H8v4H4v-4h4v-4H4V8h4V4h4v4h4V4h4v4z"/><path d="M8 8h4v4H8zm4 4h4v4h-4z"/>|
    )
  end

  @doc """
  Renders the `cast` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cast />
  <Boxicons.cast class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def cast(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 21.001h2C13 14.935 8.065 10 2 10v2c4.962 0 9 4.038 9 9.001z"/><path d="M7 21.001h2C9 17.141 5.86 14 2 14v2c2.757 0 5 2.243 5 5.001z"/><path d="M20 4H4c-1.103 0-2 .897-2 2v2.052c.68.025 1.349.094 2 .217V6h16v13h-5.269c.123.651.191 1.32.217 2H20c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `font_color` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.font_color />
  <Boxicons.font_color class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def font_color(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 18h14v3H5zm7.5-14h-1c-.401 0-.764.24-.921.609L5.745 16h2.173l1.273-3h5.604l1.268 3h2.171L13.421 4.61A1 1 0 0 0 12.5 4zm-2.46 7 1.959-4.616L13.95 11h-3.91z"/>|
    )
  end

  @doc """
  Renders the `minus` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.minus />
  <Boxicons.minus class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def minus(assigns) do
    svg(assigns, ~S|<path d="M5 11h14v2H5z"/>|)
  end

  @doc """
  Renders the `dna` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dna />
  <Boxicons.dna class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def dna(assigns) do
    svg(
      assigns,
      ~S|<path d="M15.794 11.09c.332-.263.648-.542.947-.84l.136-.142c.283-.293.552-.598.801-.919l.062-.075c.255-.335.486-.688.702-1.049l.128-.22c.205-.364.395-.737.559-1.123.02-.047.035-.095.055-.142.147-.361.274-.731.383-1.109.021-.07.044-.14.063-.211.107-.402.189-.813.251-1.229.013-.087.021-.175.032-.263.051-.432.087-.869.087-1.311V2h-2v.457c0 .184-.031.361-.042.543H6.022C6.012 2.819 6 2.64 6 2.457V2H4v.457c0 4.876 3.269 9.218 7.952 10.569l.028.009c2.881.823 5.056 3.146 5.769 5.965H6.251l.799-2h7.607a7.416 7.416 0 0 0-2.063-2h-4c.445-.424.956-.774 1.491-1.09a9.922 9.922 0 0 1-2.08-1.014C5.55 14.812 4 17.779 4 21.015V23h2v-1.985L6.001 21h11.998l.001.015V23h2v-1.985c0-3.83-2.159-7.303-5.443-9.07a11.1 11.1 0 0 0 1.072-.729c.055-.042.11-.082.165-.126zm-1.19-1.604a8.945 8.945 0 0 1-2.325 1.348c-.092.036-.185.068-.278.102A8.95 8.95 0 0 1 8.836 9h6.292c-.171.161-.332.333-.517.48l-.007.006zM17.619 5c-.005.016-.007.033-.012.049l-.044.151a9.089 9.089 0 0 1-.513 1.252c-.096.19-.213.365-.321.548h-9.48a9.066 9.066 0 0 1-.871-2h11.241z"/>|
    )
  end

  @doc """
  Renders the `edit_location` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.edit_location />
  <Boxicons.edit_location class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def edit_location(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zM9.799 14.987H8v-1.799l4.977-4.97 1.799 1.799-4.977 4.97zm5.824-5.817-1.799-1.799L15.196 6l1.799 1.799-1.372 1.371z"/>|
    )
  end

  @doc """
  Renders the `exclude` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.exclude />
  <Boxicons.exclude class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def exclude(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 8h-3V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2h3v3c0 1.103.897 2 2 2h9c1.103 0 2-.897 2-2v-9c0-1.103-.897-2-2-2zm-4 7H9V9h6v6z"/>|
    )
  end

  @doc """
  Renders the `dumbbell` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dumbbell />
  <Boxicons.dumbbell class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def dumbbell(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 5v14h3v-6h6v6h3V5h-3v6H9V5zM3 15a1 1 0 0 0 1 1h1V8H4a1 1 0 0 0-1 1v2H2v2h1v2zm18-6a1 1 0 0 0-1-1h-1v8h1a1 1 0 0 0 1-1v-2h1v-2h-1V9z"/>|
    )
  end

  @doc """
  Renders the `dialpad_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dialpad_alt />
  <Boxicons.dialpad_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def dialpad_alt(assigns) do
    svg(assigns, ~S||)
  end

  @doc """
  Renders the `list_ol` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.list_ol />
  <Boxicons.list_ol class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def list_ol(assigns) do
    svg(
      assigns,
      ~S|<path d="M5.282 12.064c-.428.328-.72.609-.875.851-.155.24-.249.498-.279.768h2.679v-.748H5.413c.081-.081.152-.151.212-.201.062-.05.182-.142.361-.27.303-.218.511-.42.626-.604.116-.186.173-.375.173-.578a.898.898 0 0 0-.151-.512.892.892 0 0 0-.412-.341c-.174-.076-.419-.111-.733-.111-.3 0-.537.038-.706.114a.889.889 0 0 0-.396.338c-.094.143-.159.346-.194.604l.894.076c.025-.188.074-.317.147-.394a.375.375 0 0 1 .279-.108c.11 0 .2.035.272.108a.344.344 0 0 1 .108.258.55.55 0 0 1-.108.297c-.074.102-.241.254-.503.453zm.055 6.386a.398.398 0 0 1-.282-.105c-.074-.07-.128-.195-.162-.378L4 18.085c.059.204.142.372.251.506.109.133.248.235.417.306.168.069.399.103.692.103.3 0 .541-.047.725-.14a1 1 0 0 0 .424-.403c.098-.175.146-.354.146-.544a.823.823 0 0 0-.088-.393.708.708 0 0 0-.249-.261 1.015 1.015 0 0 0-.286-.11.943.943 0 0 0 .345-.299.673.673 0 0 0 .113-.383.747.747 0 0 0-.281-.596c-.187-.159-.49-.238-.909-.238-.365 0-.648.072-.847.219-.2.143-.334.353-.404.626l.844.151c.023-.162.067-.274.133-.338s.151-.098.257-.098a.33.33 0 0 1 .241.089c.059.06.087.139.087.238 0 .104-.038.193-.117.27s-.177.112-.293.112a.907.907 0 0 1-.116-.011l-.045.649a1.13 1.13 0 0 1 .289-.056c.132 0 .237.041.313.126.077.082.115.199.115.352 0 .146-.04.266-.119.354a.394.394 0 0 1-.301.134zm.948-10.083V5h-.739a1.47 1.47 0 0 1-.394.523c-.168.142-.404.262-.708.365v.754a2.595 2.595 0 0 0 .937-.48v2.206h.904zM9 6h11v2H9zm0 5h11v2H9zm0 5h11v2H9z"/>|
    )
  end

  @doc """
  Renders the `code_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.code_alt />
  <Boxicons.code_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def code_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="m7.375 16.781 1.25-1.562L4.601 12l4.024-3.219-1.25-1.562-5 4a1 1 0 0 0 0 1.562l5 4zm9.25-9.562-1.25 1.562L19.399 12l-4.024 3.219 1.25 1.562 5-4a1 1 0 0 0 0-1.562l-5-4zm-1.649-4.003-4 18-1.953-.434 4-18z"/>|
    )
  end

  @doc """
  Renders the `equalizer` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.equalizer />
  <Boxicons.equalizer class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def equalizer(assigns) do
    svg(assigns, ~S|<path d="M11 9h2v6h-2zm4-3h2v12h-2zM7 4h2v16H7zm12 7h2v2h-2zM3 10h2v4H3z"/>|)
  end

  @doc """
  Renders the `list_minus` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.list_minus />
  <Boxicons.list_minus class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def list_minus(assigns) do
    svg(assigns, ~S|<path d="M21.063 15H13v2h9v-2zM4 7h11v2H4zm0 4h11v2H4zm0 4h7v2H4z"/>|)
  end

  @doc """
  Renders the `truck` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.truck />
  <Boxicons.truck class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def truck(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.15 8a2 2 0 0 0-1.72-1H15V5a1 1 0 0 0-1-1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 1 1.73 3.49 3.49 0 0 0 7 .27h3.1a3.48 3.48 0 0 0 6.9 0 2 2 0 0 0 2-2v-3a1.07 1.07 0 0 0-.14-.52zM15 9h2.43l1.8 3H15zM6.5 19A1.5 1.5 0 1 1 8 17.5 1.5 1.5 0 0 1 6.5 19zm10 0a1.5 1.5 0 1 1 1.5-1.5 1.5 1.5 0 0 1-1.5 1.5z"/>|
    )
  end

  @doc """
  Renders the `file_doc` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_doc />
  <Boxicons.file_doc class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_doc(assigns) do
    svg(
      assigns,
      ~S|<path d="M12.186 14.552c-.617 0-.977.587-.977 1.373 0 .791.371 1.35.983 1.35.617 0 .971-.588.971-1.374 0-.726-.348-1.349-.977-1.349z"/><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zM9.155 17.454c-.426.354-1.073.521-1.864.521-.475 0-.81-.03-1.038-.06v-3.971a8.16 8.16 0 0 1 1.235-.083c.768 0 1.266.138 1.655.432.42.312.684.81.684 1.522 0 .775-.282 1.309-.672 1.639zm2.99.546c-1.2 0-1.901-.906-1.901-2.058 0-1.211.773-2.116 1.967-2.116 1.241 0 1.919.929 1.919 2.045-.001 1.325-.805 2.129-1.985 2.129zm4.655-.762c.275 0 .581-.061.762-.132l.138.713c-.168.084-.546.174-1.037.174-1.397 0-2.117-.869-2.117-2.021 0-1.379.983-2.146 2.207-2.146.474 0 .833.096.995.18l-.186.726a1.979 1.979 0 0 0-.768-.15c-.726 0-1.29.438-1.29 1.338 0 .809.48 1.318 1.296 1.318zM14 9h-1V4l5 5h-4z"/><path d="M7.584 14.563c-.203 0-.335.018-.413.036v2.645c.078.018.204.018.317.018.828.006 1.367-.449 1.367-1.415.006-.84-.485-1.284-1.271-1.284z"/>|
    )
  end

  @doc """
  Renders the `landmark` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.landmark />
  <Boxicons.landmark class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def landmark(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 17h-2V9h2V7a.998.998 0 0 0-.594-.914l-9.432-4.191-8.421 4.21A1 1 0 0 0 2 7v2h2v8H2v4h19v-4zm-5-8v8h-3V9h3zM7 9h3v8H7V9z"/>|
    )
  end

  @doc """
  Renders the `file_archive` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_archive />
  <Boxicons.file_archive class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_archive(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 2a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6h-3v2H9v2h2v2H9v2h2v8H7v-6h2v-2H7V8h2V6H7V4h2V2H6zm7 2 5 5h-5V4z"/><path d="M8 15h2v2H8z"/>|
    )
  end

  @doc """
  Renders the `braille` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.braille />
  <Boxicons.braille class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def braille(assigns) do
    svg(assigns, ~S||)
  end

  @doc """
  Renders the `water` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.water />
  <Boxicons.water class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def water(assigns) do
    svg(
      assigns,
      ~S|<path d="M5.996 9c1.413 0 2.16-.747 2.705-1.293.49-.49.731-.707 1.292-.707s.802.217 1.292.707C11.83 8.253 12.577 9 13.991 9c1.415 0 2.163-.747 2.71-1.293.491-.49.732-.707 1.295-.707s.804.217 1.295.707C19.837 8.253 20.585 9 22 9V7c-.563 0-.804-.217-1.295-.707C20.159 5.747 19.411 5 17.996 5s-2.162.747-2.709 1.292c-.491.491-.731.708-1.296.708-.562 0-.802-.217-1.292-.707C12.154 5.747 11.407 5 9.993 5s-2.161.747-2.706 1.293c-.49.49-.73.707-1.291.707s-.801-.217-1.291-.707C4.16 5.747 3.413 5 2 5v2c.561 0 .801.217 1.291.707C3.836 8.253 4.583 9 5.996 9zm0 5c1.413 0 2.16-.747 2.705-1.293.49-.49.731-.707 1.292-.707s.802.217 1.292.707c.545.546 1.292 1.293 2.706 1.293 1.415 0 2.163-.747 2.71-1.293.491-.49.732-.707 1.295-.707s.804.217 1.295.707C19.837 13.253 20.585 14 22 14v-2c-.563 0-.804-.217-1.295-.707-.546-.546-1.294-1.293-2.709-1.293s-2.162.747-2.709 1.292c-.491.491-.731.708-1.296.708-.562 0-.802-.217-1.292-.707C12.154 10.747 11.407 10 9.993 10s-2.161.747-2.706 1.293c-.49.49-.73.707-1.291.707s-.801-.217-1.291-.707C4.16 10.747 3.413 10 2 10v2c.561 0 .801.217 1.291.707C3.836 13.253 4.583 14 5.996 14zm0 5c1.413 0 2.16-.747 2.705-1.293.49-.49.731-.707 1.292-.707s.802.217 1.292.707c.545.546 1.292 1.293 2.706 1.293 1.415 0 2.163-.747 2.71-1.293.491-.49.732-.707 1.295-.707s.804.217 1.295.707C19.837 18.253 20.585 19 22 19v-2c-.563 0-.804-.217-1.295-.707-.546-.546-1.294-1.293-2.709-1.293s-2.162.747-2.709 1.292c-.491.491-.731.708-1.296.708-.562 0-.802-.217-1.292-.707C12.154 15.747 11.407 15 9.993 15s-2.161.747-2.706 1.293c-.49.49-.73.707-1.291.707s-.801-.217-1.291-.707C4.16 15.747 3.413 15 2 15v2c.561 0 .801.217 1.291.707C3.836 18.253 4.583 19 5.996 19z"/>|
    )
  end

  @doc """
  Renders the `mail_send` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.mail_send />
  <Boxicons.mail_send class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def mail_send(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 4H6c-1.103 0-2 .897-2 2v5h2V8l6.4 4.8a1.001 1.001 0 0 0 1.2 0L20 8v9h-8v2h8c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zm-7 6.75L6.666 6h12.668L13 10.75z"/><path d="M2 12h7v2H2zm2 3h6v2H4zm3 3h4v2H7z"/>|
    )
  end

  @doc """
  Renders the `repost` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.repost />
  <Boxicons.repost class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def repost(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 7a1 1 0 0 0-1-1h-8v2h7v5h-3l3.969 5L22 13h-3V7zM5 17a1 1 0 0 0 1 1h8v-2H7v-5h3L6 6l-4 5h3v6z"/>|
    )
  end

  @doc """
  Renders the `collapse_horizontal` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.collapse_horizontal />
  <Boxicons.collapse_horizontal class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def collapse_horizontal(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.95 5.64 13.59 12l6.36 6.36 1.41-1.41L16.41 12l4.95-4.95-1.41-1.41zM2.64 7.05 7.59 12l-4.95 4.95 1.41 1.41L10.41 12 4.05 5.64 2.64 7.05z"/>|
    )
  end

  @doc """
  Renders the `florist` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.florist />
  <Boxicons.florist class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def florist(assigns) do
    svg(
      assigns,
      ~S|<path d="M10.84 21.871 12 22a10.221 10.221 0 0 0-9.013-8.891L2 13l.021.173a10.001 10.001 0 0 0 8.819 8.698zm11.139-8.698L22 13l-.987.109c-4.7.523-8.427 4.2-9.013 8.891l1.16-.129a10.001 10.001 0 0 0 8.819-8.698zM18.063 5.5a2.5 2.5 0 0 0-3.415-.915c-.062.035-.111.081-.168.121.005-.069.02-.136.02-.206a2.5 2.5 0 1 0-5 0c0 .07.015.137.021.206-.057-.04-.107-.086-.168-.121a2.5 2.5 0 0 0-2.5 4.33c.061.035.126.056.188.085-.062.029-.127.05-.188.085a2.5 2.5 0 0 0 2.5 4.33c.062-.035.111-.081.168-.121-.006.069-.021.136-.021.206a2.5 2.5 0 1 0 5 0c0-.07-.015-.137-.021-.206.057.04.106.086.168.121a2.5 2.5 0 0 0 2.5-4.33c-.061-.035-.126-.056-.188-.085.063-.029.127-.05.188-.085a2.5 2.5 0 0 0 .916-3.415zM12 12a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>|
    )
  end

  @doc """
  Renders the `hourglass_top` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hourglass_top />
  <Boxicons.hourglass_top class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def hourglass_top(assigns) do
    svg(
      assigns,
      ~S|<path d="M15.566 11.021A7.016 7.016 0 0 0 19 5V4h1V2H4v2h1v1a7.016 7.016 0 0 0 3.434 6.021c.354.208.566.545.566.9v.158c0 .354-.212.69-.566.9A7.016 7.016 0 0 0 5 19v1H4v2h16v-2h-1v-1a7.014 7.014 0 0 0-3.433-6.02c-.355-.21-.567-.547-.567-.901v-.158c0-.355.212-.692.566-.9zM17 19v1H7v-1a5.01 5.01 0 0 1 2.45-4.299A3.111 3.111 0 0 0 10.834 13h2.332c.23.691.704 1.3 1.385 1.702A5.008 5.008 0 0 1 17 19z"/>|
    )
  end

  @doc """
  Renders the `border_right` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.border_right />
  <Boxicons.border_right class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def border_right(assigns) do
    svg(
      assigns,
      ~S|<path d="M15 19h2v2h-2zm-4 0h2v2h-2zm-4 0h2v2H7zm-4 0h2v2H3zM3 7h2v2H3zm0 8h2v2H3zm0-4h2v2H3zm0-8h2v2H3zm12 0h2v2h-2zm-4 0h2v2h-2zM7 3h2v2H7zm4 4h2v2h-2zm0 8h2v2h-2zm-4-4h2v2H7zm8 0h2v2h-2zm-4 0h2v2h-2zm8-6v16h2V3h-2z"/>|
    )
  end

  @doc """
  Renders the `border_left` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.border_left />
  <Boxicons.border_left class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def border_left(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 3h2v2h-2zm4 0h2v2h-2zM7 3h2v2H7zm12 0h2v2h-2zm0 8h2v2h-2zm0 4h2v2h-2zm0-8h2v2h-2zm0 12h2v2h-2zm-4 0h2v2h-2zm-8 0h2v2H7zm4 0h2v2h-2zm0-4h2v2h-2zm0-8h2v2h-2zm4 4h2v2h-2zm-8 0h2v2H7zm4 0h2v2h-2zM3 5v16h2V3H3z"/>|
    )
  end

  @doc """
  Renders the `paperclip` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.paperclip />
  <Boxicons.paperclip class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def paperclip(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.004 5H9c-1.838 0-3.586.737-4.924 2.076C2.737 8.415 2 10.163 2 12c0 1.838.737 3.586 2.076 4.924C5.414 18.263 7.162 19 9 19h8v-2H9c-1.303 0-2.55-.529-3.51-1.49C4.529 14.55 4 13.303 4 12c0-1.302.529-2.549 1.49-3.51C6.45 7.529 7.697 7 9 7h8V6l.001 1h.003c.79 0 1.539.314 2.109.886.571.571.886 1.322.887 2.116a2.966 2.966 0 0 1-.884 2.11A2.988 2.988 0 0 1 17 13H9a.99.99 0 0 1-.698-.3A.991.991 0 0 1 8 12c0-.252.11-.507.301-.698A.987.987 0 0 1 9 11h8V9H9c-.79 0-1.541.315-2.114.889C6.314 10.461 6 11.211 6 12s.314 1.54.888 2.114A2.974 2.974 0 0 0 9 15h8.001a4.97 4.97 0 0 0 3.528-1.473 4.967 4.967 0 0 0-.001-7.055A4.95 4.95 0 0 0 17.004 5z"/>|
    )
  end

  @doc """
  Renders the `sort_z_a` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sort_z_a />
  <Boxicons.sort_z_a class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def sort_z_a(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.707 14.707A1 1 0 0 0 19 13h-7v2h4.586l-4.293 4.293A1 1 0 0 0 13 21h7v-2h-4.586l4.293-4.293zM6 3.99l-4 4h3v12h2v-12h3zM17 3h-2c-.417 0-.79.259-.937.649l-2.75 7.333h2.137L14.193 9h3.613l.743 1.981h2.137l-2.75-7.333A1 1 0 0 0 17 3zm-2.057 4 .75-2h.613l.75 2h-2.113z"/>|
    )
  end

  @doc """
  Renders the `signal_2` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.signal_2 />
  <Boxicons.signal_2 class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def signal_2(assigns) do
    svg(assigns, ~S|<path d="M3 16h2v5H3zm4-3h2v8H7z"/>|)
  end

  @doc """
  Renders the `plus_square` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.plus_square />
  <Boxicons.plus_square class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def plus_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 21h14a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2zm2-10h4V7h2v4h4v2h-4v4h-2v-4H7v-2z"/>|
    )
  end

  @doc """
  Renders the `child` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.child />
  <Boxicons.child class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def child(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 9h-4a1 1 0 0 0-.8.4l-3 4 1.6 1.2L9 13v7h2v-4h2v4h2v-7l1.2 1.6 1.6-1.2-3-4A1 1 0 0 0 14 9z"/>|
    )
  end

  @doc """
  Renders the `trip` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.trip />
  <Boxicons.trip class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def trip(assigns) do
    svg(
      assigns,
      ~S|<path d="M14.844 20H6.5C5.121 20 4 18.879 4 17.5S5.121 15 6.5 15h7c1.93 0 3.5-1.57 3.5-3.5S15.43 8 13.5 8H8.639a9.812 9.812 0 0 1-1.354 2H13.5c.827 0 1.5.673 1.5 1.5s-.673 1.5-1.5 1.5h-7C4.019 13 2 15.019 2 17.5S4.019 22 6.5 22h9.593a10.415 10.415 0 0 1-1.249-2zM5 2C3.346 2 2 3.346 2 5c0 3.188 3 5 3 5s3-1.813 3-5c0-1.654-1.346-3-3-3zm0 4.5a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 5 6.5z"/><path d="M19 14c-1.654 0-3 1.346-3 3 0 3.188 3 5 3 5s3-1.813 3-5c0-1.654-1.346-3-3-3zm0 4.5a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 19 18.5z"/>|
    )
  end

  @doc """
  Renders the `cloud_snow` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cloud_snow />
  <Boxicons.cloud_snow class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def cloud_snow(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.944 10.112C18.507 6.67 15.56 4 12 4 9.244 4 6.85 5.611 5.757 8.15 3.609 8.792 2 10.819 2 13c0 2.757 2.243 5 5 5v-2c-1.654 0-3-1.346-3-3 0-1.403 1.199-2.756 2.673-3.015l.581-.103.192-.559C8.149 7.273 9.895 6 12 6c2.757 0 5 2.243 5 5v1h1c1.103 0 2 .897 2 2s-.897 2-2 2h-1v2h1c2.206 0 4-1.794 4-4a4.008 4.008 0 0 0-3.056-3.888z"/>|
    )
  end

  @doc """
  Renders the `right_arrow_square` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.right_arrow_square />
  <Boxicons.right_arrow_square class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def right_arrow_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 5v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2zm4 6h5V7l5 5-5 5v-4H7v-2z"/>|
    )
  end

  @doc """
  Renders the `grid_horizontal` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.grid_horizontal />
  <Boxicons.grid_horizontal class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def grid_horizontal(assigns) do
    svg(
      assigns,
      ~S|<path d="M10 7h4v4h-4zm6 0h4v4h-4zM4 7h4v4H4zm6 6h4v4h-4zm6 0h4v4h-4zM4 13h4v4H4z"/>|
    )
  end

  @doc """
  Renders the `dashboard` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dashboard />
  <Boxicons.dashboard class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def dashboard(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 13h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1zm-1 7a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v4zm10 0a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-7a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v7zm1-10h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1z"/>|
    )
  end

  @doc """
  Renders the `component` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.component />
  <Boxicons.component class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def component(assigns) do
    svg(
      assigns,
      ~S|<path d="m3.553 18.895 4 2a1.001 1.001 0 0 0 .894 0L12 19.118l3.553 1.776a.99.99 0 0 0 .894.001l4-2c.339-.17.553-.516.553-.895v-5c0-.379-.214-.725-.553-.895L17 10.382V6c0-.379-.214-.725-.553-.895l-4-2a1 1 0 0 0-.895 0l-4 2C7.214 5.275 7 5.621 7 6v4.382l-3.447 1.724A.998.998 0 0 0 3 13v5c0 .379.214.725.553.895zM8 12.118l2.264 1.132-2.913 1.457-2.264-1.132L8 12.118zm4-2.5 3-1.5v2.264l-3 1.5V9.618zm6.264 3.632-2.882 1.441-2.264-1.132L16 12.118l2.264 1.132zM8 18.882l-.062-.031V16.65L11 15.118v2.264l-3 1.5zm8 0v-2.264l3-1.5v2.264l-3 1.5zM12 5.118l2.264 1.132-2.882 1.441-2.264-1.132L12 5.118z"/>|
    )
  end

  @doc """
  Renders the `quote_alt_right` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.quote_alt_right />
  <Boxicons.quote_alt_right class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def quote_alt_right(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.95 8.721-.025-.168-.026.006A4.5 4.5 0 1 0 17.5 14c.223 0 .437-.034.65-.065-.069.232-.14.468-.254.68-.114.308-.292.575-.469.844-.148.291-.409.488-.601.737-.201.242-.475.403-.692.604-.213.21-.492.315-.714.463-.232.133-.434.28-.65.35l-.539.222-.474.197.484 1.939.597-.144c.191-.048.424-.104.689-.171.271-.05.56-.187.882-.312.317-.143.686-.238 1.028-.467.344-.218.741-.4 1.091-.692.339-.301.748-.562 1.05-.944.33-.358.656-.734.909-1.162.293-.408.492-.856.702-1.299.19-.443.343-.896.468-1.336.237-.882.343-1.72.384-2.437.034-.718.014-1.315-.028-1.747a7.028 7.028 0 0 0-.063-.539zm-11 0-.025-.168-.026.006A4.5 4.5 0 1 0 6.5 14c.223 0 .437-.034.65-.065-.069.232-.14.468-.254.68-.114.308-.292.575-.469.844-.148.291-.409.488-.601.737-.201.242-.475.403-.692.604-.213.21-.492.315-.714.463-.232.133-.434.28-.65.35l-.539.222c-.301.123-.473.195-.473.195l.484 1.939.597-.144c.191-.048.424-.104.689-.171.271-.05.56-.187.882-.312.317-.143.686-.238 1.028-.467.344-.218.741-.4 1.091-.692.339-.301.748-.562 1.05-.944.33-.358.656-.734.909-1.162.293-.408.492-.856.702-1.299.19-.443.343-.896.468-1.336.237-.882.343-1.72.384-2.437.034-.718.014-1.315-.028-1.747a7.571 7.571 0 0 0-.064-.537z"/>|
    )
  end

  @doc """
  Renders the `link_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.link_alt />
  <Boxicons.link_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def link_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M4.222 19.778a4.983 4.983 0 0 0 3.535 1.462 4.986 4.986 0 0 0 3.536-1.462l2.828-2.829-1.414-1.414-2.828 2.829a3.007 3.007 0 0 1-4.243 0 3.005 3.005 0 0 1 0-4.243l2.829-2.828-1.414-1.414-2.829 2.828a5.006 5.006 0 0 0 0 7.071zm15.556-8.485a5.008 5.008 0 0 0 0-7.071 5.006 5.006 0 0 0-7.071 0L9.879 7.051l1.414 1.414 2.828-2.829a3.007 3.007 0 0 1 4.243 0 3.005 3.005 0 0 1 0 4.243l-2.829 2.828 1.414 1.414 2.829-2.828z"/><path d="m8.464 16.95-1.415-1.414 8.487-8.486 1.414 1.415z"/>|
    )
  end

  @doc """
  Renders the `balloon` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.balloon />
  <Boxicons.balloon class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def balloon(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 19.91 10 22h4l-1-2.09c4-.65 7-5.28 7-9.91a8 8 0 0 0-16 0c0 4.63 3.08 9.26 7 9.91zm1-15.66v1.5A4.26 4.26 0 0 0 7.75 10h-1.5A5.76 5.76 0 0 1 12 4.25z"/>|
    )
  end

  @doc """
  Renders the `reply_all` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.reply_all />
  <Boxicons.reply_all class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def reply_all(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 18v-8a1 1 0 0 0-1-1h-6V6l-5 4 5 4v-3h5v7h2z"/><path d="M9 12.4 6 10l3-2.4V6l-5 4 5 4z"/>|
    )
  end

  @doc """
  Renders the `stats` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.stats />
  <Boxicons.stats class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def stats(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 12a2 2 0 0 0-.703.133l-2.398-1.963c.059-.214.101-.436.101-.67C17 8.114 15.886 7 14.5 7S12 8.114 12 9.5c0 .396.1.765.262 1.097l-2.909 3.438A2.06 2.06 0 0 0 9 14c-.179 0-.348.03-.512.074l-2.563-2.563C5.97 11.348 6 11.179 6 11c0-1.108-.892-2-2-2s-2 .892-2 2 .892 2 2 2c.179 0 .348-.03.512-.074l2.563 2.563A1.906 1.906 0 0 0 7 16c0 1.108.892 2 2 2s2-.892 2-2c0-.237-.048-.46-.123-.671l2.913-3.442c.227.066.462.113.71.113a2.48 2.48 0 0 0 1.133-.281l2.399 1.963A2.077 2.077 0 0 0 18 14c0 1.108.892 2 2 2s2-.892 2-2-.892-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `dryer` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dryer />
  <Boxicons.dryer class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def dryer(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 22h16a1 1 0 0 0 1-1V5c0-1.654-1.346-3-3-3H6C4.346 2 3 3.346 3 5v16a1 1 0 0 0 1 1zM18 3.924a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm-3 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm-3 3.117c3.309 0 6 2.691 6 6s-2.691 6-6 6-6-2.691-6-6 2.691-6 6-6z"/><path d="M9.32 12.265c-.415.384-1.041.964-1.041 2.067 0 1.104.626 1.684 1.041 2.068.352.325.4.398.4.6h2c0-1.104-.626-1.684-1.041-2.068-.352-.325-.4-.398-.4-.6s.048-.275.4-.6c.414-.384 1.041-.964 1.041-2.068 0-1.103-.626-1.683-1.041-2.066-.351-.325-.399-.397-.399-.598h-2c0 1.104.627 1.683 1.042 2.066.351.324.399.396.399.597-.001.203-.05.276-.401.602zm4 0c-.414.384-1.04.964-1.04 2.067s.626 1.684 1.04 2.067c.351.325.399.398.399.601h2c0-1.104-.626-1.684-1.04-2.067-.351-.325-.399-.398-.399-.601s.049-.275.399-.601c.414-.384 1.04-.964 1.04-2.068 0-1.103-.626-1.682-1.04-2.065-.35-.324-.399-.397-.399-.598h-2c0 1.103.626 1.683 1.041 2.066.35.324.398.397.398.598.001.202-.048.275-.399.601z"/>|
    )
  end

  @doc """
  Renders the `hash` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hash />
  <Boxicons.hash class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def hash(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.018 3.815 15.232 8h-4.966l.716-3.815-1.964-.37L8.232 8H4v2h3.857l-.751 4H3v2h3.731l-.714 3.805 1.965.369L8.766 16h4.966l-.714 3.805 1.965.369.783-4.174H20v-2h-3.859l.751-4H21V8h-3.733l.716-3.815-1.965-.37zM14.106 14H9.141l.751-4h4.966l-.752 4z"/>|
    )
  end

  @doc """
  Renders the `line_chart_down` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.line_chart_down />
  <Boxicons.line_chart_down class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def line_chart_down(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 3H3v18h18v-2H5z"/><path d="M13 12.586 8.707 8.293 7.293 9.707 13 15.414l3-3 4.293 4.293 1.414-1.414L16 9.586z"/>|
    )
  end

  @doc """
  Renders the `up_arrow_square` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.up_arrow_square />
  <Boxicons.up_arrow_square class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def up_arrow_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 21h14a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2zm7-14 5 5h-4v5h-2v-5H7l5-5z"/>|
    )
  end

  @doc """
  Renders the `cat` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cat />
  <Boxicons.cat class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def cat(assigns) do
    svg(
      assigns,
      ~S|<path d="M17 14a5 5 0 0 0 2.71-.81L20 13a3.16 3.16 0 0 0 .45-.37l.21-.2a4.48 4.48 0 0 0 .48-.58l.06-.08a4.28 4.28 0 0 0 .41-.76 1.57 1.57 0 0 0 .09-.23 4.21 4.21 0 0 0 .2-.63l.06-.25A5.5 5.5 0 0 0 22 9V2l-3 3h-4l-3-3v7a5 5 0 0 0 5 5zm2-7a1 1 0 1 1-1 1 1 1 0 0 1 1-1zm-4 0a1 1 0 1 1-1 1 1 1 0 0 1 1-1z"/><path d="M11 22v-5H8v5H5V11.9a3.49 3.49 0 0 1-2.48-1.64A3.59 3.59 0 0 1 2 8.5 3.65 3.65 0 0 1 6 5a1.89 1.89 0 0 0 2-2 1 1 0 0 1 1-1 1 1 0 0 1 1 1 3.89 3.89 0 0 1-4 4C4.19 7 4 8.16 4 8.51S4.18 10 6 10h5.09A6 6 0 0 0 19 14.65V22h-3v-5h-2v5z"/>|
    )
  end

  @doc """
  Renders the `parking` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.parking />
  <Boxicons.parking class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def parking(assigns) do
    svg(
      assigns,
      ~S|<path d="M13.5 3H5v18h4v-5h4.5c3.584 0 6.5-2.916 6.5-6.5S17.084 3 13.5 3zm0 9H9V7h4.5C14.879 7 16 8.121 16 9.5S14.879 12 13.5 12z"/>|
    )
  end

  @doc """
  Renders the `screenshot` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.screenshot />
  <Boxicons.screenshot class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def screenshot(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 14h-2v3h-3v2h3v3h2v-3h3v-2h-3zM4 19h3v-2H5v-2H3v3a1 1 0 0 0 1 1zM19 4a1 1 0 0 0-1-1h-3v2h2v2h2V4zM5 5h2V3H4a1 1 0 0 0-1 1v3h2V5zM3 9h2v4H3zm14 0h2v3h-2zM9 3h4v2H9zm0 14h3v2H9z"/>|
    )
  end

  @doc """
  Renders the `slider` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.slider />
  <Boxicons.slider class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def slider(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 5h9v2h-9zM2 7h7v2h2V3H9v2H2zm7 10h13v2H9zm10-6h3v2h-3zm-2 4V9.012h-2V11H2v2h13v2zM7 21v-6H5v2H2v2h3v2z"/>|
    )
  end

  @doc """
  Renders the `slider_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.slider_alt />
  <Boxicons.slider_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def slider_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M7.5 14.5c-1.58 0-2.903 1.06-3.337 2.5H2v2h2.163c.434 1.44 1.757 2.5 3.337 2.5s2.903-1.06 3.337-2.5H22v-2H10.837c-.434-1.44-1.757-2.5-3.337-2.5zm0 5c-.827 0-1.5-.673-1.5-1.5s.673-1.5 1.5-1.5S9 17.173 9 18s-.673 1.5-1.5 1.5zm9-11c-1.58 0-2.903 1.06-3.337 2.5H2v2h11.163c.434 1.44 1.757 2.5 3.337 2.5s2.903-1.06 3.337-2.5H22v-2h-2.163c-.434-1.44-1.757-2.5-3.337-2.5zm0 5c-.827 0-1.5-.673-1.5-1.5s.673-1.5 1.5-1.5 1.5.673 1.5 1.5-.673 1.5-1.5 1.5z"/><path d="M12.837 5C12.403 3.56 11.08 2.5 9.5 2.5S6.597 3.56 6.163 5H2v2h4.163C6.597 8.44 7.92 9.5 9.5 9.5s2.903-1.06 3.337-2.5h9.288V5h-9.288zM9.5 7.5C8.673 7.5 8 6.827 8 6s.673-1.5 1.5-1.5S11 5.173 11 6s-.673 1.5-1.5 1.5z"/>|
    )
  end

  @doc """
  Renders the `qr` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.qr />
  <Boxicons.qr class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def qr(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 11h8V3H3zm2-6h4v4H5zM3 21h8v-8H3zm2-6h4v4H5zm8-12v8h8V3zm6 6h-4V5h4zm-5.99 4h2v2h-2zm2 2h2v2h-2zm-2 2h2v2h-2zm4 0h2v2h-2zm2 2h2v2h-2zm-4 0h2v2h-2zm2-6h2v2h-2zm2 2h2v2h-2z"/>|
    )
  end

  @doc """
  Renders the `file_jpg` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_jpg />
  <Boxicons.file_jpg class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_jpg(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zM9.239 16.446c0 1.152-.551 1.554-1.438 1.554-.21 0-.486-.036-.665-.097l.101-.737c.127.042.289.072.469.072.384 0 .623-.174.623-.804v-2.543h.911v2.555zm3.294-.365c-.313.293-.773.426-1.313.426-.12 0-.228-.007-.312-.019v1.445h-.906v-3.988a7.528 7.528 0 0 1 1.236-.083c.563 0 .965.107 1.234.323.259.204.433.54.433.936s-.133.732-.372.96zm4.331 1.667c-.28.096-.815.228-1.349.228-.737 0-1.271-.186-1.643-.546-.371-.348-.575-.875-.57-1.469.007-1.344.983-2.111 2.309-2.111.521 0 .924.103 1.121.198l-.191.731c-.222-.096-.497-.174-.941-.174-.761 0-1.338.432-1.338 1.308 0 .833.523 1.325 1.271 1.325.211 0 .378-.024.451-.061v-.846h-.624v-.713h1.504v2.13zM14 9h-1V4l5 5h-4z"/><path d="M11.285 14.552c-.186 0-.312.018-.377.036v1.193c.077.018.174.023.307.023.484 0 .784-.246.784-.659 0-.372-.257-.593-.714-.593z"/>|
    )
  end

  @doc """
  Renders the `recycle` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.recycle />
  <Boxicons.recycle class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def recycle(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.224 15.543-.813-1.464-1.748.972.812 1.461c.048.085.082.173.104.264a1.024 1.024 0 0 1-.014.5.988.988 0 0 1-.104.235 1 1 0 0 1-.347.352.978.978 0 0 1-.513.137H14v-2l-4 3 4 3v-2h4.601c.278 0 .552-.037.811-.109a2.948 2.948 0 0 0 1.319-.776c.178-.179.332-.38.456-.593a2.992 2.992 0 0 0 .336-2.215 3.163 3.163 0 0 0-.299-.764zM5.862 11.039l-2.31 4.62a3.06 3.06 0 0 0-.261.755 2.997 2.997 0 0 0 .851 2.735c.178.174.376.326.595.453A3.022 3.022 0 0 0 6.236 20H8v-2H6.236a1.016 1.016 0 0 1-.5-.13.974.974 0 0 1-.353-.349 1 1 0 0 1-.149-.468.933.933 0 0 1 .018-.245c.018-.087.048-.173.089-.256l2.256-4.512 1.599.923L8.598 8 4 9.964l1.862 1.075zm12.736 1.925L19.196 8l-1.638.945-2.843-5.117a2.95 2.95 0 0 0-1.913-1.459 3.227 3.227 0 0 0-.772-.083 3.003 3.003 0 0 0-1.498.433A2.967 2.967 0 0 0 9.41 3.944l-.732 1.464 1.789.895.732-1.465c.045-.09.101-.171.166-.242a.933.933 0 0 1 .443-.27 1.053 1.053 0 0 1 .53-.011.963.963 0 0 1 .63.485l2.858 5.146L14 11l4.598 1.964z"/>|
    )
  end

  @doc """
  Renders the `traffic_barrier` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.traffic_barrier />
  <Boxicons.traffic_barrier class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def traffic_barrier(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 6h-2V3h-2v3H7V3H5v3H3a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1h2v6h2v-6h10v6h2v-6h2a1 1 0 0 0 1-1V7a1 1 0 0 0-1-1zM4.42 13l2.857-5H9.58l-2.857 5H4.42zm7.857-5h2.303l-2.857 5H9.42l2.857-5zm5 0h2.303l-2.857 5H14.42l2.857-5z"/>|
    )
  end

  @doc """
  Renders the `tag_x` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.tag_x />
  <Boxicons.tag_x class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def tag_x(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.842 6.218a1.977 1.977 0 0 0-.424-.628A1.99 1.99 0 0 0 20 5H8c-.297 0-.578.132-.769.359l-5 6c-.309.371-.309.91 0 1.281l5 6c.191.228.472.36.769.36h12a1.977 1.977 0 0 0 1.41-.582A1.99 1.99 0 0 0 22 17V7c0-.266-.052-.525-.158-.782zm-4.135 8.075-1.414 1.414L14 13.414l-2.293 2.293-1.414-1.414L12.586 12l-2.293-2.293 1.414-1.414L14 10.586l2.293-2.293 1.414 1.414L15.414 12l2.293 2.293z"/>|
    )
  end

  @doc """
  Renders the `transfer_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.transfer_alt />
  <Boxicons.transfer_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def transfer_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.924 10.383a1 1 0 0 0-.217-1.09l-5-5-1.414 1.414L16.586 9H4v2h15a1 1 0 0 0 .924-.617zM4.076 13.617a1 1 0 0 0 .217 1.09l5 5 1.414-1.414L7.414 15H20v-2H5a.999.999 0 0 0-.924.617z"/>|
    )
  end

  @doc """
  Renders the `female` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.female />
  <Boxicons.female class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def female(assigns) do
    svg(
      assigns,
      ~S|<path d="M14.948 7.684A.997.997 0 0 0 14 7h-4a.998.998 0 0 0-.948.684l-2 6 1.775.593L8 18h2v4h4v-4h2l-.827-3.724 1.775-.593-2-5.999z"/>|
    )
  end

  @doc """
  Renders the `wifi_off` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.wifi_off />
  <Boxicons.wifi_off class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def wifi_off(assigns) do
    svg(
      assigns,
      ~S|<path d="m1.293 8.395 1.414 1.414c.504-.504 1.052-.95 1.622-1.359L2.9 7.021c-.56.422-1.104.87-1.607 1.374zM6.474 5.06 3.707 2.293 2.293 3.707l18 18 1.414-1.414-5.012-5.012.976-.975a7.86 7.86 0 0 0-4.099-2.148L11.294 9.88c2.789-.191 5.649.748 7.729 2.827l1.414-1.414c-2.898-2.899-7.061-3.936-10.888-3.158L8.024 6.61A13.366 13.366 0 0 1 12 6c3.537 0 6.837 1.353 9.293 3.809l1.414-1.414C19.874 5.561 16.071 4 12 4a15.198 15.198 0 0 0-5.526 1.06zm-2.911 6.233 1.414 1.414a9.563 9.563 0 0 1 2.058-1.551L5.576 9.697c-.717.451-1.395.979-2.013 1.596zm2.766 3.014 1.414 1.414c.692-.692 1.535-1.151 2.429-1.428l-1.557-1.557a7.76 7.76 0 0 0-2.286 1.571zm7.66 3.803-2.1-2.1a1.996 1.996 0 1 0 2.1 2.1z"/>|
    )
  end

  @doc """
  Renders the `dots_vertical` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dots_vertical />
  <Boxicons.dots_vertical class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def dots_vertical(assigns) do
    svg(assigns, ~S|<path d="M10 10h4v4h-4zm0-6h4v4h-4zm0 12h4v4h-4z"/>|)
  end

  @doc """
  Renders the `signal_3` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.signal_3 />
  <Boxicons.signal_3 class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def signal_3(assigns) do
    svg(assigns, ~S|<path d="M3 16h2v5H3zm4-3h2v8H7zm4-3h2v11h-2z"/>|)
  end

  @doc """
  Renders the `git_repo_forked` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.git_repo_forked />
  <Boxicons.git_repo_forked class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def git_repo_forked(assigns) do
    svg(
      assigns,
      ~S|<path d="M5.559 8.855c.166 1.183.789 3.207 3.087 4.079C11 13.829 11 14.534 11 15v.163c-1.44.434-2.5 1.757-2.5 3.337 0 1.93 1.57 3.5 3.5 3.5s3.5-1.57 3.5-3.5c0-1.58-1.06-2.903-2.5-3.337V15c0-.466 0-1.171 2.354-2.065 2.298-.872 2.921-2.896 3.087-4.079C19.912 8.441 21 7.102 21 5.5 21 3.57 19.43 2 17.5 2S14 3.57 14 5.5c0 1.552 1.022 2.855 2.424 3.313-.146.735-.565 1.791-1.778 2.252-1.192.452-2.053.953-2.646 1.536-.593-.583-1.453-1.084-2.646-1.536-1.213-.461-1.633-1.517-1.778-2.252C8.978 8.355 10 7.052 10 5.5 10 3.57 8.43 2 6.5 2S3 3.57 3 5.5c0 1.602 1.088 2.941 2.559 3.355zM17.5 4c.827 0 1.5.673 1.5 1.5S18.327 7 17.5 7 16 6.327 16 5.5 16.673 4 17.5 4zm-4 14.5c0 .827-.673 1.5-1.5 1.5s-1.5-.673-1.5-1.5.673-1.5 1.5-1.5 1.5.673 1.5 1.5zM6.5 4C7.327 4 8 4.673 8 5.5S7.327 7 6.5 7 5 6.327 5 5.5 5.673 4 6.5 4z"/>|
    )
  end

  @doc """
  Renders the `bell_ring` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bell_ring />
  <Boxicons.bell_ring class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def bell_ring(assigns) do
    svg(
      assigns,
      ~S|<path d="m5.705 3.71-1.41-1.42C1 5.563 1 7.935 1 11h1l1-.063C3 8.009 3 6.396 5.705 3.71zm13.999-1.42-1.408 1.42C21 6.396 21 8.009 21 11l2-.063c0-3.002 0-5.374-3.296-8.647zM12 22a2.98 2.98 0 0 0 2.818-2H9.182A2.98 2.98 0 0 0 12 22zm7-7.414V10c0-3.217-2.185-5.927-5.145-6.742C13.562 2.52 12.846 2 12 2s-1.562.52-1.855 1.258C7.184 4.073 5 6.783 5 10v4.586l-1.707 1.707A.996.996 0 0 0 3 17v1a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1v-1a.996.996 0 0 0-.293-.707L19 14.586z"/>|
    )
  end

  @doc """
  Renders the `code_block` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.code_block />
  <Boxicons.code_block class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def code_block(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM4 19V7h16l.002 12H4z"/><path d="M9.293 9.293 5.586 13l3.707 3.707 1.414-1.414L8.414 13l2.293-2.293zm5.414 0-1.414 1.414L15.586 13l-2.293 2.293 1.414 1.414L18.414 13z"/>|
    )
  end

  @doc """
  Renders the `caret_left` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.caret_left />
  <Boxicons.caret_left class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def caret_left(assigns) do
    svg(assigns, ~S|<path d="M15 19V5l-8 7z"/>|)
  end

  @doc """
  Renders the `bitcoin` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bitcoin />
  <Boxicons.bitcoin class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def bitcoin(assigns) do
    svg(
      assigns,
      ~S|<path d="M8 13v4H6v2h3v2h2v-2h2v2h2v-2.051c1.968-.249 3.5-1.915 3.5-3.949 0-1.32-.65-2.484-1.64-3.213A3.982 3.982 0 0 0 18 9c0-1.858-1.279-3.411-3-3.858V3h-2v2h-2V3H9v2H6v2h2v6zm6.5 4H10v-4h4.5c1.103 0 2 .897 2 2s-.897 2-2 2zM10 7h4c1.103 0 2 .897 2 2s-.897 2-2 2h-4V7z"/>|
    )
  end

  @doc """
  Renders the `menu` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.menu />
  <Boxicons.menu class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def menu(assigns) do
    svg(assigns, ~S|<path d="M4 6h16v2H4zm0 5h16v2H4zm0 5h16v2H4z"/>|)
  end

  @doc """
  Renders the `food_tag` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.food_tag />
  <Boxicons.food_tag class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def food_tag(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 3H4a1 1 0 0 0-1 1v16a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zm-1 16H5V5h14v14z"/>|
    )
  end

  @doc """
  Renders the `restaurant` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.restaurant />
  <Boxicons.restaurant class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def restaurant(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 10h-2V3H8v7H6V3H4v8c0 1.654 1.346 3 3 3h1v7h2v-7h1c1.654 0 3-1.346 3-3V3h-2v7zm7-7h-1c-1.159 0-2 1.262-2 3v8h2v7h2V4a1 1 0 0 0-1-1z"/>|
    )
  end

  @doc """
  Renders the `eject` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.eject />
  <Boxicons.eject class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def eject(assigns) do
    svg(assigns, ~S|<path d="m12 6-6 8h12zM6 16h12v2H6z"/>|)
  end

  @doc """
  Renders the `play_circle` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.play_circle />
  <Boxicons.play_circle class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def play_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="m9 17 8-5-8-5z"/>|
    )
  end

  @doc """
  Renders the `coffee_bean` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.coffee_bean />
  <Boxicons.coffee_bean class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def coffee_bean(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 18a6.06 6.06 0 0 0 5.17-6 7.62 7.62 0 0 1 6.52-7.51l2.59-.37c-.07-.08-.13-.16-.21-.24-3.26-3.26-9.52-2.28-14 2.18C2.28 9.9 1 15 2.76 18.46z"/><path d="M12.73 12a7.63 7.63 0 0 1-6.51 7.52l-2.46.35.15.17c3.26 3.26 9.52 2.29 14-2.17C21.68 14.11 23 9 21.25 5.59l-3.34.48A6.05 6.05 0 0 0 12.73 12z"/>|
    )
  end

  @doc """
  Renders the `fullscreen` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.fullscreen />
  <Boxicons.fullscreen class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def fullscreen(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 5h5V3H3v7h2zm5 14H5v-5H3v7h7zm11-5h-2v5h-5v2h7zm-2-4h2V3h-7v2h5z"/>|
    )
  end

  @doc """
  Renders the `dollar` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dollar />
  <Boxicons.dollar class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def dollar(assigns) do
    svg(
      assigns,
      ~S|<path d="M15.999 8.5h2c0-2.837-2.755-4.131-5-4.429V2h-2v2.071c-2.245.298-5 1.592-5 4.429 0 2.706 2.666 4.113 5 4.43v4.97c-1.448-.251-3-1.024-3-2.4h-2c0 2.589 2.425 4.119 5 4.436V22h2v-2.07c2.245-.298 5-1.593 5-4.43s-2.755-4.131-5-4.429V6.1c1.33.239 3 .941 3 2.4zm-8 0c0-1.459 1.67-2.161 3-2.4v4.799c-1.371-.253-3-1.002-3-2.399zm8 7c0 1.459-1.67 2.161-3 2.4v-4.8c1.33.239 3 .941 3 2.4z"/>|
    )
  end

  @doc """
  Renders the `horizontal_left` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.horizontal_left />
  <Boxicons.horizontal_left class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def horizontal_left(assigns) do
    svg(
      assigns,
      ~S|<path d="m11 8-4 4 4 4v-3h8v-2h-8V8zM3 18h2v3H3zM3 13h2v3H3zM3 8h2v3H3zM3 3h2v3H3z"/>|
    )
  end

  @doc """
  Renders the `vertical_bottom` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.vertical_bottom />
  <Boxicons.vertical_bottom class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def vertical_bottom(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 19h3v2h-3zM13 19h3v2h-3zM8 19h3v2H8zM3 19h3v2H3zM13 5h-2v8H8l4 4 4-4h-3V5z"/>|
    )
  end

  @doc """
  Renders the `code` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.code />
  <Boxicons.code class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def code(assigns) do
    svg(
      assigns,
      ~S|<path d="M8.293 6.293 2.586 12l5.707 5.707 1.414-1.414L5.414 12l4.293-4.293zm7.414 11.414L21.414 12l-5.707-5.707-1.414 1.414L18.586 12l-4.293 4.293z"/>|
    )
  end

  @doc """
  Renders the `filter` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.filter />
  <Boxicons.filter class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def filter(assigns) do
    svg(assigns, ~S|<path d="M7 11h10v2H7zM4 7h16v2H4zm6 8h4v2h-4z"/>|)
  end

  @doc """
  Renders the `link_external` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.link_external />
  <Boxicons.link_external class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def link_external(assigns) do
    svg(
      assigns,
      ~S|<path d="m13 3 3.293 3.293-7 7 1.414 1.414 7-7L21 11V3z"/><path d="M19 19H5V5h7l-2-2H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2v-5l-2-2v7z"/>|
    )
  end

  @doc """
  Renders the `sort` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sort />
  <Boxicons.sort class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def sort(assigns) do
    svg(assigns, ~S|<path d="M8 16H4l6 6V2H8zm6-11v17h2V8h4l-6-6z"/>|)
  end

  @doc """
  Renders the `contact` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.contact />
  <Boxicons.contact class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def contact(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 2H6a2 2 0 0 0-2 2v3H2v2h2v2H2v2h2v2H2v2h2v3a2 2 0 0 0 2 2h15a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1zm-8 2.999c1.648 0 3 1.351 3 3A3.012 3.012 0 0 1 13 11c-1.647 0-3-1.353-3-3.001 0-1.649 1.353-3 3-3zM19 18H7v-.75c0-2.219 2.705-4.5 6-4.5s6 2.281 6 4.5V18z"/>|
    )
  end

  @doc """
  Renders the `italic` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.italic />
  <Boxicons.italic class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def italic(assigns) do
    svg(assigns, ~S|<path d="M19 7V4H9v3h2.868L9.012 17H5v3h10v-3h-2.868l2.856-10z"/>|)
  end

  @doc """
  Renders the `bracket` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bracket />
  <Boxicons.bracket class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def bracket(assigns) do
    svg(assigns, ~S|<path d="M10 4V2H4v20h6v-2H6V4zm4 16v2h6V2h-6v2h4v16z"/>|)
  end

  @doc """
  Renders the `virus` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.virus />
  <Boxicons.virus class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def virus(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 11h-.17c-1.053 0-1.958-.669-2.357-1.644l-.021-.049c-.408-.977-.249-2.097.5-2.846l.119-.119a.999.999 0 1 0-1.414-1.414l-.119.119c-.749.749-1.869.908-2.846.5l-.049-.021C13.669 5.128 13 4.218 13 3.165v-.081C13 2.447 12.553 2 12 2s-1 .447-1 1v.036c0 1.096-.66 2.084-1.673 2.503l-.006.003a2.71 2.71 0 0 1-2.953-.588l-.025-.025a.999.999 0 1 0-1.414 1.414l.036.036a2.69 2.69 0 0 1 .583 2.929l-.027.064A2.638 2.638 0 0 1 3.085 11h-.001C2.447 11 2 11.447 2 12s.447 1 1 1h.068a2.66 2.66 0 0 1 2.459 1.644l.021.049a2.69 2.69 0 0 1-.583 2.929l-.036.036a.999.999 0 1 0 1.414 1.414l.036-.036a2.689 2.689 0 0 1 2.929-.583l.143.06A2.505 2.505 0 0 1 11 20.83v.085c0 .638.447 1.085 1 1.085s1-.448 1-1v-.17c0-1.015.611-1.93 1.55-2.318l.252-.104a2.508 2.508 0 0 1 2.736.545l.119.119a.999.999 0 1 0 1.414-1.414l-.119-.119c-.749-.749-.908-1.869-.5-2.846l.021-.049c.399-.975 1.309-1.644 2.362-1.644h.08c.638 0 1.085-.447 1.085-1s-.447-1-1-1zM8 13a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm5 3.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm1-4.5a2 2 0 1 1 .001-4.001A2 2 0 0 1 14 12z"/>|
    )
  end

  @doc """
  Renders the `file_js` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_js />
  <Boxicons.file_js class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_js(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zm-2.745 14.186c0 1.345-.644 1.814-1.681 1.814-.245 0-.567-.042-.777-.112l.119-.861c.147.049.336.084.546.084.448 0 .729-.203.729-.938v-2.97h1.064v2.983zm2.043 1.807c-.539 0-1.071-.141-1.337-.287l.217-.883c.287.147.729.294 1.184.294.491 0 .749-.203.749-.511 0-.295-.224-.463-.791-.666-.784-.272-1.295-.707-1.295-1.394 0-.806.672-1.422 1.786-1.422.533 0 .925.112 1.205.238l-.238.861c-.189-.091-.525-.224-.987-.224s-.687.21-.687.455c0 .301.267.435.875.665.834.309 1.226.742 1.226 1.408-.002.793-.61 1.466-1.907 1.466zM14 9h-1V4l5 5h-4z"/>|
    )
  end

  @doc """
  Renders the `hive` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hive />
  <Boxicons.hive class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def hive(assigns) do
    svg(
      assigns,
      ~S|<path d="m20.895 7.553-2-4A1.001 1.001 0 0 0 18 3h-5c-.379 0-.725.214-.895.553L10.382 7H6c-.379 0-.725.214-.895.553l-2 4a1 1 0 0 0 0 .895l2 4c.17.338.516.552.895.552h4.382l1.724 3.447A.998.998 0 0 0 13 21h5c.379 0 .725-.214.895-.553l2-4a1 1 0 0 0 0-.895L19.118 12l1.776-3.553a1 1 0 0 0 .001-.894zM13.618 5h3.764l1.5 3-1.5 3h-3.764l-1.5-3 1.5-3zm-8.5 7 1.5-3h3.764l1.5 3-1.5 3H6.618l-1.5-3zm12.264 7h-3.764l-1.5-3 1.5-3h3.764l1.5 3-1.5 3z"/>|
    )
  end

  @doc """
  Renders the `text` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.text />
  <Boxicons.text class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def text(assigns) do
    svg(assigns, ~S|<path d="M5 8h2V6h3.252L7.68 18H5v2h8v-2h-2.252L13.32 6H17v2h2V4H5z"/>|)
  end

  @doc """
  Renders the `watch` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.watch />
  <Boxicons.watch class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def watch(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 8h-2v5h5v-2h-3z"/><path d="M19.999 12c0-2.953-1.612-5.53-3.999-6.916V3a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v2.083C5.613 6.469 4.001 9.047 4.001 12a8.003 8.003 0 0 0 4.136 7H8v2.041a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V19h-.139a8 8 0 0 0 4.138-7zm-8 5.999A6.005 6.005 0 0 1 6.001 12a6.005 6.005 0 0 1 5.998-5.999c3.31 0 6 2.691 6 5.999a6.005 6.005 0 0 1-6 5.999z"/>|
    )
  end

  @doc """
  Renders the `search_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.search_alt />
  <Boxicons.search_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def search_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M10 18a7.952 7.952 0 0 0 4.897-1.688l4.396 4.396 1.414-1.414-4.396-4.396A7.952 7.952 0 0 0 18 10c0-4.411-3.589-8-8-8s-8 3.589-8 8 3.589 8 8 8zm0-14c3.309 0 6 2.691 6 6s-2.691 6-6 6-6-2.691-6-6 2.691-6 6-6z"/><path d="M11.412 8.586c.379.38.588.882.588 1.414h2a3.977 3.977 0 0 0-1.174-2.828c-1.514-1.512-4.139-1.512-5.652 0l1.412 1.416c.76-.758 2.07-.756 2.826-.002z"/>|
    )
  end

  @doc """
  Renders the `file_png` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_png />
  <Boxicons.file_png class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_png(assigns) do
    svg(
      assigns,
      ~S|<path d="M7.782 14.576c-.186 0-.312.018-.377.036v1.193c.077.018.174.023.306.023.485 0 .785-.246.785-.659 0-.371-.258-.593-.714-.593z"/><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zM9.03 16.105c-.313.293-.774.426-1.313.426-.12 0-.229-.007-.312-.019v1.445h-.906V13.97a7.504 7.504 0 0 1 1.235-.083c.563 0 .966.107 1.235.323.258.204.432.54.432.936s-.131.731-.371.959zm4.302 1.853h-.96l-.863-1.56c-.24-.432-.504-.953-.701-1.427l-.019.006c.024.534.036 1.104.036 1.763v1.218h-.84v-4.042h1.067l.84 1.481c.24.426.479.93.659 1.385h.019a14.746 14.746 0 0 1-.078-1.685v-1.182h.84v4.043zm4.169-.186a4.512 4.512 0 0 1-1.349.228c-.737 0-1.271-.186-1.644-.546-.371-.348-.575-.875-.569-1.469.006-1.344.983-2.111 2.309-2.111.521 0 .924.103 1.121.198l-.191.731c-.222-.096-.498-.174-.941-.174-.762 0-1.338.432-1.338 1.308 0 .833.522 1.325 1.271 1.325.21 0 .378-.024.45-.061v-.846h-.624v-.713h1.505v2.13zM14 9h-1V4l5 5h-4z"/>|
    )
  end

  @doc """
  Renders the `dots_horizontal` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dots_horizontal />
  <Boxicons.dots_horizontal class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def dots_horizontal(assigns) do
    svg(assigns, ~S|<path d="M10 10h4v4h-4zm6 0h4v4h-4zM4 10h4v4H4z"/>|)
  end

  @doc """
  Renders the `won` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.won />
  <Boxicons.won class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def won(assigns) do
    svg(
      assigns,
      ~S|<path d="M21.758 5H19.68l-.844 3h-4.893l-.899-3h-2.088l-.899 3H5.164L4.32 5H2.242l.844 3H2v2h1.648l.563 2H2v2h2.773l1.688 6h2.083l1.8-6h3.313l1.8 6h2.083l1.688-6H22v-2h-2.211l.563-2H22V8h-1.086l.844-3zM5.727 10h3.729l-.6 2H6.289l-.562-2zm1.804 6.417L6.852 14h1.404l-.725 2.417zM10.944 12l.6-2h.912l.6 2h-2.112zm5.525 4.417L15.744 14h1.404l-.679 2.417zM17.711 12h-2.567l-.6-2h3.729l-.562 2z"/>|
    )
  end

  @doc """
  Renders the `battery_charging` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.battery_charging />
  <Boxicons.battery_charging class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def battery_charging(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 10V8a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-2h2v-4h-2zM9 17l2-3.89L7 12l6-5-1 3.89L16 12l-7 5z"/>|
    )
  end

  @doc """
  Renders the `sort_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sort_alt />
  <Boxicons.sort_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def sort_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M6.227 11h11.547c.862 0 1.32-1.02.747-1.665L12.748 2.84a.998.998 0 0 0-1.494 0L5.479 9.335C4.906 9.98 5.364 11 6.227 11zm5.026 10.159a.998.998 0 0 0 1.494 0l5.773-6.495c.574-.644.116-1.664-.747-1.664H6.227c-.862 0-1.32 1.02-.747 1.665l5.773 6.494z"/>|
    )
  end

  @doc """
  Renders the `washer` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.washer />
  <Boxicons.washer class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def washer(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 22h16a1 1 0 0 0 1-1V5c0-1.654-1.346-3-3-3H6C4.346 2 3 3.346 3 5v16a1 1 0 0 0 1 1zM18 3.924a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm-3 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2zM12 7c3.309 0 6 2.691 6 6s-2.691 6-6 6-6-2.691-6-6 2.691-6 6-6z"/><path d="M12.766 16.929c1.399-.261 2.571-1.315 3.023-2.665a3.853 3.853 0 0 0-.153-2.893.482.482 0 0 0-.544-.266c-.604.149-1.019.448-1.5.801-.786.577-1.765 1.294-3.592 1.294-.813 0-1.45-.146-1.984-.354l-.013.009a4.006 4.006 0 0 0 4.763 4.074z"/>|
    )
  end

  @doc """
  Renders the `file_html` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_html />
  <Boxicons.file_html class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_html(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zm-1 2 5 5h-5V4zM8.531 18h-.76v-1.411H6.515V18h-.767v-3.373h.767v1.296h1.257v-1.296h.76V18zm3-2.732h-.921V18h-.766v-2.732h-.905v-.641h2.592v.641zM14.818 18l-.05-1.291c-.017-.405-.03-.896-.03-1.387h-.016c-.104.431-.245.911-.375 1.307l-.41 1.316h-.597l-.359-1.307a15.154 15.154 0 0 1-.306-1.316h-.011c-.021.456-.034.976-.059 1.396L12.545 18h-.705l.216-3.373h1.015l.331 1.126c.104.391.21.811.284 1.206h.017c.095-.391.209-.836.32-1.211l.359-1.121h.996L15.563 18h-.745zm3.434 0h-2.108v-3.373h.767v2.732h1.342V18z"/>|
    )
  end

  @doc """
  Renders the `shopping_bags` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shopping_bags />
  <Boxicons.shopping_bags class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def shopping_bags(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 20h2V10a1 1 0 0 1 1-1h12V7a1 1 0 0 0-1-1h-3.051c-.252-2.244-2.139-4-4.449-4S6.303 3.756 6.051 6H3a1 1 0 0 0-1 1v11a2 2 0 0 0 2 2zm6.5-16c1.207 0 2.218.86 2.45 2h-4.9c.232-1.14 1.243-2 2.45-2z"/><path d="M21 11H9a1 1 0 0 0-1 1v8a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2v-8a1 1 0 0 0-1-1zm-6 7c-2.757 0-5-2.243-5-5h2c0 1.654 1.346 3 3 3s3-1.346 3-3h2c0 2.757-2.243 5-5 5z"/>|
    )
  end

  @doc """
  Renders the `pause` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pause />
  <Boxicons.pause class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def pause(assigns) do
    svg(assigns, ~S|<path d="M8 7h3v10H8zm5 0h3v10h-3z"/>|)
  end

  @doc """
  Renders the `flag_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.flag_alt />
  <Boxicons.flag_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def flag_alt(assigns) do
    svg(assigns, ~S|<path d="m14.303 6-3-2H6V2H4v20h2v-8h4.697l3 2H20V6z"/>|)
  end

  @doc """
  Renders the `male_sign` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.male_sign />
  <Boxicons.male_sign class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def male_sign(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 11V4h-7l2.793 2.793-4.322 4.322A5.961 5.961 0 0 0 8 10c-3.309 0-6 2.691-6 6s2.691 6 6 6 6-2.691 6-6c0-1.294-.416-2.49-1.115-3.471l4.322-4.322L20 11zM8 20c-2.206 0-4-1.794-4-4s1.794-4 4-4 4 1.794 4 4-1.794 4-4 4z"/>|
    )
  end

  @doc """
  Renders the `aperture` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.aperture />
  <Boxicons.aperture class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def aperture(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.579 2 2 6.579 2 12s4.579 10 10 10 10-4.579 10-10S17.421 2 12 2zm2.113 13H9.986l-1.723-3.094L10.202 9h3.736l1.871 3.062L14.113 15zM4 12c0-.953.186-1.87.508-2.727L7.696 15H4.61A7.757 7.757 0 0 1 4 12zm12.283-3h3.106A7.74 7.74 0 0 1 20 12c0 .844-.143 1.66-.397 2.432L16.283 9zm1.905-2h-6.653l1.905-2.857c1.886.359 3.562 1.403 4.748 2.857zm-7.095-2.941L9.132 7H9v.197L7.17 9.942 5.65 7.214c1.3-1.703 3.249-2.895 5.443-3.155zM5.812 17h7.147l-1.709 2.961C9.084 19.748 7.141 18.63 5.812 17zm7.828 2.82 3.357-5.815 1.544 2.526c-1.154 1.642-2.901 2.854-4.901 3.289z"/>|
    )
  end

  @doc """
  Renders the `list_ul` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.list_ul />
  <Boxicons.list_ul class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def list_ul(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 6h2v2H4zm0 5h2v2H4zm0 5h2v2H4zm16-8V6H8.023v2H18.8zM8 11h12v2H8zm0 5h12v2H8z"/>|
    )
  end

  @doc """
  Renders the `chair` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.chair />
  <Boxicons.chair class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def chair(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 13V4c0-1.103-.897-2-2-2H7c-1.103 0-2 .897-2 2v9a1 1 0 0 0-1 1v8h2v-5h12v5h2v-8a1 1 0 0 0-1-1zm-2-9v9h-2V4h2zm-4 0v9h-2V4h2zM7 4h2v9H7V4z"/>|
    )
  end

  @doc """
  Renders the `math` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.math />
  <Boxicons.math class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def math(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 2H5v3H2v2h3v3h2V7h3V5H7V2zm7 3h8v2h-8zm0 10h8v2h-8zm0 4h8v2h-8zm-5.71-4.71L6 16.59l-2.29-2.3-1.42 1.42L4.59 18l-2.3 2.29 1.42 1.42L6 19.41l2.29 2.3 1.42-1.42L7.41 18l2.3-2.29-1.42-1.42z"/>|
    )
  end

  @doc """
  Renders the `world` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.world />
  <Boxicons.world class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def world(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zM4 12c0-.899.156-1.762.431-2.569L6 11l2 2v2l2 2 1 1v1.931C7.061 19.436 4 16.072 4 12zm14.33 4.873C17.677 16.347 16.687 16 16 16v-1a2 2 0 0 0-2-2h-4v-3a2 2 0 0 0 2-2V7h1a2 2 0 0 0 2-2v-.411C17.928 5.778 20 8.65 20 12a7.947 7.947 0 0 1-1.67 4.873z"/>|
    )
  end

  @doc """
  Renders the `pound` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pound />
  <Boxicons.pound class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def pound(assigns) do
    svg(
      assigns,
      ~S|<path d="m5.553 19.105.764 1.843C7.498 20.555 9.422 20 10 20c.838 0 1.462.208 2.184.448.775.259 1.654.552 2.816.552 1.177 0 3.078-.921 3.447-1.105l-.895-1.789c-.721.36-2.031.894-2.552.894-.838 0-1.462-.208-2.184-.448C12.041 18.293 11.162 18 10 18c-.229 0-.526.037-.857.099C9.702 16.95 10 15.561 10 14h3v-2H9.626c-.042-.107-.084-.216-.125-.317C9.243 11.052 9 10.455 9 9c0-1.369.521-3 3-3 2.224 0 3.021 2.227 3.052 2.316l1.896-.633C16.898 7.533 15.679 4 12 4 8.313 4 7 6.583 7 9c0 1.491.234 2.35.478 3H5v2h3c0 2.467-.892 4.328-2.447 5.105z"/>|
    )
  end

  @doc """
  Renders the `exit_fullscreen` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.exit_fullscreen />
  <Boxicons.exit_fullscreen class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def exit_fullscreen(assigns) do
    svg(
      assigns,
      ~S|<path d="M10 4H8v4H4v2h6zM8 20h2v-6H4v2h4zm12-6h-6v6h2v-4h4zm0-6h-4V4h-2v6h6z"/>|
    )
  end

  @doc """
  Renders the `list_check` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.list_check />
  <Boxicons.list_check class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def list_check(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 7h11v2H4zm0 4h11v2H4zm0 4h7v2H4zm15.299-2.708-4.3 4.291-1.292-1.291-1.414 1.415 2.706 2.704 5.712-5.703z"/>|
    )
  end

  @doc """
  Renders the `file_md` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_md />
  <Boxicons.file_md class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_md(assigns) do
    svg(
      assigns,
      ~S|<path d="M14.481 14.015c-.238 0-.393.021-.483.042v3.089c.091.021.237.021.371.021.966.007 1.597-.525 1.597-1.653.007-.981-.568-1.499-1.485-1.499z"/><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zm-2.934 15.951-.07-1.807a53.142 53.142 0 0 1-.042-1.94h-.021a26.098 26.098 0 0 1-.525 1.828l-.574 1.842H9l-.504-1.828a21.996 21.996 0 0 1-.428-1.842h-.013c-.028.638-.049 1.366-.084 1.954l-.084 1.793h-.988L7.2 13.23h1.422l.462 1.576c.147.546.295 1.135.399 1.688h.021a39.87 39.87 0 0 1 .448-1.694l.504-1.569h1.394l.26 4.721h-1.044zm5.25-.56c-.498.413-1.253.609-2.178.609a9.27 9.27 0 0 1-1.212-.07v-4.636a9.535 9.535 0 0 1 1.443-.099c.896 0 1.478.161 1.933.505.49.364.799.945.799 1.778 0 .904-.33 1.528-.785 1.913zM14 9h-1V4l5 5h-4z"/>|
    )
  end

  @doc """
  Renders the `unlink` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.unlink />
  <Boxicons.unlink class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def unlink(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.949 14.121 19.071 12a5.008 5.008 0 0 0 0-7.071 5.006 5.006 0 0 0-7.071 0l-.707.707 1.414 1.414.707-.707a3.007 3.007 0 0 1 4.243 0 3.005 3.005 0 0 1 0 4.243l-2.122 2.121a2.723 2.723 0 0 1-.844.57L13.414 12l1.414-1.414-.707-.707a4.965 4.965 0 0 0-3.535-1.465c-.235 0-.464.032-.691.066L3.707 2.293 2.293 3.707l18 18 1.414-1.414-5.536-5.536c.277-.184.538-.396.778-.636zm-6.363 3.536a3.007 3.007 0 0 1-4.243 0 3.005 3.005 0 0 1 0-4.243l1.476-1.475-1.414-1.414L4.929 12a5.008 5.008 0 0 0 0 7.071 4.983 4.983 0 0 0 3.535 1.462A4.982 4.982 0 0 0 12 19.071l.707-.707-1.414-1.414-.707.707z"/>|
    )
  end

  @doc """
  Renders the `selection` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.selection />
  <Boxicons.selection class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def selection(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 9a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1h-4a1 1 0 0 0-1 1v1H9V4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v4a1 1 0 0 0 1 1h1v6H4a1 1 0 0 0-1 1v4a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1v-1h6v1a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1h-1V9h1zm-3-4h2v2h-2V5zM5 5h2v2H5V5zm2 14H5v-2h2v2zm12 0h-2v-2h2v2zm-2-4h-1a1 1 0 0 0-1 1v1H9v-1a1 1 0 0 0-1-1H7V9h1a1 1 0 0 0 1-1V7h6v1a1 1 0 0 0 1 1h1v6z"/>|
    )
  end

  @doc """
  Renders the `outline` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.outline />
  <Boxicons.outline class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def outline(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 19v-9c0-1.103-.897-2-2-2h-3V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2h3v3c0 1.103.897 2 2 2h9c1.103 0 2-.897 2-2zM5 14V5h9v3h-4c-1.103 0-2 .897-2 2v4H5zm9.001 0H10v-4h4.001v4zM10 16h4c1.103 0 2-.897 2-2v-4h3l.001 9H10v-3z"/>|
    )
  end

  @doc """
  Renders the `horizontal_center` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.horizontal_center />
  <Boxicons.horizontal_center class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def horizontal_center(assigns) do
    svg(
      assigns,
      ~S|<path d="m5.005 15.995 4-4-4-4v3h-3v2h3zm14-5v-3l-4 4 4 4v-3h3v-2h-2.072zm-8 7h2v3h-2zm0-5h2v3h-2zm0-5h2v3h-2zm0-5h2v3h-2z"/>|
    )
  end

  @doc """
  Renders the `glasses` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.glasses />
  <Boxicons.glasses class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def glasses(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.977 13.783-2-9A1.002 1.002 0 0 0 19 4h-3v2h2.198l.961 4.326A4.467 4.467 0 0 0 17.5 10c-1.953 0-3.603 1.258-4.224 3h-2.553c-.621-1.742-2.271-3-4.224-3-.587 0-1.145.121-1.659.326L5.802 6H8V4H5a1 1 0 0 0-.976.783l-2 9 .047.011A4.552 4.552 0 0 0 2 14.5C2 16.981 4.019 19 6.5 19c2.31 0 4.197-1.756 4.449-4h2.102c.252 2.244 2.139 4 4.449 4 2.481 0 4.5-2.019 4.5-4.5 0-.242-.034-.475-.071-.706l.048-.011zM6.5 17C5.122 17 4 15.878 4 14.5S5.122 12 6.5 12 9 13.122 9 14.5 7.878 17 6.5 17zm11 0c-1.379 0-2.5-1.122-2.5-2.5s1.121-2.5 2.5-2.5 2.5 1.122 2.5 2.5-1.121 2.5-2.5 2.5z"/>|
    )
  end

  @doc """
  Renders the `star_half` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.star_half />
  <Boxicons.star_half class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def star_half(assigns) do
    svg(
      assigns,
      ~S|<path d="M5.025 20.775A.998.998 0 0 0 6 22a1 1 0 0 0 .555-.168L12 18.202l5.445 3.63a1.001 1.001 0 0 0 1.517-1.106l-1.829-6.4 4.536-4.082a1 1 0 0 0-.59-1.74l-5.701-.454-2.467-5.461a.998.998 0 0 0-1.822-.001L8.622 8.05l-5.701.453a1 1 0 0 0-.619 1.713l4.214 4.107-1.491 6.452zM12 5.429l2.042 4.521.588.047h.001l3.972.315-3.271 2.944-.001.002-.463.416.171.597v.003l1.253 4.385L12 15.798V5.429z"/>|
    )
  end

  @doc """
  Renders the `money_withdraw` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.money_withdraw />
  <Boxicons.money_withdraw class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def money_withdraw(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 15c-1.84 0-2-.86-2-1H8c0 .92.66 2.55 3 2.92V18h2v-1.08c2-.34 3-1.63 3-2.92 0-1.12-.52-3-4-3-2 0-2-.63-2-1s.7-1 2-1 1.39.64 1.4 1h2A3 3 0 0 0 13 7.12V6h-2v1.09C9 7.42 8 8.71 8 10c0 1.12.52 3 4 3 2 0 2 .68 2 1s-.62 1-2 1z"/><path d="M5 2H2v2h2v17a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4h2V2H5zm13 18H6V4h12z"/>|
    )
  end

  @doc """
  Renders the `bold` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bold />
  <Boxicons.bold class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def bold(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.061 11.22A4.46 4.46 0 0 0 18 8.5C18 6.019 15.981 4 13.5 4H6v15h8c2.481 0 4.5-2.019 4.5-4.5a4.48 4.48 0 0 0-1.439-3.28zM13.5 7c.827 0 1.5.673 1.5 1.5s-.673 1.5-1.5 1.5H9V7h4.5zm.5 9H9v-3h5c.827 0 1.5.673 1.5 1.5S14.827 16 14 16z"/>|
    )
  end

  @doc """
  Renders the `trim` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.trim />
  <Boxicons.trim class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def trim(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 16h3v3c0 1.103.897 2 2 2h9c1.103 0 2-.897 2-2v-9c0-1.103-.897-2-2-2h-3V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2zm14-6-.003 9H10v-3h4c1.103 0 2-.897 2-2v-4h3zM5 10h5V5h4l-.003 9H5v-4z"/>|
    )
  end

  @doc """
  Renders the `cut` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cut />
  <Boxicons.cut class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def cut(assigns) do
    svg(
      assigns,
      ~S|<path d="M10 6.5C10 4.57 8.43 3 6.5 3S3 4.57 3 6.5 4.57 10 6.5 10a3.45 3.45 0 0 0 1.613-.413l2.357 2.528-2.318 2.318A3.46 3.46 0 0 0 6.5 14C4.57 14 3 15.57 3 17.5S4.57 21 6.5 21s3.5-1.57 3.5-3.5c0-.601-.166-1.158-.434-1.652l2.269-2.268L17 19.121a3 3 0 0 0 2.121.879H22L9.35 8.518c.406-.572.65-1.265.65-2.018zM6.5 8C5.673 8 5 7.327 5 6.5S5.673 5 6.5 5 8 5.673 8 6.5 7.327 8 6.5 8zm0 11c-.827 0-1.5-.673-1.5-1.5S5.673 16 6.5 16s1.5.673 1.5 1.5S7.327 19 6.5 19z"/><path d="m17 4.879-3.707 4.414 1.414 1.414L22 4h-2.879A3 3 0 0 0 17 4.879z"/>|
    )
  end

  @doc """
  Renders the `underline` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.underline />
  <Boxicons.underline class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def underline(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 18h14v2H5zM6 4v6c0 3.309 2.691 6 6 6s6-2.691 6-6V4h-2v6c0 2.206-1.794 4-4 4s-4-1.794-4-4V4H6z"/>|
    )
  end

  @doc """
  Renders the `wifi` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.wifi />
  <Boxicons.wifi class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def wifi(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 6c3.537 0 6.837 1.353 9.293 3.809l1.414-1.414C19.874 5.561 16.071 4 12 4c-4.071.001-7.874 1.561-10.707 4.395l1.414 1.414C5.163 7.353 8.463 6 12 6zm5.671 8.307c-3.074-3.074-8.268-3.074-11.342 0l1.414 1.414c2.307-2.307 6.207-2.307 8.514 0l1.414-1.414z"/><path d="M20.437 11.293c-4.572-4.574-12.301-4.574-16.873 0l1.414 1.414c3.807-3.807 10.238-3.807 14.045 0l1.414-1.414z"/>|
    )
  end

  @doc """
  Renders the `clipboard` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.clipboard />
  <Boxicons.clipboard class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def clipboard(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3h-2.25a1 1 0 0 0-1-1h-7.5a1 1 0 0 0-1 1H5c-1.103 0-2 .897-2 2v15c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zm0 17H5V5h2v2h10V5h2v15z"/>|
    )
  end

  @doc """
  Renders the `glasses_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.glasses_alt />
  <Boxicons.glasses_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def glasses_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="m21.948 11.684-2-6A.997.997 0 0 0 19 5h-3v2h2.279l1.334 4H15c-1.103 0-2 .897-2 2h-2c0-1.103-.897-2-2-2H4.387l1.334-4H8V5H5a.998.998 0 0 0-.948.684l-2 6 .012.004A.928.928 0 0 0 2 12v4c0 1.654 1.346 3 3 3h3c1.654 0 3-1.346 3-3v-1h2v1c0 1.654 1.346 3 3 3h3c1.654 0 3-1.346 3-3v-4a.964.964 0 0 0-.063-.313l.011-.003zM9 16c0 .551-.448 1-1 1H5c-.552 0-1-.449-1-1v-3h5v3zm11 0c0 .551-.448 1-1 1h-3c-.552 0-1-.449-1-1v-3h5v3z"/>|
    )
  end

  @doc """
  Renders the `direction_right` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.direction_right />
  <Boxicons.direction_right class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def direction_right(assigns) do
    svg(
      assigns,
      ~S|<path d="m2.295 12.707 8.978 9c.389.39 1.025.391 1.414.002l9.021-9a1 1 0 0 0 0-1.416l-9.021-9a.999.999 0 0 0-1.414.002l-8.978 9a.998.998 0 0 0 0 1.412zm6.707-2.706h5v-2l3 3-3 3v-2h-3v4h-2v-6z"/>|
    )
  end

  @doc """
  Renders the `city` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.city />
  <Boxicons.city class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def city(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 6h-4V3a1 1 0 0 0-1-1H8a1 1 0 0 0-1 1v7H3a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1V7a1 1 0 0 0-1-1zM6 18H4v-2h2v2zm0-4H4v-2h2v2zm5 4H9v-2h2v2zm0-4H9v-2h2v2zm0-4H9V8h2v2zm0-4H9V4h2v2zm4 12h-2v-2h2v2zm0-4h-2v-2h2v2zm0-4h-2V8h2v2zm0-4h-2V4h2v2zm5 12h-2v-2h2v2zm0-4h-2v-2h2v2zm0-4h-2V8h2v2z"/>|
    )
  end

  @doc """
  Renders the `zap` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.zap />
  <Boxicons.zap class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def zap(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.98 11.802a.995.995 0 0 0-.738-.771l-6.86-1.716 2.537-5.921a.998.998 0 0 0-.317-1.192.996.996 0 0 0-1.234.024l-11 9a1 1 0 0 0 .39 1.744l6.719 1.681-3.345 5.854A1.001 1.001 0 0 0 8 22a.995.995 0 0 0 .6-.2l12-9a1 1 0 0 0 .38-.998z"/>|
    )
  end

  @doc """
  Renders the `user_detail` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.user_detail />
  <Boxicons.user_detail class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def user_detail(assigns) do
    svg(
      assigns,
      ~S|<path d="M15 11h7v2h-7zm1 4h6v2h-6zm-2-8h8v2h-8zM4 19h10v-1c0-2.757-2.243-5-5-5H7c-2.757 0-5 2.243-5 5v1h2zm4-7c1.995 0 3.5-1.505 3.5-3.5S9.995 5 8 5 4.5 6.505 4.5 8.5 6.005 12 8 12z"/>|
    )
  end

  @doc """
  Renders the `microphone_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.microphone_alt />
  <Boxicons.microphone_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def microphone_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 12H4c0 4.072 3.061 7.436 7 7.931V22h2v-2.069c3.939-.495 7-3.858 7-7.931h-2c0 3.309-2.691 6-6 6s-6-2.691-6-6z"/><path d="M8 12c0 2.206 1.794 4 4 4s4-1.794 4-4h-2v-2h2V8h-2V6h2c0-2.217-1.785-4.021-3.979-4.021a.933.933 0 0 0-.209.025A4.006 4.006 0 0 0 8 6h4v2H8v2h4v2H8z"/>|
    )
  end

  @doc """
  Renders the `transfer` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.transfer />
  <Boxicons.transfer class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def transfer(assigns) do
    svg(assigns, ~S|<path d="m15 12 5-4-5-4v2.999H2v2h13zm7 3H9v-3l-5 4 5 4v-3h13z"/>|)
  end

  @doc """
  Renders the `expand_horizontal` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.expand_horizontal />
  <Boxicons.expand_horizontal class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def expand_horizontal(assigns) do
    svg(
      assigns,
      ~S|<path d="M8.29 5.64 1.93 12l6.36 6.36 1.42-1.41L4.76 12l4.95-4.95-1.42-1.41zm6 1.41L19.24 12l-4.95 4.95 1.42 1.41L22.07 12l-6.36-6.36-1.42 1.41z"/>|
    )
  end

  @doc """
  Renders the `factory` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.factory />
  <Boxicons.factory class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def factory(assigns) do
    svg(
      assigns,
      ~S|<path d="M17 10V6l-5 4V6l-5 4V4H2v16h20V6l-5 4zm-8 7H7v-3h2v3zm5 0h-2v-3h2v3zm5 0h-2v-3h2v3z"/>|
    )
  end

  @doc """
  Renders the `battery_full` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.battery_full />
  <Boxicons.battery_full class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def battery_full(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 18h14a2 2 0 0 0 2-2v-2h2v-4h-2V8a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2zm1-9h12v6H5V9z"/>|
    )
  end

  @doc """
  Renders the `shape_square` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shape_square />
  <Boxicons.shape_square class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def shape_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 6c0-1.654-1.346-3-3-3a2.993 2.993 0 0 0-2.815 2h-6.37A2.993 2.993 0 0 0 6 3C4.346 3 3 4.346 3 6c0 1.302.839 2.401 2 2.815v6.369A2.997 2.997 0 0 0 3 18c0 1.654 1.346 3 3 3a2.993 2.993 0 0 0 2.815-2h6.369a2.994 2.994 0 0 0 2.815 2c1.654 0 3-1.346 3-3a2.997 2.997 0 0 0-2-2.816V8.816A2.996 2.996 0 0 0 21 6zm-3-1a1.001 1.001 0 1 1-1 1c0-.551.448-1 1-1zm-2.815 12h-6.37A2.99 2.99 0 0 0 7 15.184V8.816A2.99 2.99 0 0 0 8.815 7h6.369A2.99 2.99 0 0 0 17 8.815v6.369A2.99 2.99 0 0 0 15.185 17zM6 5a1.001 1.001 0 1 1-1 1c0-.551.448-1 1-1zm0 14a1.001 1.001 0 0 1 0-2 1.001 1.001 0 0 1 0 2zm12 0a1.001 1.001 0 0 1 0-2 1.001 1.001 0 0 1 0 2z"/>|
    )
  end

  @doc """
  Renders the `flag_checkered` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.flag_checkered />
  <Boxicons.flag_checkered class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def flag_checkered(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 2v18H3v2h4v-2H6v-5h13a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H6V2H4zm4 3v2h2V5h2v2h2V5h2v2h2v2h-2v2h2v2h-2v-2h-2v2h-2v-2h-2v2H8v-2H6V9h2V7H6V5h2z"/><path d="M8 9h2v2H8zm4 0h2v2h-2zm-2-2h2v2h-2zm4 0h2v2h-2z"/>|
    )
  end

  @doc """
  Renders the `library` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.library />
  <Boxicons.library class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def library(assigns) do
    svg(
      assigns,
      ~S|<path d="M7 3h2v18H7zM4 3h2v18H4zm6 0h2v18h-2zm9.062 17.792-6.223-16.89 1.877-.692 6.223 16.89z"/>|
    )
  end

  @doc """
  Renders the `test_tube` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.test_tube />
  <Boxicons.test_tube class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def test_tube(assigns) do
    svg(
      assigns,
      ~S|<path d="m13.293 2.707.818.818L3.318 14.318C2.468 15.168 2 16.298 2 17.5s.468 2.332 1.318 3.183C4.169 21.532 5.299 22 6.5 22s2.331-.468 3.182-1.318L20.475 9.889l.818.818 1.414-1.414-8-8-1.414 1.414zm3.182 8.354-2.403-2.404-1.414 1.414 2.403 2.404-1.414 1.415-.99-.99-1.414 1.414.99.99-1.415 1.415-2.403-2.404L7 15.728l2.403 2.404-1.136 1.136c-.945.944-2.59.944-3.535 0C4.26 18.795 4 18.168 4 17.5s.26-1.295.732-1.768L15.525 4.939l3.535 3.535-2.585 2.587z"/>|
    )
  end

  @doc """
  Renders the `station` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.station />
  <Boxicons.station class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def station(assigns) do
    svg(
      assigns,
      ~S|<path d="m7.758 16.243 1.414-1.415a3.97 3.97 0 0 1-1.173-2.831c0-1.068.417-2.071 1.173-2.825L7.758 7.756a5.957 5.957 0 0 0-1.76 4.24c0 1.604.625 3.112 1.76 4.247zm8.484 0A5.96 5.96 0 0 0 18 12a5.96 5.96 0 0 0-1.758-4.243l-1.414 1.414C15.584 9.927 16 10.932 16 12s-.416 2.073-1.172 2.829l1.414 1.414z"/><path d="M6.344 17.657a7.953 7.953 0 0 1-2.345-5.659c0-2.137.833-4.145 2.345-5.654L4.93 4.929c-1.89 1.886-2.931 4.397-2.931 7.069s1.041 5.183 2.931 7.073l1.414-1.414zM17.657 6.343A7.948 7.948 0 0 1 20 12a7.948 7.948 0 0 1-2.343 5.657l1.414 1.414A9.932 9.932 0 0 0 22 12a9.934 9.934 0 0 0-2.929-7.071l-1.414 1.414z"/>|
    )
  end

  @doc """
  Renders the `intersect` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.intersect />
  <Boxicons.intersect class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def intersect(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 16h3v3c0 1.103.897 2 2 2h9c1.103 0 2-.897 2-2v-9c0-1.103-.897-2-2-2h-3V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2zm9.001-2L14 10h.001v4zM19 10l.001 9H10v-3h4c1.103 0 2-.897 2-2v-4h3zM5 5h9v3h-4c-1.103 0-2 .897-2 2v4H5V5z"/>|
    )
  end

  @doc """
  Renders the `window` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.window />
  <Boxicons.window class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def window(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 21h16c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zm0-2V7h16l.001 12H4z"/>|
    )
  end

  @doc """
  Renders the `mobile_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.mobile_alt />
  <Boxicons.mobile_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def mobile_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.75 2h-10c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h10c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm-10 18V4h10l.002 16H6.75z"/>|
    )
  end

  @doc """
  Renders the `shuffle` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shuffle />
  <Boxicons.shuffle class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def shuffle(assigns) do
    svg(
      assigns,
      ~S|<path d="M17 17h-1.559l-9.7-10.673A1 1 0 0 0 5.001 6H2v2h2.559l4.09 4.5-4.09 4.501H2v2h3.001a1 1 0 0 0 .74-.327L10 13.987l4.259 4.686a1 1 0 0 0 .74.327H17v3l5-4-5-4v3z"/><path d="M15.441 8H17v3l5-3.938L17 3v3h-2.001a1 1 0 0 0-.74.327l-3.368 3.707 1.48 1.346L15.441 8z"/>|
    )
  end

  @doc """
  Renders the `radio_circle_marked` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.radio_circle_marked />
  <Boxicons.radio_circle_marked class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def radio_circle_marked(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 5c-3.859 0-7 3.141-7 7s3.141 7 7 7 7-3.141 7-7-3.141-7-7-7zm0 12c-2.757 0-5-2.243-5-5s2.243-5 5-5 5 2.243 5 5-2.243 5-5 5z"/><path d="M12 9c-1.627 0-3 1.373-3 3s1.373 3 3 3 3-1.373 3-3-1.373-3-3-3z"/>|
    )
  end

  @doc """
  Renders the `shapes` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shapes />
  <Boxicons.shapes class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def shapes(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.867 2.504c-.355-.624-1.381-.623-1.736 0l-3.999 7A1 1 0 0 0 13 11h8a1.001 1.001 0 0 0 .868-1.496l-4.001-7zM3 22h7a1 1 0 0 0 1-1v-7a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1zm14.5-9c-2.481 0-4.5 2.019-4.5 4.5s2.019 4.5 4.5 4.5 4.5-2.019 4.5-4.5-2.019-4.5-4.5-4.5z"/>|
    )
  end

  @doc """
  Renders the `signal_4` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.signal_4 />
  <Boxicons.signal_4 class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def signal_4(assigns) do
    svg(assigns, ~S|<path d="M3 16h2v5H3zm4-3h2v8H7zm4-3h2v11h-2zm4-3h2v14h-2z"/>|)
  end

  @doc """
  Renders the `menu_alt_left` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.menu_alt_left />
  <Boxicons.menu_alt_left class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def menu_alt_left(assigns) do
    svg(assigns, ~S|<path d="M4 11h12v2H4zm0-5h16v2H4zm0 12h7.235v-2H4z"/>|)
  end

  @doc """
  Renders the `cross` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cross />
  <Boxicons.cross class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def cross(assigns) do
    svg(assigns, ~S|<path d="M11 2h2v7h-2zm0 13h2v7h-2zm4-4h7v2h-7zM2 11h7v2H2z"/>|)
  end

  @doc """
  Renders the `repeat` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.repeat />
  <Boxicons.repeat class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def repeat(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 6h-5v2h4v9H4V8h5v3l5-4-5-4v3H3a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1V7a1 1 0 0 0-1-1z"/>|
    )
  end

  @doc """
  Renders the `home_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.home_alt />
  <Boxicons.home_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def home_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 22h14a2 2 0 0 0 2-2v-9a1 1 0 0 0-.29-.71l-8-8a1 1 0 0 0-1.41 0l-8 8A1 1 0 0 0 3 11v9a2 2 0 0 0 2 2zm5-2v-5h4v5zm-5-8.59 7-7 7 7V20h-3v-5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v5H5z"/>|
    )
  end

  @doc """
  Renders the `body` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.body />
  <Boxicons.body class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def body(assigns) do
    svg(assigns, ~S|<path d="M15 22V9h5V7H4v2h5v13h2v-7h2v7z"/>|)
  end

  @doc """
  Renders the `file_gif` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_gif />
  <Boxicons.file_gif class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_gif(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zm-2.667 15.772A4.512 4.512 0 0 1 9.984 18c-.737 0-1.271-.186-1.644-.546-.371-.348-.575-.875-.569-1.469.006-1.344.983-2.111 2.309-2.111.521 0 .924.103 1.121.198l-.191.731c-.222-.096-.498-.174-.941-.174-.762 0-1.338.432-1.338 1.308 0 .833.522 1.325 1.271 1.325.21 0 .378-.024.45-.061v-.846h-.624v-.713h1.505v2.13zm1.634.186h-.918v-4.042h.918v4.042zm3.262-3.292h-1.553v.923h1.451v.744h-1.451v1.625h-.918v-4.042h2.471v.75zM14 9h-1V4l5 5h-4z"/>|
    )
  end

  @doc """
  Renders the `git_branch` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.git_branch />
  <Boxicons.git_branch class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def git_branch(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.5 4C15.57 4 14 5.57 14 7.5c0 1.554 1.025 2.859 2.43 3.315-.146.932-.547 1.7-1.23 2.323-1.946 1.773-5.527 1.935-7.2 1.907V8.837c1.44-.434 2.5-1.757 2.5-3.337C10.5 3.57 8.93 2 7 2S3.5 3.57 3.5 5.5c0 1.58 1.06 2.903 2.5 3.337v6.326c-1.44.434-2.5 1.757-2.5 3.337C3.5 20.43 5.07 22 7 22s3.5-1.57 3.5-3.5c0-.551-.14-1.065-.367-1.529 2.06-.186 4.657-.757 6.409-2.35 1.097-.997 1.731-2.264 1.904-3.768C19.915 10.438 21 9.1 21 7.5 21 5.57 19.43 4 17.5 4zm-12 1.5C5.5 4.673 6.173 4 7 4s1.5.673 1.5 1.5S7.827 7 7 7s-1.5-.673-1.5-1.5zM7 20c-.827 0-1.5-.673-1.5-1.5a1.5 1.5 0 0 1 1.482-1.498l.13.01A1.495 1.495 0 0 1 7 20zM17.5 9c-.827 0-1.5-.673-1.5-1.5S16.673 6 17.5 6s1.5.673 1.5 1.5S18.327 9 17.5 9z"/>|
    )
  end

  @doc """
  Renders the `globe` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.globe />
  <Boxicons.globe class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def globe(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm7.931 9h-2.764a14.67 14.67 0 0 0-1.792-6.243A8.013 8.013 0 0 1 19.931 11zM12.53 4.027c1.035 1.364 2.427 3.78 2.627 6.973H9.03c.139-2.596.994-5.028 2.451-6.974.172-.01.344-.026.519-.026.179 0 .354.016.53.027zm-3.842.7C7.704 6.618 7.136 8.762 7.03 11H4.069a8.013 8.013 0 0 1 4.619-6.273zM4.069 13h2.974c.136 2.379.665 4.478 1.556 6.23A8.01 8.01 0 0 1 4.069 13zm7.381 6.973C10.049 18.275 9.222 15.896 9.041 13h6.113c-.208 2.773-1.117 5.196-2.603 6.972-.182.012-.364.028-.551.028-.186 0-.367-.016-.55-.027zm4.011-.772c.955-1.794 1.538-3.901 1.691-6.201h2.778a8.005 8.005 0 0 1-4.469 6.201z"/>|
    )
  end

  @doc """
  Renders the `qr_scan` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.qr_scan />
  <Boxicons.qr_scan class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def qr_scan(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 4h4.01V2H2v6h2V4zm0 12H2v6h6.01v-2H4v-4zm16 4h-4v2h6v-6h-2v4zM16 4h4v4h2V2h-6v2z"/><path d="M5 11h6V5H5zm2-4h2v2H7zM5 19h6v-6H5zm2-4h2v2H7zM19 5h-6v6h6zm-2 4h-2V7h2zm-3.99 4h2v2h-2zm2 2h2v2h-2zm2 2h2v2h-2zm0-4h2v2h-2z"/>|
    )
  end

  @doc """
  Renders the `code_curly` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.code_curly />
  <Boxicons.code_curly class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def code_curly(assigns) do
    svg(
      assigns,
      ~S|<path d="M9 22h1v-2h-.989C8.703 19.994 6 19.827 6 16c0-1.993-.665-3.246-1.502-4C5.335 11.246 6 9.993 6 8c0-3.827 2.703-3.994 3-4h1V2H8.998C7.269 2.004 4 3.264 4 8c0 2.8-1.678 2.99-2.014 3L2 13c.082 0 2 .034 2 3 0 4.736 3.269 5.996 5 6zm13-11c-.082 0-2-.034-2-3 0-4.736-3.269-5.996-5-6h-1v2h.989c.308.006 3.011.173 3.011 4 0 1.993.665 3.246 1.502 4-.837.754-1.502 2.007-1.502 4 0 3.827-2.703 3.994-3 4h-1v2h1.002C16.731 21.996 20 20.736 20 16c0-2.8 1.678-2.99 2.014-3L22 11z"/>|
    )
  end

  @doc """
  Renders the `shield_quarter` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shield_quarter />
  <Boxicons.shield_quarter class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def shield_quarter(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.995 6.9a.998.998 0 0 0-.548-.795l-8-4a1 1 0 0 0-.895 0l-8 4a1.002 1.002 0 0 0-.547.795c-.011.107-.961 10.767 8.589 15.014a.987.987 0 0 0 .812 0c9.55-4.247 8.6-14.906 8.589-15.014zM12 19.897V12H5.51a15.473 15.473 0 0 1-.544-4.365L12 4.118V12h6.46c-.759 2.74-2.498 5.979-6.46 7.897z"/>|
    )
  end

  @doc """
  Renders the `badge_dollar` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.badge_dollar />
  <Boxicons.badge_dollar class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def badge_dollar(assigns) do
    svg(
      assigns,
      ~S|<path d="M2.047 14.668a.994.994 0 0 0 .465.607l1.91 1.104v2.199a1 1 0 0 0 1 1h2.199l1.104 1.91a1.01 1.01 0 0 0 .866.5c.174 0 .347-.046.501-.135L12 20.75l1.91 1.104a1.001 1.001 0 0 0 1.366-.365l1.103-1.91h2.199a1 1 0 0 0 1-1V16.38l1.91-1.104a1 1 0 0 0 .365-1.367L20.75 12l1.104-1.908a1 1 0 0 0-.365-1.366l-1.91-1.104v-2.2a1 1 0 0 0-1-1H16.38l-1.103-1.909a1.008 1.008 0 0 0-.607-.466.993.993 0 0 0-.759.1L12 3.25l-1.909-1.104a1 1 0 0 0-1.366.365l-1.104 1.91H5.422a1 1 0 0 0-1 1V7.62l-1.91 1.104a1.003 1.003 0 0 0-.365 1.368L3.251 12l-1.104 1.908a1.009 1.009 0 0 0-.1.76zM12 13c-3.48 0-4-1.879-4-3 0-1.287 1.029-2.583 3-2.915V6.012h2v1.109c1.734.41 2.4 1.853 2.4 2.879h-1l-1 .018C13.386 9.638 13.185 9 12 9c-1.299 0-2 .515-2 1 0 .374 0 1 2 1 3.48 0 4 1.879 4 3 0 1.287-1.029 2.583-3 2.915V18h-2v-1.08c-2.339-.367-3-2.003-3-2.92h2c.011.143.159 1 2 1 1.38 0 2-.585 2-1 0-.325 0-1-2-1z"/>|
    )
  end

  @doc """
  Renders the `ruble` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.ruble />
  <Boxicons.ruble class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def ruble(assigns) do
    svg(
      assigns,
      ~S|<path d="M8 21h2v-3h6v-2h-6v-2h4.5c2.757 0 5-2.243 5-5s-2.243-5-5-5H9a1 1 0 0 0-1 1v7H5v2h3v2H5v2h3v3zm2-15h4.5c1.654 0 3 1.346 3 3s-1.346 3-3 3H10V6z"/>|
    )
  end

  @doc """
  Renders the `pizza` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pizza />
  <Boxicons.pizza class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def pizza(assigns) do
    svg(
      assigns,
      ~S|<path d="M9.76 2.021a.995.995 0 0 0-.989.703L3.579 19.166a1 1 0 0 0 1.255 1.255l16.442-5.192a.991.991 0 0 0 .702-.988C21.6 7.666 16.334 2.4 9.76 2.021zM10 16a2 2 0 1 1 .001-4.001A2 2 0 0 1 10 16zm6-2a2 2 0 1 1 .001-4.001A2 2 0 0 1 16 14z"/>|
    )
  end

  @doc """
  Renders the `target_lock` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.target_lock />
  <Boxicons.target_lock class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def target_lock(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 4.069V2h-2v2.069A8.008 8.008 0 0 0 4.069 11H2v2h2.069A8.007 8.007 0 0 0 11 19.931V22h2v-2.069A8.007 8.007 0 0 0 19.931 13H22v-2h-2.069A8.008 8.008 0 0 0 13 4.069zM12 18c-3.309 0-6-2.691-6-6s2.691-6 6-6 6 2.691 6 6-2.691 6-6 6z"/>|
    )
  end

  @doc """
  Renders the `vertical_center` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.vertical_center />
  <Boxicons.vertical_center class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def vertical_center(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 5V2h-2v3H8l4 4 4-4zm0 17v-3h3l-4-4-4 4h3v3zM3 11h3v2H3zm5 0h3v2H8zm5 0h3v2h-3zm5 0h3v2h-3z"/>|
    )
  end

  @doc """
  Renders the `radiation` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.radiation />
  <Boxicons.radiation class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def radiation(assigns) do
    svg(
      assigns,
      ~S|<path d="M9.912 8.531 7.121 3.877a.501.501 0 0 0-.704-.166 9.982 9.982 0 0 0-4.396 7.604.505.505 0 0 0 .497.528l5.421.09a4.042 4.042 0 0 1 1.973-3.402zm8.109-4.51a.504.504 0 0 0-.729.151L14.499 8.83a4.03 4.03 0 0 1 1.546 3.112l5.419-.09a.507.507 0 0 0 .499-.53 9.986 9.986 0 0 0-3.942-7.301zm-4.067 11.511a4.015 4.015 0 0 1-1.962.526 4.016 4.016 0 0 1-1.963-.526l-2.642 4.755a.5.5 0 0 0 .207.692A9.948 9.948 0 0 0 11.992 22a9.94 9.94 0 0 0 4.396-1.021.5.5 0 0 0 .207-.692l-2.641-4.755z"/>|
    )
  end

  @doc """
  Renders the `align_left` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.align_left />
  <Boxicons.align_left class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def align_left(assigns) do
    svg(assigns, ~S|<path d="M4 19h16v2H4zm0-4h11v2H4zm0-4h16v2H4zm0-8h16v2H4zm0 4h11v2H4z"/>|)
  end

  @doc """
  Renders the `windows` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.windows />
  <Boxicons.windows class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def windows(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 7H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V9c0-1.103-.897-2-2-2zM4 19v-8h12V9l.002 10H4z"/><path d="M22 5c0-1.103-.897-2-2-2H7c-1.103 0-2 .897-2 2h13.001c1.101 0 1.996.895 1.999 1.994L20.002 15H20v2c1.103 0 2-.897 2-2V8.007L22.001 8V6L22 5.99V5z"/>|
    )
  end

  @doc """
  Renders the `barcode_reader` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.barcode_reader />
  <Boxicons.barcode_reader class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def barcode_reader(assigns) do
    svg(
      assigns,
      ~S|<path d="M5 7h2v10H5zm9 0h1v10h-1zm-4 0h3v10h-3zM8 7h1v10H8zm8 0h3v10h-3z"/><path d="M4 5h4V3H4c-1.103 0-2 .897-2 2v4h2V5zm0 16h4v-2H4v-4H2v4c0 1.103.897 2 2 2zM20 3h-4v2h4v4h2V5c0-1.103-.897-2-2-2zm0 16h-4v2h4c1.103 0 2-.897 2-2v-4h-2v4z"/>|
    )
  end

  @doc """
  Renders the `arrow_back` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.arrow_back />
  <Boxicons.arrow_back class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def arrow_back(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 11H6.414l5.293-5.293-1.414-1.414L2.586 12l7.707 7.707 1.414-1.414L6.414 13H21z"/>|
    )
  end

  @doc """
  Renders the `git_pull_request` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.git_pull_request />
  <Boxicons.git_pull_request class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def git_pull_request(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.01 15.163V7.997C19.005 6.391 17.933 4 15 4V2l-4 3 4 3V6c1.829 0 2.001 1.539 2.01 2v7.163c-1.44.434-2.5 1.757-2.5 3.337 0 1.93 1.57 3.5 3.5 3.5s3.5-1.57 3.5-3.5c0-1.58-1.06-2.903-2.5-3.337zm-1 4.837c-.827 0-1.5-.673-1.5-1.5s.673-1.5 1.5-1.5 1.5.673 1.5 1.5-.673 1.5-1.5 1.5zM9.5 5.5C9.5 3.57 7.93 2 6 2S2.5 3.57 2.5 5.5c0 1.58 1.06 2.903 2.5 3.337v6.326c-1.44.434-2.5 1.757-2.5 3.337C2.5 20.43 4.07 22 6 22s3.5-1.57 3.5-3.5c0-1.58-1.06-2.903-2.5-3.337V8.837C8.44 8.403 9.5 7.08 9.5 5.5zm-5 0C4.5 4.673 5.173 4 6 4s1.5.673 1.5 1.5S6.827 7 6 7s-1.5-.673-1.5-1.5zm3 13c0 .827-.673 1.5-1.5 1.5s-1.5-.673-1.5-1.5S5.173 17 6 17s1.5.673 1.5 1.5z"/>|
    )
  end

  @doc """
  Renders the `left_indent` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.left_indent />
  <Boxicons.left_indent class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def left_indent(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 7h10v2H4zm0-4h16v2H4zm0 8h10v2H4zm0 4h10v2H4zm0 4h16v2H4zm16-3V8l-4 4z"/>|
    )
  end

  @doc """
  Renders the `candles` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.candles />
  <Boxicons.candles class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def candles(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 19h1v3h2v-3h1a1 1 0 0 0 1-1V6a1 1 0 0 0-1-1H9V2H7v3H6a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1zM7 7h2v10H7zm7 10h1v3h2v-3h1a1 1 0 0 0 1-1V8a1 1 0 0 0-1-1h-1V4h-2v3h-1a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1zm1-8h2v6h-2z"/>|
    )
  end

  @doc """
  Renders the `school` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.school />
  <Boxicons.school class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def school(assigns) do
    svg(
      assigns,
      ~S|<path d="M21 10h-2V4h1V2H4v2h1v6H3a1 1 0 0 0-1 1v9h20v-9a1 1 0 0 0-1-1zm-7 8v-4h-4v4H7V4h10v14h-3z"/><path d="M9 6h2v2H9zm4 0h2v2h-2zm-4 4h2v2H9zm4 0h2v2h-2z"/>|
    )
  end

  @doc """
  Renders the `piano` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.piano />
  <Boxicons.piano class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def piano(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 3H5C3.346 3 2 4.346 2 6v12c0 1.654 1.346 3 3 3h14c1.654 0 3-1.346 3-3V6c0-1.654-1.346-3-3-3zm0 16H5a1 1 0 0 1-1-1v-6h2v4h2v-4h1v4h2v-4h1v4h2v-4h2v4h2v-4h2v6a1 1 0 0 1-1 1z"/>|
    )
  end

  @doc """
  Renders the `widget` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.widget />
  <Boxicons.widget class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def widget(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 11h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1zm0 10h6a1 1 0 0 0 1-1v-6a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1zm10 0h6a1 1 0 0 0 1-1v-6a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1zm7.293-14.707-3.586-3.586a.999.999 0 0 0-1.414 0l-3.586 3.586a.999.999 0 0 0 0 1.414l3.586 3.586a.999.999 0 0 0 1.414 0l3.586-3.586a.999.999 0 0 0 0-1.414z"/>|
    )
  end

  @doc """
  Renders the `pear` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.pear />
  <Boxicons.pear class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def pear(assigns) do
    svg(
      assigns,
      ~S|<path d="M10.12 22a7.71 7.71 0 0 0 6.57-5 7.23 7.23 0 0 0 .46-3.21 3.26 3.26 0 0 1 1-2.57l.61-.61A3.89 3.89 0 0 0 19.43 6l2.28-2.28-1.42-1.43L18 4.55a3.82 3.82 0 0 0-4.66.57l-.75.75a3.22 3.22 0 0 1-2.52 1 7.05 7.05 0 0 0-3.32.57A7.75 7.75 0 0 0 2 14.11 7.59 7.59 0 0 0 10.12 22zM9.5 9.25v1.5a3.75 3.75 0 0 0-3.75 3.75h-1.5A5.26 5.26 0 0 1 9.5 9.25z"/>|
    )
  end

  @doc """
  Renders the `crosshair` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.crosshair />
  <Boxicons.crosshair class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def crosshair(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm1 17.931V17h-2v2.931A8.008 8.008 0 0 1 4.069 13H7v-2H4.069A8.008 8.008 0 0 1 11 4.069V7h2V4.069A8.007 8.007 0 0 1 19.931 11H17v2h2.931A8.008 8.008 0 0 1 13 19.931z"/>|
    )
  end

  @doc """
  Renders the `vertical_top` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.vertical_top />
  <Boxicons.vertical_top class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def vertical_top(assigns) do
    svg(
      assigns,
      ~S|<path d="m12 7-4 4h3v8h2v-8h3l-4-4zM3 3h3v2H3zM8 3h3v2H8zM13 3h3v2h-3zM18 3h3v2h-3z"/>|
    )
  end

  @doc """
  Renders the `minus_back` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.minus_back />
  <Boxicons.minus_back class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def minus_back(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 3H5c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2h3v3c0 1.103.897 2 2 2h9c1.103 0 2-.897 2-2v-9c0-1.103-.897-2-2-2h-3V5c0-1.103-.897-2-2-2zM5 5h9l-.003 9H5V5z"/>|
    )
  end

  @doc """
  Renders the `eyedropper` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.eyedropper />
  <Boxicons.eyedropper class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def eyedropper(assigns) do
    svg(
      assigns,
      ~S|<path d="m4 15.76-1 4A1 1 0 0 0 3.75 21a1 1 0 0 0 .49 0l4-1a1 1 0 0 0 .47-.26L17 11.41l1.29 1.3 1.42-1.42-1.3-1.29L21 7.41a2 2 0 0 0 0-2.82L19.41 3a2 2 0 0 0-2.82 0L14 5.59l-1.3-1.3-1.42 1.42L12.58 7l-8.29 8.29a1 1 0 0 0-.29.47zm1.87.75L14 8.42 15.58 10l-8.09 8.1-2.12.53z"/>|
    )
  end

  @doc """
  Renders the `refresh` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.refresh />
  <Boxicons.refresh class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def refresh(assigns) do
    svg(
      assigns,
      ~S|<path d="M10 11H7.101l.001-.009a4.956 4.956 0 0 1 .752-1.787 5.054 5.054 0 0 1 2.2-1.811c.302-.128.617-.226.938-.291a5.078 5.078 0 0 1 2.018 0 4.978 4.978 0 0 1 2.525 1.361l1.416-1.412a7.036 7.036 0 0 0-2.224-1.501 6.921 6.921 0 0 0-1.315-.408 7.079 7.079 0 0 0-2.819 0 6.94 6.94 0 0 0-1.316.409 7.04 7.04 0 0 0-3.08 2.534 6.978 6.978 0 0 0-1.054 2.505c-.028.135-.043.273-.063.41H2l4 4 4-4zm4 2h2.899l-.001.008a4.976 4.976 0 0 1-2.103 3.138 4.943 4.943 0 0 1-1.787.752 5.073 5.073 0 0 1-2.017 0 4.956 4.956 0 0 1-1.787-.752 5.072 5.072 0 0 1-.74-.61L7.05 16.95a7.032 7.032 0 0 0 2.225 1.5c.424.18.867.317 1.315.408a7.07 7.07 0 0 0 2.818 0 7.031 7.031 0 0 0 4.395-2.945 6.974 6.974 0 0 0 1.053-2.503c.027-.135.043-.273.063-.41H22l-4-4-4 4z"/>|
    )
  end

  @doc """
  Renders the `scan` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.scan />
  <Boxicons.scan class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def scan(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 4v5h2V5h4V3H4a1 1 0 0 0-1 1zm18 5V4a1 1 0 0 0-1-1h-5v2h4v4h2zm-2 10h-4v2h5a1 1 0 0 0 1-1v-5h-2v4zM9 21v-2H5v-4H3v5a1 1 0 0 0 1 1h5zM2 11h20v2H2z"/>|
    )
  end

  @doc """
  Renders the `down_arrow_square` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.down_arrow_square />
  <Boxicons.down_arrow_square class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def down_arrow_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 21a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14zm-8-9V7h2v5h4l-5 5-5-5h4z"/>|
    )
  end

  @doc """
  Renders the `history` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.history />
  <Boxicons.history class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def history(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 8v5h5v-2h-3V8z"/><path d="M21.292 8.497a8.957 8.957 0 0 0-1.928-2.862 9.004 9.004 0 0 0-4.55-2.452 9.09 9.09 0 0 0-3.626 0 8.965 8.965 0 0 0-4.552 2.453 9.048 9.048 0 0 0-1.928 2.86A8.963 8.963 0 0 0 4 12l.001.025H2L5 16l3-3.975H6.001L6 12a6.957 6.957 0 0 1 1.195-3.913 7.066 7.066 0 0 1 1.891-1.892 7.034 7.034 0 0 1 2.503-1.054 7.003 7.003 0 0 1 8.269 5.445 7.117 7.117 0 0 1 0 2.824 6.936 6.936 0 0 1-1.054 2.503c-.25.371-.537.72-.854 1.036a7.058 7.058 0 0 1-2.225 1.501 6.98 6.98 0 0 1-1.313.408 7.117 7.117 0 0 1-2.823 0 6.957 6.957 0 0 1-2.501-1.053 7.066 7.066 0 0 1-1.037-.855l-1.414 1.414A8.985 8.985 0 0 0 13 21a9.05 9.05 0 0 0 3.503-.707 9.009 9.009 0 0 0 3.959-3.26A8.968 8.968 0 0 0 22 12a8.928 8.928 0 0 0-.708-3.503z"/>|
    )
  end

  @doc """
  Renders the `tree_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.tree_alt />
  <Boxicons.tree_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def tree_alt(assigns) do
    svg(assigns, ~S|<path d="m18 10-6-8-6 8h3l-5 8h7v4h2v-4h7l-5-8h3z"/>|)
  end

  @doc """
  Renders the `hot` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hot />
  <Boxicons.hot class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def hot(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.5 8c0 1.5-.5 3.5-2.9 4.3.7-1.7.8-3.4.3-5-.7-2.1-3-3.7-4.6-4.6-.4-.3-1.1.1-1 .7 0 1.1-.3 2.7-2 4.4C4.1 10 3 12.3 3 14.5 3 17.4 5 21 9 21c-4-4-1-7.5-1-7.5.8 5.9 5 7.5 7 7.5 1.7 0 5-1.2 5-6.4 0-3.1-1.3-5.5-2.4-6.9-.3-.5-1-.2-1.1.3"/>|
    )
  end

  @doc """
  Renders the `cycling` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cycling />
  <Boxicons.cycling class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def cycling(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 15.414V20h2v-4.586c0-.526-.214-1.042-.586-1.414l-2-2L13 9.414l2 2c.372.372.888.586 1.414.586H20v-2h-3.586l-3.707-3.707a.999.999 0 0 0-1.414 0L8 9.586c-.378.378-.586.88-.586 1.414s.208 1.036.586 1.414l3 3z"/><path d="M18 14c-2.206 0-4 1.794-4 4s1.794 4 4 4 4-1.794 4-4-1.794-4-4-4zm0 6c-1.103 0-2-.897-2-2s.897-2 2-2 2 .897 2 2-.897 2-2 2zM6 22c2.206 0 4-1.794 4-4s-1.794-4-4-4-4 1.794-4 4 1.794 4 4 4zm0-6c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2z"/>|
    )
  end

  @doc """
  Renders the `border_none` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.border_none />
  <Boxicons.border_none class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def border_none(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 19h2v2h-2zm-8 0h2v2h-2zm4 0h2v2h-2zm-8 0h2v2H7zm-4 0h2v2H3zM3 7h2v2H3zm0 8h2v2H3zm0-4h2v2H3zm0-8h2v2H3zm4 0h2v2H7zm4 0h2v2h-2zm4 0h2v2h-2zm4 0h2v2h-2zm0 4h2v2h-2zm0 4h2v2h-2zm0 4h2v2h-2zm-8-8h2v2h-2zm0 8h2v2h-2zm-4-4h2v2H7zm8 0h2v2h-2zm-4 0h2v2h-2z"/>|
    )
  end

  @doc """
  Renders the `command` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.command />
  <Boxicons.command class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def command(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 14c-2.206 0-4 1.794-4 4s1.794 4 4 4a4.003 4.003 0 0 0 3.998-3.98H10V16h4v2.039h.004A4.002 4.002 0 0 0 18 22c2.206 0 4-1.794 4-4s-1.794-4-4-4h-2v-4h2c2.206 0 4-1.794 4-4s-1.794-4-4-4-4 1.794-4 4v2h-4V5.98h-.002A4.003 4.003 0 0 0 6 2C3.794 2 2 3.794 2 6s1.794 4 4 4h2v4H6zm2 4c0 1.122-.879 2-2 2s-2-.878-2-2 .879-2 2-2h2v2zm10-2c1.121 0 2 .878 2 2s-.879 2-2 2-2-.878-2-2v-2h2zM16 6c0-1.122.879-2 2-2s2 .878 2 2-.879 2-2 2h-2V6zM6 8c-1.121 0-2-.878-2-2s.879-2 2-2 2 .878 2 2v2H6zm4 2h4v4h-4v-4z"/>|
    )
  end

  @doc """
  Renders the `question_mark` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.question_mark />
  <Boxicons.question_mark class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def question_mark(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 4C9.243 4 7 6.243 7 9h2c0-1.654 1.346-3 3-3s3 1.346 3 3c0 1.069-.454 1.465-1.481 2.255-.382.294-.813.626-1.226 1.038C10.981 13.604 10.995 14.897 11 15v2h2v-2.009c0-.024.023-.601.707-1.284.32-.32.682-.598 1.031-.867C15.798 12.024 17 11.1 17 9c0-2.757-2.243-5-5-5zm-1 14h2v2h-2z"/>|
    )
  end

  @doc """
  Renders the `hand` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hand />
  <Boxicons.hand class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def hand(assigns) do
    svg(
      assigns,
      ~S|<path d="M20.5 5A1.5 1.5 0 0 0 19 6.5V11h-1V4.5a1.5 1.5 0 0 0-3 0V11h-1V3.5a1.5 1.5 0 0 0-3 0V11h-1V5.5a1.5 1.5 0 0 0-3 0v10.81l-2.22-3.6a1.5 1.5 0 0 0-2.56 1.58l3.31 5.34A5 5 0 0 0 9.78 22H17a5 5 0 0 0 5-5V6.5A1.5 1.5 0 0 0 20.5 5z"/>|
    )
  end

  @doc """
  Renders the `cloud_light_rain` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.cloud_light_rain />
  <Boxicons.cloud_light_rain class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def cloud_light_rain(assigns) do
    svg(
      assigns,
      ~S|<path d="M8 13h2v4H8zm0 5h2v2H8zm3-3h2v4h-2zm0 5h2v2h-2zm3-7h2v4h-2zm0 5h2v2h-2z"/><path d="M18.944 10.112C18.507 6.67 15.56 4 12 4 9.244 4 6.85 5.611 5.757 8.15 3.609 8.792 2 10.819 2 13c0 2.757 2.243 5 5 5v-2c-1.654 0-3-1.346-3-3 0-1.403 1.199-2.756 2.673-3.015l.581-.103.192-.559C8.149 7.273 9.895 6 12 6c2.757 0 5 2.243 5 5v1h1c1.103 0 2 .897 2 2s-.897 2-2 2h-1v2h1c2.206 0 4-1.794 4-4a4.008 4.008 0 0 0-3.056-3.888z"/>|
    )
  end

  @doc """
  Renders the `scatter_chart` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.scatter_chart />
  <Boxicons.scatter_chart class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def scatter_chart(assigns) do
    svg(assigns, ~S|<path d="M4 21h17v-2H5V3H3v17a1 1 0 0 0 1 1z"/>|)
  end

  @doc """
  Renders the `file_import` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_import />
  <Boxicons.file_import class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_import(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 14V8l-6-6H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-4h-7v3l-5-4 5-4v3h7zM13 4l5 5h-5V4z"/>|
    )
  end

  @doc """
  Renders the `knife` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.knife />
  <Boxicons.knife class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def knife(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.66 3.6a3 3 0 0 0-4.24 0l-.71.71-7.07 7.07 2.12 2.12-6.36 6.36 1.41 1.42L19.66 6.43c1.1-1.1 1.1-1.73.71-2.12z"/>|
    )
  end

  @doc """
  Renders the `reflect_horizontal` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.reflect_horizontal />
  <Boxicons.reflect_horizontal class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def reflect_horizontal(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 21h12l-6-6-6 6zM18 3H6l6 6 6-6zM3 11h3v2H3zm5 0h3v2H8zm5 0h3v2h-3zm5 0h3v2h-3z"/>|
    )
  end

  @doc """
  Renders the `torch` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.torch />
  <Boxicons.torch class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def torch(assigns) do
    svg(
      assigns,
      ~S|<path d="M8 11.648V20a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2v-8.352c1.067-.552 3-1.928 3-4.648V5H5v2c0 2.72 1.933 4.096 3 4.648zM11 11h2v3h-2v-3zM5 2h14v2H5z"/>|
    )
  end

  @doc """
  Renders the `right_indent` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.right_indent />
  <Boxicons.right_indent class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def right_indent(assigns) do
    svg(
      assigns,
      ~S|<path d="M10 15h10v2H10zm-6 4h16v2H4zm6-8h10v2H10zm0-4h10v2H10zM4 3h16v2H4zm0 5v8l4-4z"/>|
    )
  end

  @doc """
  Renders the `backpack` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.backpack />
  <Boxicons.backpack class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def backpack(assigns) do
    svg(
      assigns,
      ~S|<path d="M16 15a1 1 0 0 0-1-1H9c-.551 0-1 .448-1 1v2h8v-2zm-8 4h8v3H8z"/><path d="M21 12c0-2.967-2.167-5.432-5-5.91V5c0-1.654-1.346-3-3-3h-2C9.346 2 8 3.346 8 5v1.09C5.167 6.568 3 9.033 3 12v8c0 1.103.897 2 2 2h1v-7c0-1.654 1.346-3 3-3h6c1.654 0 3 1.346 3 3v7h1c1.103 0 2-.897 2-2v-8zM10 5c0-.552.449-1 1-1h2a1 1 0 0 1 1 1v1h-4V5z"/>|
    )
  end

  @doc """
  Renders the `headphone` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.headphone />
  <Boxicons.headphone class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def headphone(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 12v-1.707c0-4.442-3.479-8.161-7.755-8.29-2.204-.051-4.251.736-5.816 2.256A7.933 7.933 0 0 0 4 10v2c-1.103 0-2 .897-2 2v4c0 1.103.897 2 2 2h2V10a5.95 5.95 0 0 1 1.821-4.306 5.977 5.977 0 0 1 4.363-1.691C15.392 4.099 18 6.921 18 10.293V20h2c1.103 0 2-.897 2-2v-4c0-1.103-.897-2-2-2z"/><path d="M7 12h2v8H7zm8 0h2v8h-2z"/>|
    )
  end

  @doc """
  Renders the `tree` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.tree />
  <Boxicons.tree class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def tree(assigns) do
    svg(assigns, ~S|<path d="m20 18-4-5h3l-4-5h2l-5-6-5 6h2l-4 5h3l-4 5h7v4h2v-4z"/>|)
  end

  @doc """
  Renders the `report` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.report />
  <Boxicons.report class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def report(assigns) do
    svg(
      assigns,
      ~S|<path d="m20 8-6-6H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8zM9 19H7v-9h2v9zm4 0h-2v-6h2v6zm4 0h-2v-3h2v3zM14 9h-1V4l5 5h-4z"/>|
    )
  end

  @doc """
  Renders the `border_bottom` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.border_bottom />
  <Boxicons.border_bottom class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def border_bottom(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 7h2v2H3zm0 4h2v2H3zm0 4h2v2H3zM3 3h2v2H3zm8 0h2v2h-2zM7 3h2v2H7zm8 0h2v2h-2zm4 0h2v2h-2zm0 12h2v2h-2zm0-4h2v2h-2zm0-4h2v2h-2zm-4 4h2v2h-2zm-8 0h2v2H7zm4-4h2v2h-2zm0 8h2v2h-2zm0-4h2v2h-2zm6 8H3v2h18v-2h-2z"/>|
    )
  end

  @doc """
  Renders the `font_size` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.font_size />
  <Boxicons.font_size class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def font_size(assigns) do
    svg(
      assigns,
      ~S|<path d="m22 6-3-4-3 4h2v4h-2l3 4 3-4h-2V6zM9.307 4l-6 16h2.137l1.875-5h6.363l1.875 5h2.137l-6-16H9.307zm-1.239 9L10.5 6.515 12.932 13H8.068z"/>|
    )
  end

  @doc """
  Renders the `abacus` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.abacus />
  <Boxicons.abacus class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def abacus(assigns) do
    svg(
      assigns,
      ~S|<path d="M2 3h2v18H2zm18 0h2v18h-2zM5 13h2v1h2v-1h2v1h2v-1h4v1h2v-4h-2v1h-4v-1h-2v1H9v-1H7v1H5zm0-9v4h2V7h8v1h2V7h2V5h-2V4h-2v1H7V4zm0 13v3h2v-1h2v1h2v-1h8v-2h-8v-1H9v1H7v-1H5z"/>|
    )
  end

  @doc """
  Renders the `heading` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.heading />
  <Boxicons.heading class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def heading(assigns) do
    svg(assigns, ~S|<path d="M18 20V4h-3v6H9V4H6v16h3v-7h6v7z"/>|)
  end

  @doc """
  Renders the `sort_alt_2` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sort_alt_2 />
  <Boxicons.sort_alt_2 class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def sort_alt_2(assigns) do
    svg(assigns, ~S|<path d="M7 20h2V8h3L8 4 4 8h3zm13-4h-3V4h-2v12h-3l4 4z"/>|)
  end

  @doc """
  Renders the `magic_wand` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.magic_wand />
  <Boxicons.magic_wand class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def magic_wand(assigns) do
    svg(
      assigns,
      ~S|<path d="m11 4-.5-1-.5 1-1 .125.834.708L9.5 6l1-.666 1 .666-.334-1.167.834-.708zm8.334 10.666L18.5 13l-.834 1.666-1.666.209 1.389 1.181L16.834 18l1.666-1.111L20.166 18l-.555-1.944L21 14.875zM6.667 6.333 6 5l-.667 1.333L4 6.5l1.111.944L4.667 9 6 8.111 7.333 9l-.444-1.556L8 6.5zM3.414 17c0 .534.208 1.036.586 1.414L5.586 20c.378.378.88.586 1.414.586s1.036-.208 1.414-.586L20 8.414c.378-.378.586-.88.586-1.414S20.378 5.964 20 5.586L18.414 4c-.756-.756-2.072-.756-2.828 0L4 15.586c-.378.378-.586.88-.586 1.414zM17 5.414 18.586 7 15 10.586 13.414 9 17 5.414z"/>|
    )
  end

  @doc """
  Renders the `horizontal_right` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.horizontal_right />
  <Boxicons.horizontal_right class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def horizontal_right(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 11H5v2h8v3l4-4-4-4v3zM19 3h2v3h-2zM19 8h2v3h-2zM19 13h2v3h-2zM19 18h2v3h-2z"/>|
    )
  end

  @doc """
  Renders the `user_badge` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.user_badge />
  <Boxicons.user_badge class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def user_badge(assigns) do
    svg(
      assigns,
      ~S|<path d="M17.988 22a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h11.988zM9 5h6v2H9V5zm5.25 6.25A2.26 2.26 0 0 1 12 13.501c-1.235 0-2.25-1.015-2.25-2.251S10.765 9 12 9a2.259 2.259 0 0 1 2.25 2.25zM7.5 18.188c0-1.664 2.028-3.375 4.5-3.375s4.5 1.711 4.5 3.375v.563h-9v-.563z"/>|
    )
  end

  @doc """
  Renders the `dots_vertical_rounded` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dots_vertical_rounded />
  <Boxicons.dots_vertical_rounded class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def dots_vertical_rounded(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0-6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 12c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `sitemap` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.sitemap />
  <Boxicons.sitemap class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def sitemap(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 13.01h-7V10h1c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2h-4c-1.103 0-2 .897-2 2v4c0 1.103.897 2 2 2h1v3.01H4V18H3v4h4v-4H6v-2.99h5V18h-1v4h4v-4h-1v-2.99h5V18h-1v4h4v-4h-1v-4.99zM10 8V4h4l.002 4H10z"/>|
    )
  end

  @doc """
  Renders the `block` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.block />
  <Boxicons.block class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def block(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zM4 12c0-1.846.634-3.542 1.688-4.897l11.209 11.209A7.946 7.946 0 0 1 12 20c-4.411 0-8-3.589-8-8zm14.312 4.897L7.103 5.688A7.948 7.948 0 0 1 12 4c4.411 0 8 3.589 8 8a7.954 7.954 0 0 1-1.688 4.897z"/>|
    )
  end

  @doc """
  Renders the `caret_right` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.caret_right />
  <Boxicons.caret_right class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def caret_right(assigns) do
    svg(assigns, ~S|<path d="m9 19 8-7-8-7z"/>|)
  end

  @doc """
  Renders the `loader_circle` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.loader_circle />
  <Boxicons.loader_circle class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def loader_circle(assigns) do
    svg(assigns, ~S||)
  end

  @doc """
  Renders the `radar` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.radar />
  <Boxicons.radar class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def radar(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.579 2 2 6.58 2 12s4.579 10 10 10 10-4.58 10-10S17.421 2 12 2zm0 18c-4.337 0-8-3.664-8-8 0-3.998 3.115-7.417 7-7.927V6.09C8.167 6.569 6 9.033 6 12c0 3.309 2.691 6 6 6 1.595 0 3.1-.626 4.237-1.763l-1.414-1.415A3.97 3.97 0 0 1 12 16c-2.206 0-4-1.794-4-4 0-1.858 1.279-3.411 3-3.858v2.146c-.59.353-1 .993-1 1.712 0 1.081.919 2 2 2s2-.919 2-2c0-.719-.41-1.359-1-1.712V4.073c3.885.51 7 3.929 7 7.927 0 4.336-3.663 8-8 8z"/>|
    )
  end

  @doc """
  Renders the `bar_chart` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bar_chart />
  <Boxicons.bar_chart class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def bar_chart(assigns) do
    svg(assigns, ~S|<path d="M9 6h2v14H9zm4 2h2v12h-2zm4-4h2v16h-2zM5 12h2v8H5z"/>|)
  end

  @doc """
  Renders the `plus_medical` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.plus_medical />
  <Boxicons.plus_medical class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def plus_medical(assigns) do
    svg(assigns, ~S|<path d="M15 2.013H9V9H2v6h7v6.987h6V15h7V9h-7z"/>|)
  end

  @doc """
  Renders the `playlist` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.playlist />
  <Boxicons.playlist class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def playlist(assigns) do
    svg(
      assigns,
      ~S|<path d="M13 16.493C13 18.427 14.573 20 16.507 20s3.507-1.573 3.507-3.507c0-.177-.027-.347-.053-.517H20V6h2V4h-3a1 1 0 0 0-1 1v8.333a3.465 3.465 0 0 0-1.493-.346A3.51 3.51 0 0 0 13 16.493zM2 5h14v2H2z"/><path d="M2 9h14v2H2zm0 4h9v2H2zm0 4h9v2H2z"/>|
    )
  end

  @doc """
  Renders the `ev_station` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.ev_station />
  <Boxicons.ev_station class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def ev_station(assigns) do
    svg(
      assigns,
      ~S|<path d="m19.616 6.48.014-.017-4-3.24-1.26 1.554 2.067 1.674a2.99 2.99 0 0 0-1.394 3.062c.15.899.769 1.676 1.57 2.111.895.487 1.68.442 2.378.194L18.976 18a.996.996 0 0 1-1.39.922.995.995 0 0 1-.318-.217.996.996 0 0 1-.291-.705L17 16a2.98 2.98 0 0 0-.877-2.119A3 3 0 0 0 14 13h-1V5a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h7a2 2 0 0 0 2-2v-4h1c.136 0 .267.027.391.078a1.028 1.028 0 0 1 .531.533A.994.994 0 0 1 15 16l-.024 2c0 .406.079.799.236 1.168.151.359.368.68.641.951a2.97 2.97 0 0 0 2.123.881c.406 0 .798-.078 1.168-.236.358-.15.68-.367.951-.641A2.983 2.983 0 0 0 20.976 18L21 9a2.997 2.997 0 0 0-1.384-2.52zM6 18l1-5H4l5-7-1 5h3l-5 7zm12-8a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>|
    )
  end

  @doc """
  Renders the `male` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.male />
  <Boxicons.male class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def male(assigns) do
    svg(assigns, ~S|<path d="M15 7H9a1 1 0 0 0-1 1v7h2v7h4v-7h2V8a1 1 0 0 0-1-1z"/>|)
  end

  @doc """
  Renders the `reply` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.reply />
  <Boxicons.reply class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def reply(assigns) do
    svg(assigns, ~S|<path d="M10 11h6v7h2v-8a1 1 0 0 0-1-1h-7V6l-5 4 5 4v-3z"/>|)
  end

  @doc """
  Renders the `stop_circle` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.stop_circle />
  <Boxicons.stop_circle class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def stop_circle(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M9 9h6v6H9z"/>|
    )
  end

  @doc """
  Renders the `import` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.import />
  <Boxicons.import class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def import(assigns) do
    svg(
      assigns,
      ~S|<path d="m12 18 4-5h-3V2h-2v11H8z"/><path d="M19 9h-4v2h4v9H5v-9h4V9H5c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2v-9c0-1.103-.897-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `table` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.table />
  <Boxicons.table class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def table(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 21h15.893c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2zm0-2v-5h4v5H4zM14 7v5h-4V7h4zM8 7v5H4V7h4zm2 12v-5h4v5h-4zm6 0v-5h3.894v5H16zm3.893-7H16V7h3.893v5z"/>|
    )
  end

  @doc """
  Renders the `reset` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.reset />
  <Boxicons.reset class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def reset(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 16c1.671 0 3-1.331 3-3s-1.329-3-3-3-3 1.331-3 3 1.329 3 3 3z"/><path d="M20.817 11.186a8.94 8.94 0 0 0-1.355-3.219 9.053 9.053 0 0 0-2.43-2.43 8.95 8.95 0 0 0-3.219-1.355 9.028 9.028 0 0 0-1.838-.18V2L8 5l3.975 3V6.002c.484-.002.968.044 1.435.14a6.961 6.961 0 0 1 2.502 1.053 7.005 7.005 0 0 1 1.892 1.892A6.967 6.967 0 0 1 19 13a7.032 7.032 0 0 1-.55 2.725 7.11 7.11 0 0 1-.644 1.188 7.2 7.2 0 0 1-.858 1.039 7.028 7.028 0 0 1-3.536 1.907 7.13 7.13 0 0 1-2.822 0 6.961 6.961 0 0 1-2.503-1.054 7.002 7.002 0 0 1-1.89-1.89A6.996 6.996 0 0 1 5 13H3a9.02 9.02 0 0 0 1.539 5.034 9.096 9.096 0 0 0 2.428 2.428A8.95 8.95 0 0 0 12 22a9.09 9.09 0 0 0 1.814-.183 9.014 9.014 0 0 0 3.218-1.355 8.886 8.886 0 0 0 1.331-1.099 9.228 9.228 0 0 0 1.1-1.332A8.952 8.952 0 0 0 21 13a9.09 9.09 0 0 0-.183-1.814z"/>|
    )
  end

  @doc """
  Renders the `hand_down` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.hand_down />
  <Boxicons.hand_down class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def hand_down(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.278 2.231a1.001 1.001 0 0 0-.64-.231H5a2 2 0 0 0-2 2v7.21a2 2 0 0 0 1.779 1.987L12 14v6a2 2 0 0 0 4 0V8l3.03 1.212a2.001 2.001 0 0 0 2.641-1.225l.113-.34a.998.998 0 0 0-.309-1.084l-5.197-4.332z"/>|
    )
  end

  @doc """
  Renders the `tab` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.tab />
  <Boxicons.tab class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def tab(assigns) do
    svg(
      assigns,
      ~S|<path d="M6 2c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H6zm0 15V5h12l.002 12H6z"/>|
    )
  end

  @doc """
  Renders the `dots_horizontal_rounded` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.dots_horizontal_rounded />
  <Boxicons.dots_horizontal_rounded class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def dots_horizontal_rounded(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm6 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zM6 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"/>|
    )
  end

  @doc """
  Renders the `shape_polygon` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.shape_polygon />
  <Boxicons.shape_polygon class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def shape_polygon(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 14.185v-2.369A2.997 2.997 0 0 0 22 9c0-1.654-1.346-3-3-3a2.99 2.99 0 0 0-2.116.876L12.969 5.31c.01-.103.031-.204.031-.31 0-1.654-1.346-3-3-3S7 3.346 7 5c0 .762.295 1.451.765 1.981L6.091 9.212A2.977 2.977 0 0 0 5 9c-1.654 0-3 1.346-3 3s1.346 3 3 3c.159 0 .313-.023.465-.047L7.4 17.532c-.248.436-.4.932-.4 1.468 0 1.654 1.346 3 3 3a2.994 2.994 0 0 0 2.863-2.153l3.962-.792A2.987 2.987 0 0 0 19 20c1.654 0 3-1.346 3-3a2.995 2.995 0 0 0-2-2.815zM19 8a1.001 1.001 0 1 1-1 1c0-.551.448-1 1-1zm-9-4a1.001 1.001 0 1 1-1 1c0-.551.448-1 1-1zm-6 8a1.001 1.001 0 1 1 1 1c-.552 0-1-.449-1-1zm6 8a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm2.761-2.172A3.005 3.005 0 0 0 10 16c-.386 0-.752.079-1.091.213l-1.674-2.231C7.705 13.451 8 12.762 8 12c0-.536-.152-1.032-.399-1.467l1.935-2.58c.152.024.305.047.464.047a2.99 2.99 0 0 0 2.116-.876l3.915 1.566c-.01.103-.031.204-.031.31 0 1.302.839 2.401 2 2.815v2.369a2.996 2.996 0 0 0-2 2.815c0 .061.015.117.018.177l-3.257.652zM19 18a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>|
    )
  end

  @doc """
  Renders the `binoculars` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.binoculars />
  <Boxicons.binoculars class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def binoculars(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.447 5.345A3.27 3.27 0 0 0 16.29 3a3.293 3.293 0 0 0-3.277 3h-2.025a3.297 3.297 0 0 0-3.284-3 3.268 3.268 0 0 0-3.151 2.345l-2.511 8.368A1.027 1.027 0 0 0 2 14v1a5.006 5.006 0 0 0 5.001 5 5.003 5.003 0 0 0 4.576-3h.846a5.003 5.003 0 0 0 4.576 3A5.006 5.006 0 0 0 22 14.999V14c0-.098-.015-.194-.042-.287l-2.511-8.368zM7.001 18A3.005 3.005 0 0 1 4 15c0-.076.017-.147.022-.222A2.995 2.995 0 0 1 7 12a3 3 0 0 1 3 3v.009A3.004 3.004 0 0 1 7.001 18zm9.998 0A3.004 3.004 0 0 1 14 15.009V15a3 3 0 0 1 6-.001A3.005 3.005 0 0 1 16.999 18z"/>|
    )
  end

  @doc """
  Renders the `align_right` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.align_right />
  <Boxicons.align_right class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def align_right(assigns) do
    svg(assigns, ~S|<path d="M4 19h16v2H4zm5-4h11v2H9zm-5-4h16v2H4zm0-8h16v2H4zm5 4h11v2H9z"/>|)
  end

  @doc """
  Renders the `revision` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.revision />
  <Boxicons.revision class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def revision(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.89 10.105a8.696 8.696 0 0 0-.789-1.456l-1.658 1.119a6.606 6.606 0 0 1 .987 2.345 6.659 6.659 0 0 1 0 2.648 6.495 6.495 0 0 1-.384 1.231 6.404 6.404 0 0 1-.603 1.112 6.654 6.654 0 0 1-1.776 1.775 6.606 6.606 0 0 1-2.343.987 6.734 6.734 0 0 1-2.646 0 6.55 6.55 0 0 1-3.317-1.788 6.605 6.605 0 0 1-1.408-2.088 6.613 6.613 0 0 1-.382-1.23 6.627 6.627 0 0 1 .382-3.877A6.551 6.551 0 0 1 7.36 8.797 6.628 6.628 0 0 1 9.446 7.39c.395-.167.81-.296 1.23-.382.107-.022.216-.032.324-.049V10l5-4-5-4v2.938a8.805 8.805 0 0 0-.725.111 8.512 8.512 0 0 0-3.063 1.29A8.566 8.566 0 0 0 4.11 16.77a8.535 8.535 0 0 0 1.835 2.724 8.614 8.614 0 0 0 2.721 1.833 8.55 8.55 0 0 0 5.061.499 8.576 8.576 0 0 0 6.162-5.056c.22-.52.389-1.061.5-1.608a8.643 8.643 0 0 0 0-3.45 8.684 8.684 0 0 0-.499-1.607z"/>|
    )
  end

  @doc """
  Renders the `handicap` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.handicap />
  <Boxicons.handicap class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def handicap(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.98 14.804A1 1 0 0 0 16 14h-4.133l-.429-3H16V9h-4.847l-.163-1.142A1 1 0 0 0 10 7H9a1.003 1.003 0 0 0-.99 1.142l.877 6.142A2.009 2.009 0 0 0 10.867 16h4.313l.839 4.196c.094.467.504.804.981.804h3v-2h-2.181l-.839-4.196z"/><path d="M12.51 17.5c-.739 1.476-2.25 2.5-4.01 2.5A4.505 4.505 0 0 1 4 15.5a4.503 4.503 0 0 1 2.817-4.167l-.289-2.025C3.905 10.145 2 12.604 2 15.5 2 19.084 4.916 22 8.5 22a6.497 6.497 0 0 0 5.545-3.126l-.274-1.374H12.51z"/>|
    )
  end

  @doc """
  Renders the `task_x` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.task_x />
  <Boxicons.task_x class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def task_x(assigns) do
    svg(
      assigns,
      ~S|<path d="M3 20c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2h-2a1 1 0 0 0-1-1H8a1 1 0 0 0-1 1H5c-1.103 0-2 .897-2 2v15zM5 5h2v2h10V5h2v15H5V5z"/><path d="M14.292 10.295 12 12.587l-2.292-2.292-1.414 1.414 2.292 2.292-2.292 2.292 1.414 1.414L12 15.415l2.292 2.292 1.414-1.414-2.292-2.292 2.292-2.292z"/>|
    )
  end

  @doc """
  Renders the `menu_alt_right` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.menu_alt_right />
  <Boxicons.menu_alt_right class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def menu_alt_right(assigns) do
    svg(assigns, ~S|<path d="M4 6h16v2H4zm4 5h12v2H8zm5 5h7v2h-7z"/>|)
  end

  @doc """
  Renders the `caret_up` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.caret_up />
  <Boxicons.caret_up class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def caret_up(assigns) do
    svg(assigns, ~S|<path d="M5 15h14l-7-8z"/>|)
  end

  @doc """
  Renders the `videos` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.videos />
  <Boxicons.videos class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def videos(assigns) do
    svg(
      assigns,
      ~S|<path d="M4 8H2v12a2 2 0 0 0 2 2h12v-2H4z"/><path d="M20 2H8a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2zm-9 12V6l7 4z"/>|
    )
  end

  @doc """
  Renders the `strikethrough` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.strikethrough />
  <Boxicons.strikethrough class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def strikethrough(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 11h-8c-4 0-4-1.816-4-2.5C8 7.882 8 6 12 6c2.8 0 2.99 1.678 3 2.014L16 8h1c0-1.384-1.045-4-5-4-5.416 0-6 3.147-6 4.5 0 .728.148 1.667.736 2.5H4v2h16v-2zm-8 7c-3.793 0-3.99-1.815-4-2H6c0 .04.069 4 6 4 5.221 0 6-2.819 6-4.5 0-.146-.009-.317-.028-.5h-2.006c.032.2.034.376.034.5 0 .684 0 2.5-4 2.5z"/>|
    )
  end

  @doc """
  Renders the `merge` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.merge />
  <Boxicons.merge class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def merge(assigns) do
    svg(
      assigns,
      ~S|<path d="M14 3H5a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2z"/><path d="M21 19v-9a2 2 0 0 0-2-2h-1v8a2 2 0 0 1-2 2H8v1a2 2 0 0 0 2 2h9a2 2 0 0 0 2-2z"/>|
    )
  end

  @doc """
  Renders the `export` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.export />
  <Boxicons.export class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def export(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 16h2V7h3l-4-5-4 5h3z"/><path d="M5 22h14c1.103 0 2-.897 2-2v-9c0-1.103-.897-2-2-2h-4v2h4v9H5v-9h4V9H5c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2z"/>|
    )
  end

  @doc """
  Renders the `expand_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.expand_alt />
  <Boxicons.expand_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def expand_alt(assigns) do
    svg(assigns, ~S|<path d="M5 12H3v9h9v-2H5zm7-7h7v7h2V3h-9z"/>|)
  end

  @doc """
  Renders the `plane_land` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.plane_land />
  <Boxicons.plane_land class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def plane_land(assigns) do
    svg(
      assigns,
      ~S|<path d="M18.842 15.296a1.61 1.61 0 0 0 1.892-1.189v-.001a1.609 1.609 0 0 0-1.177-1.949l-4.576-1.133L9.825 4.21l-2.224-.225 2.931 6.589-4.449-.449-2.312-3.829-1.38.31 1.24 5.52 15.211 3.17zM3 18h18v2H3z"/>|
    )
  end

  @doc """
  Renders the `laptop` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.laptop />
  <Boxicons.laptop class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def laptop(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 17.722c.595-.347 1-.985 1-1.722V5c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v11c0 .736.405 1.375 1 1.722V18H2v2h20v-2h-2v-.278zM5 16V5h14l.002 11H5z"/>|
    )
  end

  @doc """
  Renders the `health` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.health />
  <Boxicons.health class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def health(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.649 5.286 14 8.548V2.025h-4v6.523L4.351 5.286l-2 3.465 5.648 3.261-5.648 3.261 2 3.465L10 15.477V22h4v-6.523l5.649 3.261 2-3.465-5.648-3.261 5.648-3.261z"/>|
    )
  end

  @doc """
  Renders the `football` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.football />
  <Boxicons.football class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def football(assigns) do
    svg(
      assigns,
      ~S|<path d="M19.071 4.929a9.936 9.936 0 0 0-7.07-2.938 9.943 9.943 0 0 0-7.072 2.938c-3.899 3.898-3.899 10.243 0 14.142a9.94 9.94 0 0 0 7.073 2.938 9.936 9.936 0 0 0 7.07-2.937c3.899-3.898 3.899-10.243-.001-14.143zM12.181 4h-.359c.061-.001.119-.009.18-.009s.118.008.179.009zm6.062 13H16l-1.258 2.516a7.956 7.956 0 0 1-2.741.493 7.96 7.96 0 0 1-2.746-.494L8 17.01H5.765a7.96 7.96 0 0 1-1.623-3.532L6 11 4.784 8.567a7.936 7.936 0 0 1 1.559-2.224 7.994 7.994 0 0 1 3.22-1.969L12 6l2.438-1.625a8.01 8.01 0 0 1 3.22 1.968 7.94 7.94 0 0 1 1.558 2.221L18 11l1.858 2.478A7.952 7.952 0 0 1 18.243 17z"/><path d="m8.5 11 1.5 4h4l1.5-4L12 8.5z"/>|
    )
  end

  @doc """
  Renders the `file_json` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.file_json />
  <Boxicons.file_json class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def file_json(assigns) do
    svg(
      assigns,
      ~S|<path d="M12.823 15.122c-.517 0-.816.491-.816 1.146 0 .661.311 1.126.82 1.126.517 0 .812-.49.812-1.146 0-.604-.291-1.126-.816-1.126z"/><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zM8.022 16.704c0 .961-.461 1.296-1.2 1.296-.176 0-.406-.029-.557-.08l.086-.615c.104.035.239.06.391.06.319 0 .52-.145.52-.67v-2.122h.761v2.131zm1.459 1.291c-.385 0-.766-.1-.955-.205l.155-.631c.204.105.521.211.846.211.35 0 .534-.146.534-.365 0-.211-.159-.331-.564-.476-.562-.195-.927-.506-.927-.996 0-.576.481-1.017 1.277-1.017.38 0 .659.08.861.171l-.172.615c-.135-.065-.375-.16-.705-.16s-.491.15-.491.325c0 .215.19.311.627.476.596.22.876.53.876 1.006.001.566-.436 1.046-1.362 1.046zm3.306.005c-1.001 0-1.586-.755-1.586-1.716 0-1.012.646-1.768 1.642-1.768 1.035 0 1.601.776 1.601 1.707C14.443 17.33 13.773 18 12.787 18zm4.947-.055h-.802l-.721-1.302a12.64 12.64 0 0 1-.585-1.19l-.016.005c.021.445.031.921.031 1.472v1.016h-.701v-3.373h.891l.701 1.236c.2.354.4.775.552 1.155h.014c-.05-.445-.065-.9-.065-1.406v-.985h.702v3.372zM14 9h-1V4l5 5h-4z"/>|
    )
  end

  @doc """
  Renders the `wifi_0` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.wifi_0 />
  <Boxicons.wifi_0 class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def wifi_0(assigns) do
    svg(assigns, ~S||)
  end

  @doc """
  Renders the `fingerprint` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.fingerprint />
  <Boxicons.fingerprint class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def fingerprint(assigns) do
    svg(
      assigns,
      ~S|<path d="M5.962 17.674C7 19.331 7 20.567 7 22h2c0-1.521 0-3.244-1.343-5.389l-1.695 1.063zM16.504 3.387C13.977 1.91 7.55.926 4.281 4.305c-3.368 3.481-2.249 9.072.001 11.392.118.122.244.229.369.333.072.061.146.116.205.184l1.494-1.33a3.918 3.918 0 0 0-.419-.391c-.072-.06-.146-.119-.214-.188-1.66-1.711-2.506-6.017.001-8.608 2.525-2.611 8.068-1.579 9.777-.581 2.691 1.569 4.097 4.308 4.109 4.333l1.789-.895c-.065-.135-1.668-3.289-4.889-5.167z"/><path d="M9.34 12.822c-1.03-1.26-1.787-2.317-1.392-3.506.263-.785.813-1.325 1.637-1.604 1.224-.41 2.92-.16 4.04.601l1.123-1.654c-1.648-1.12-3.982-1.457-5.804-.841-1.408.476-2.435 1.495-2.892 2.866-.776 2.328.799 4.254 1.74 5.405.149.183.29.354.409.512C11 18.323 11 20.109 11 22h2c0-2.036 0-4.345-3.201-8.601a19.71 19.71 0 0 0-.459-.577zm5.791-3.344c1.835 1.764 3.034 4.447 3.889 8.701l1.961-.395c-.939-4.678-2.316-7.685-4.463-9.748l-1.387 1.442z"/><path d="m11.556 9.169-1.115 1.66c.027.019 2.711 1.88 3.801 5.724l1.924-.545c-1.299-4.582-4.476-6.749-4.61-6.839zm3.132 9.29c.21 1.168.312 2.326.312 3.541h2c0-1.335-.112-2.608-.343-3.895l-1.969.354z"/>|
    )
  end

  @doc """
  Renders the `watch_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.watch_alt />
  <Boxicons.watch_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def watch_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M18 8c0-.909-.613-1.67-1.445-1.912l-1.31-3.443A1 1 0 0 0 14.311 2H8.689a1 1 0 0 0-.934.645l-1.31 3.443A1.996 1.996 0 0 0 5 8v8c0 .909.613 1.67 1.445 1.912l1.31 3.443a1 1 0 0 0 .934.645h5.621c.415 0 .787-.257.935-.645l1.31-3.443A1.996 1.996 0 0 0 18 16v-2h1v-4h-1V8zm-1.998 8H7V8h9l.002 8z"/>|
    )
  end

  @doc """
  Renders the `atom` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.atom />
  <Boxicons.atom class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def atom(assigns) do
    svg(
      assigns,
      ~S|<path d="M3.102 20.898c.698.699 1.696 1.068 2.887 1.068 1.742 0 3.855-.778 6.012-2.127 2.156 1.35 4.27 2.127 6.012 2.127 1.19 0 2.188-.369 2.887-1.068 1.269-1.269 1.411-3.413.401-6.039-.358-.932-.854-1.895-1.457-2.859a16.792 16.792 0 0 0 1.457-2.859c1.01-2.626.867-4.771-.401-6.039-.698-.699-1.696-1.068-2.887-1.068-1.742 0-3.855.778-6.012 2.127-2.156-1.35-4.27-2.127-6.012-2.127-1.19 0-2.188.369-2.887 1.068C1.833 4.371 1.69 6.515 2.7 9.141c.359.932.854 1.895 1.457 2.859A16.792 16.792 0 0 0 2.7 14.859c-1.01 2.626-.867 4.77.402 6.039zm16.331-5.321c.689 1.79.708 3.251.052 3.907-.32.32-.815.482-1.473.482-1.167 0-2.646-.503-4.208-1.38a26.611 26.611 0 0 0 4.783-4.784c.336.601.623 1.196.846 1.775zM12 17.417a23.568 23.568 0 0 1-2.934-2.483A23.998 23.998 0 0 1 6.566 12 23.74 23.74 0 0 1 12 6.583a23.568 23.568 0 0 1 2.934 2.483 23.998 23.998 0 0 1 2.5 2.934A23.74 23.74 0 0 1 12 17.417zm6.012-13.383c.657 0 1.152.162 1.473.482.656.656.638 2.117-.052 3.907-.223.579-.51 1.174-.846 1.775a26.448 26.448 0 0 0-4.783-4.784c1.562-.876 3.041-1.38 4.208-1.38zM4.567 8.423c-.689-1.79-.708-3.251-.052-3.907.32-.32.815-.482 1.473-.482 1.167 0 2.646.503 4.208 1.38a26.448 26.448 0 0 0-4.783 4.784 13.934 13.934 0 0 1-.846-1.775zm0 7.154c.223-.579.51-1.174.846-1.775a26.448 26.448 0 0 0 4.783 4.784c-1.563.877-3.041 1.38-4.208 1.38-.657 0-1.152-.162-1.473-.482-.656-.656-.637-2.117.052-3.907z"/>|
    )
  end

  @doc """
  Renders the `globe_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.globe_alt />
  <Boxicons.globe_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def globe_alt(assigns) do
    svg(
      assigns,
      ~S|<path d="M11 18.791V20H9v2h6v-2h-2v-1.845a9.934 9.934 0 0 0 3.071-2.084c3.898-3.898 3.898-10.243 0-14.143l-1.414 1.414c3.119 3.12 3.119 8.195 0 11.314-3.119 3.118-8.195 3.12-11.314 0L1.929 16.07A9.971 9.971 0 0 0 9 18.994a9.98 9.98 0 0 0 2-.203z"/><path d="M3 9c0 3.309 2.691 6 6 6s6-2.691 6-6-2.691-6-6-6-6 2.691-6 6zm10 0c0 2.206-1.794 4-4 4s-4-1.794-4-4 1.794-4 4-4 4 1.794 4 4z"/>|
    )
  end

  @doc """
  Renders the `car_battery` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.car_battery />
  <Boxicons.car_battery class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def car_battery(assigns) do
    svg(
      assigns,
      ~S|<path d="M20 6H4c-1.103 0-2 .897-2 2v10c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V8c0-1.103-.897-2-2-2zM9 14H4v-2h5v2zm11 0h-2v2h-2v-2h-2v-2h2v-2h2v2h2v2zM4 3h4v2H4zm12 0h4v2h-4z"/>|
    )
  end

  @doc """
  Renders the `run` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.run />
  <Boxicons.run class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def run(assigns) do
    svg(
      assigns,
      ~S|<path d="M15.777 10.969a2.007 2.007 0 0 0 2.148.83l3.316-.829-.483-1.94-3.316.829-1.379-2.067a2.01 2.01 0 0 0-1.272-.854l-3.846-.77a1.998 1.998 0 0 0-2.181 1.067l-1.658 3.316 1.789.895 1.658-3.317 1.967.394L7.434 17H3v2h4.434c.698 0 1.355-.372 1.715-.971l1.918-3.196 5.169 1.034 1.816 5.449 1.896-.633-1.815-5.448a2.007 2.007 0 0 0-1.506-1.33l-3.039-.607 1.772-2.954.417.625z"/>|
    )
  end

  @doc """
  Renders the `fork` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.fork />
  <Boxicons.fork class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def fork(assigns) do
    svg(
      assigns,
      ~S|<path d="m14.47 13.77-1.41-1.42 5.66-5.65-1.42-1.42-5.65 5.66-1.42-1.41 5.66-5.66-1.42-1.42-6.36 6.37a3 3 0 0 0 0 4.24l.71.71-6.37 6.36 1.42 1.42 6.36-6.37.71.71a3 3 0 0 0 4.24 0l6.37-6.36-1.42-1.42z"/>|
    )
  end

  @doc """
  Renders the `collapse_vertical` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.collapse_vertical />
  <Boxicons.collapse_vertical class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def collapse_vertical(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 7.59 7.05 2.64 5.64 4.05 12 10.41l6.36-6.36-1.41-1.41L12 7.59zM5.64 19.95l1.41 1.41L12 16.41l4.95 4.95 1.41-1.41L12 13.59l-6.36 6.36z"/>|
    )
  end

  @doc """
  Renders the `left_arrow_square` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.left_arrow_square />
  <Boxicons.left_arrow_square class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def left_arrow_square(assigns) do
    svg(
      assigns,
      ~S|<path d="M19 21a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14zM12 7v4h5v2h-5v4l-5-5 5-5z"/>|
    )
  end

  @doc """
  Renders the `collapse` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.collapse />
  <Boxicons.collapse class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def collapse(assigns) do
    svg(
      assigns,
      ~S|<path d="M16.121 6.465 14 4.344V10h5.656l-2.121-2.121 3.172-3.172-1.414-1.414zM4.707 3.293 3.293 4.707l3.172 3.172L4.344 10H10V4.344L7.879 6.465zM19.656 14H14v5.656l2.121-2.121 3.172 3.172 1.414-1.414-3.172-3.172zM6.465 16.121l-3.172 3.172 1.414 1.414 3.172-3.172L10 19.656V14H4.344z"/>|
    )
  end

  @doc """
  Renders the `git_merge` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.git_merge />
  <Boxicons.git_merge class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def git_merge(assigns) do
    svg(
      assigns,
      ~S|<path d="M2.5 18.5C2.5 20.43 4.07 22 6 22s3.5-1.57 3.5-3.5c0-1.58-1.06-2.903-2.5-3.337v-3.488c.244.273.509.527.813.744 1.18.844 2.617 1.098 3.918 1.098.966 0 1.853-.14 2.506-.281a3.5 3.5 0 0 0 3.264 2.265c1.93 0 3.5-1.57 3.5-3.5s-1.57-3.5-3.5-3.5a3.5 3.5 0 0 0-3.404 2.718c-1.297.321-3.664.616-5.119-.426-.666-.477-1.09-1.239-1.306-2.236C8.755 7.96 9.5 6.821 9.5 5.5 9.5 3.57 7.93 2 6 2S2.5 3.57 2.5 5.5c0 1.58 1.06 2.903 2.5 3.337v6.326c-1.44.434-2.5 1.757-2.5 3.337zm15-8c.827 0 1.5.673 1.5 1.5s-.673 1.5-1.5 1.5S16 12.827 16 12s.673-1.5 1.5-1.5zm-10 8c0 .827-.673 1.5-1.5 1.5s-1.5-.673-1.5-1.5S5.173 17 6 17s1.5.673 1.5 1.5zm-3-13C4.5 4.673 5.173 4 6 4s1.5.673 1.5 1.5S6.827 7 6 7s-1.5-.673-1.5-1.5z"/>|
    )
  end

  @doc """
  Renders the `car_mechanic` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.car_mechanic />
  <Boxicons.car_mechanic class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def car_mechanic(assigns) do
    svg(
      assigns,
      ~S|<path d="m20.772 13.155-1.368-4.104A2.995 2.995 0 0 0 16.559 7H7.441a2.995 2.995 0 0 0-2.845 2.051l-1.368 4.104A2.001 2.001 0 0 0 2 15v3c0 .738.404 1.376 1 1.723V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1h12v1a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1.277A1.99 1.99 0 0 0 22 18v-3c0-.831-.507-1.542-1.228-1.845zM7.441 9h9.117a1 1 0 0 1 .949.684L18.613 13H5.387l1.105-3.316c.137-.409.519-.684.949-.684zM5.5 18a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 5.5 18zm13 0a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 18.5 18zM5.277 5c.347.595.985 1 1.723 1s1.376-.405 1.723-1h6.555c.346.595.984 1 1.722 1s1.376-.405 1.723-1H17V3h1.723c-.347-.595-.985-1-1.723-1s-1.376.405-1.723 1H8.723C8.376 2.405 7.738 2 7 2s-1.376.405-1.723 1H7v2H5.277z"/>|
    )
  end

  @doc """
  Renders the `bar_chart_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.bar_chart_alt />
  <Boxicons.bar_chart_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def bar_chart_alt(assigns) do
    svg(assigns, ~S|<path d="M13 6h2v11h-2zm4-3h2v14h-2zM9 9h2v8H9zM4 19h16v2H4zm1-7h2v5H5z"/>|)
  end

  @doc """
  Renders the `at` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.at />
  <Boxicons.at class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def at(assigns) do
    svg(
      assigns,
      ~S|<path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10c1.466 0 2.961-.371 4.442-1.104l-.885-1.793C14.353 19.698 13.156 20 12 20c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8v1c0 .692-.313 2-1.5 2-1.396 0-1.494-1.819-1.5-2V8h-2v.025A4.954 4.954 0 0 0 12 7c-2.757 0-5 2.243-5 5s2.243 5 5 5c1.45 0 2.748-.631 3.662-1.621.524.89 1.408 1.621 2.838 1.621 2.273 0 3.5-2.061 3.5-4v-1c0-5.514-4.486-10-10-10zm0 13c-1.654 0-3-1.346-3-3s1.346-3 3-3 3 1.346 3 3-1.346 3-3 3z"/>|
    )
  end

  @doc """
  Renders the `undo` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.undo />
  <Boxicons.undo class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def undo(assigns) do
    svg(
      assigns,
      ~S|<path d="M9 10h6c1.654 0 3 1.346 3 3s-1.346 3-3 3h-3v2h3c2.757 0 5-2.243 5-5s-2.243-5-5-5H9V5L4 9l5 4v-3z"/>|
    )
  end

  @doc """
  Renders the `collapse_alt` icon.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Boxicons.collapse_alt />
  <Boxicons.collapse_alt class="w-4 h-4" />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container"

  def collapse_alt(assigns) do
    svg(assigns, ~S|<path d="M2 15h7v7h2v-9H2v2zM15 2h-2v9h9V9h-7V2z"/>|)
  end
end
