class String
  def to_unicode
    format("%4.4x", ord)
  end

  def to_glyph
    [hex].pack("U")
  end
end
