defmodule BoxiconsTest do
  use ExUnit.Case, async: true

  import Phoenix.LiveViewTest

  setup do
    # Mix.Task.run("boxicons.generate")
    {:ok, assigns: %{__changed__: nil}}
  end

  test "regular default" do
    assert render_component(&Boxicons.sushi/1, %{}) ==
             "<svg xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" viewBox=\"0 0 24 24\" fill=\"currentColor\">\n  <path d=\"M12 2C7.51 2 4 4.2 4 7v10c0 2.8 3.51 5 8 5s8-2.2 8-5V7c0-2.8-3.51-5-8-5zm0 18c-3.54 0-6-1.58-6-3v-6.67A10.52 10.52 0 0 0 12 12a10.52 10.52 0 0 0 6-1.67V17c0 1.42-2.46 3-6 3zm0-10c-3.54 0-6-1.58-6-3s2.46-3 6-3 6 1.58 6 3-2.46 3-6 3z\"/>\n</svg>"

    class = "w-2"

    assert render_component(&Boxicons.sushi/1, %{class: class}) ==
             "<svg xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" viewBox=\"0 0 24 24\" fill=\"currentColor\" class=\"w-2\">\n  <path d=\"M12 2C7.51 2 4 4.2 4 7v10c0 2.8 3.51 5 8 5s8-2.2 8-5V7c0-2.8-3.51-5-8-5zm0 18c-3.54 0-6-1.58-6-3v-6.67A10.52 10.52 0 0 0 12 12a10.52 10.52 0 0 0 6-1.67V17c0 1.42-2.46 3-6 3zm0-10c-3.54 0-6-1.58-6-3s2.46-3 6-3 6 1.58 6 3-2.46 3-6 3z\"/>\n</svg>"
  end

  test "solid" do
    assert render_component(&Boxicons.sushi/1, %{solid: true}) ==
             "<svg xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" viewBox=\"0 0 24 24\" fill=\"currentColor\">\n  <path d=\"M12.07 22c4.48 0 8-2.2 8-5V7c0-2.8-3.52-5-8-5s-8 2.2-8 5v10c0 2.8 3.51 5 8 5zm0-18c3.53 0 6 1.58 6 3a2 2 0 0 1-.29.87c-.68 1-2.53 2-5 2.12h-1.39C8.88 9.83 7 8.89 6.35 7.84a2.16 2.16 0 0 1-.28-.76V7c0-1.42 2.46-3 6-3z\"/>\n</svg>"

    class = "w-2"

    assert render_component(&Boxicons.sushi/1, %{solid: true, class: class}) ==
             "<svg xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" viewBox=\"0 0 24 24\" fill=\"currentColor\" class=\"w-2\">\n  <path d=\"M12.07 22c4.48 0 8-2.2 8-5V7c0-2.8-3.52-5-8-5s-8 2.2-8 5v10c0 2.8 3.51 5 8 5zm0-18c3.53 0 6 1.58 6 3a2 2 0 0 1-.29.87c-.68 1-2.53 2-5 2.12h-1.39C8.88 9.83 7 8.89 6.35 7.84a2.16 2.16 0 0 1-.28-.76V7c0-1.42 2.46-3 6-3z\"/>\n</svg>"
  end

  test "generated docs" do
    {:docs_v1, _annotation, _beam_language, _format, _module_doc, _metadata, docs} =
      Code.fetch_docs(Boxicons)

    doc =
      Enum.find_value(docs, fn
        {{:function, :sushi, 1}, _annotation, _signature, doc, _metadata} -> doc
        _ -> nil
      end)

    assert doc["en"] == """
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

           ## Attributes

           * `rest` (`:global`) - the arbitrary HTML attributes for the svg container.
           * `solid` (`:boolean`) - Defaults to `false`.
           """
  end
end
