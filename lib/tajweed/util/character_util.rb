module GQTool::Tajweed::Utils
  class CharacterUtil
    # diacritic marks
    FATHA_TANWEEN = "064b"
    DAMMA_TANWEEN = "064c"
    KASRA_TANWEEN = "064d"
    FATHA         = "064e"
    DAMMA         = "064f"
    KASRA         = "0650"
    SUKUN         = "0610"
    SHADDA        = "0651"
    SMALL_ALEF    = "0670" # the superscript alef

    ALEF        = "0627" # normal alef
    ALEF_LAYINA = "0649" # looks like ya but pronounced like alef

    NOON = "0646"
    BA   = "0628"
    MEEM = "0645"
    JEEM = "062c"
    DAAL = "062f"
    QAAF = "0642"
    TAA  = "0637"

    MAAD_MARKER = "0653"

    # this is the meem on top of a character (like a noon)
    # when it should be pronounced like a meem
    SMALL_HIGH_MEEM_ISOLATED = "06E2"

    TATWEEL = "0640"
    HAMZA   = "0621"

    # pause marks
    SMALL_SAAD_LAAM_ALEF = "06D6"
    SMALL_QAAF_LAAM_ALEF = "06D7"
    SMALL_HIGH_MEEM      = "06D8"
    SMALL_LAAM_ALEF      = "06D9"
    SMALL_HIGH_JEEM      = "06DA"
    SMALL_THREE_DOTS     = "06DB"

    SPACE = " "

    def dia_mark?(glyph)
      items = [
        FATHA_TANWEEN, DAMMA_TANWEEN,
        KASRA_TANWEEN, FATHA,
        DAMMA, KASRA,  SUKUN,
        SHADDA,        SMALL_ALEF,
        MAAD_MARKER
      ]

      items.includes?(glyph)
    end

    def end_mark?(glyph)
      items = [
        SMALL_SAAD_LAAM_ALEF, SMALL_QAAF_LAAM_ALEF, SMALL_HIGH_MEEM,
        SMALL_LAAM_ALEF, SMALL_HIGH_JEEM, SMALL_THREE_DOTS
      ]

      items.includes?(glyph)
    end

    def letter?(glyph)
      !end_mark?(glyph) && !dia_mark?(glyph) && glyph != SPACE && glyph != TATWEEL
    end

    # Given an array of characters this checks for the cases there is a noon saakin.
    # Namely, noon saakin can either exist if there is a noon either explicitly followed
    # by a sukun or in certain unmarked texts it will have no marks. Note: Only array
    # size 2 is necessary to determine this.
    def noon_saakin?(glyph)
      saakin?(NOON, glyph)
    end

    def meem_saakin?(glyph)
      saakin?(MEEM, glyph)
    end

    def tanween?(glyph)
      items = [
        FATHA_TANWEEN, DAMMA_TANWEEN, KASRA_TANWEEN
      ]

      items.includes?(glyph)
    end

    # Given a string and an index, return an arrays with next characters from the index.
    # The first position is always the character at current position.
    # Zeros are used to represent non-characters and thus end of the string.
    def get_next_chars(ayah, index)
      next_character = [0, 0, 0, 0, 0, 0]

      i = 0

      while i < next_character.length
        new_index = index + i

        if new_index < ayah.length
          next_character[i] = ayah[new_index]
        end
      end
      next_character
    end

    def get_previous_chars(ayah, index)
      previous_character = [0, 0, 0, 0, 0, 0]

      i = 0

      while i < previous_character.length
        new_index = index - i

        if new_index >= 0
          previous_character[i] = ayah[new_index]
        end
      end
      previous_character
    end

    private

    def saakin?(type, glyph)
      glyph[0] == type && (glyph[1] == SUKUN || glyph[1] == SPACE || letter?(glyph[1]))
    end
  end
end

class String
  def to_unicode
    format("%4.4x", ord)
  end

  def to_glyph
    [to_i(16)].pack("U")
  end
end
