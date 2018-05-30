module GQTool::Tajweed::Rules
  class Ghunna
    def initialize(is_naskh_mode)
      @is_naskh_mode  = is_naskh_mode
      @character_util = CharacterUtil.new
    end

    def check_ayah(ayah)
      results = []
      length  = ayah.length

      i = 0

      while i < length
        previous_character = @character_util.get_previous_chars(ayah, i)
        next_characters    = @character_util.get_next_chars(ayah, i)
        current_character  = next_characters[0]

        if (currentChar == @character_util.NOON || currentChar == @character_util.MEEM) and (next_characters[1] == @character_util.SHADDA || next_characters[2] == @character_util.SHADDA)
        end
      end
    end
  end
end
