require 'test/unit'

require 'pango'

class TestLayout < Test::Unit::TestCase
  # include PangoTestUtils

  def setup
    @font_map = Pango::CairoFontMap.default
    # @context = Pango::Context.new
    @context = @font_map.create_context
    @layout = Pango::Layout.new(@context)
  end

  def test_set_font_description
    assert_nil(@layout.font_description)

    @layout.font_description = "sans 14"
    assert_equal("sans 14", @layout.font_description.to_s)

    description = Pango::FontDescription.new("monospace")
    description.size = 10 * Pango::SCALE
    @layout.font_description = description
    assert_equal("monospace 10", @layout.font_description.to_s)
  end

  def test_is_ellipsized
    assert_equal(false, @layout.is_ellipsized?)
    @layout.width = 10
    @layout.set_ellipsize 3
    @layout.text = "1234567890"
    assert_equal(true, @layout.is_ellipsized?)
  end
end
