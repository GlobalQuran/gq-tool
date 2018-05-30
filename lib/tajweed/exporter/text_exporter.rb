module GQTool::Tajweed::Exporter
  # Export as text output
  class TextExporter
    def export(ayah_text, results)
      puts("Considering: #{ayah_text}")
      results.each do |result|
        puts("matched #{result.resultType.debugName} at #{result.start} to #{result.ending}")
      end
    end
  end
end
