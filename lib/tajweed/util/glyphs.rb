Glyph            = Struct.new(:name, :phonetic, :common, :isolated, :start, :middle, :end, :connects, :diacritic)

ALEF             = Glyph.new("alef",             "a",  "0627", "fe8d", "fe8d", "fe8e", "fe8e", false, false)
BAA              = Glyph.new("baa",              "b",  "0628", "fe8f", "fe91", "fe92", "fe90", true,  false)
TAA              = Glyph.new("taa",              "t",  "062a", "fe95", "fe97", "fe98", "fe96", true,  false)
THAA             = Glyph.new("thaa",             "th", "062b", "fe99", "fe9b", "fe9c", "fe9a", true,  false)
JIIM             = Glyph.new("jiim",             "j",  "062c", "fe9d", "fe9f", "fea0", "fe9e", true,  false)
HAA              = Glyph.new("haa",              "ha", "062d", "fea1", "fea3", "fea4", "fea2", true,  false)
KHA              = Glyph.new("kha",              "kh", "062e", "fea5", "fea7", "fea8", "fea6", true,  false)
DAAL             = Glyph.new("daal",             "d",  "062f", "fea9", "fea9", "feaa", "feaa", false, false)
THAAL            = Glyph.new("thaal",            "th", "0630", "feab", "feab", "feac", "feac", false, false)
RAA              = Glyph.new("raa",              "r",  "0631", "fead", "fead", "feae", "feae", false, false)
ZAA              = Glyph.new("zaa",              "z",  "0632", "feaf", "feaf", "feb0", "feb0", false, false)
SEEN             = Glyph.new("seen",             "s",  "0633", "feb1", "feb3", "feb4", "feb2", true,  false)
SHEEN            = Glyph.new("sheen",            "sh", "0634", "feb5", "feb7", "feb8", "feb6", true,  false)
SAAD             = Glyph.new("saad",             "sw", "0635", "feb9", "febb", "febc", "feba", true,  false)
DAAD             = Glyph.new("daad",             "d",  "0636", "febd", "febf", "fec0", "febe", true,  false)
TUAA             = Glyph.new("tuaa",             "tu", "0637", "fec1", "fec3", "fec4", "fec2", true,  false)
AYYN             = Glyph.new("ayyn",             "aa", "0638", "fec5", "fec7", "fec8", "fec6", true,  false)
GHAYYN           = Glyph.new("ghayyn",           "gh", "0639", "fec9", "fecb", "fecc", "feca", true,  false)
FAA              = Glyph.new("faa",              "f",  "063a", "fecd", "fecf", "fed0", "fece", true,  false)
QAAF             = Glyph.new("qaaf",             "q",  "0641", "fed1", "fed3", "fed4", "fed2", true,  false)
KAAF             = Glyph.new("kaaf",             "k",  "0642", "fed5", "fed7", "fed8", "fed6", true,  false)
LAAM             = Glyph.new("laam",             "l",  "0643", "fed9", "fedb", "fedc", "feda", true,  false)
MEEM             = Glyph.new("meem",             "m",  "0644", "fedd", "fedf", "fee0", "fede", true,  false)
NUUN             = Glyph.new("nuun",             "n",  "0645", "fee1", "fee3", "fee4", "fee2", true,  false)
HA               = Glyph.new("ha",               "h",  "0646", "fee5", "fee7", "fee8", "fee6", true,  false)
WAAW             = Glyph.new("waaw",             "w",  "0647", "fee9", "feeb", "feec", "feea", true,  false)
YAA              = Glyph.new("yaa",              "y",  "0648", "feed", "feed", "feee", "feee", false, false)
HAMZA            = Glyph.new("hamza",            "",   "064a", "fef1", "fef3", "fef4", "fef2", true,  false)
ALEF_MADDA       = Glyph.new("alef madda",       "",   "0622", "fe81", "fe81", "fe82", "fe82", false, false)
ALEF_HAMZA_ABOVE = Glyph.new("alef hamza above", "",   "0623", "fe83", "fe83", "fe84", "fe84", false, false)
WAW_HAMZA        = Glyph.new("waw hamza",        "",   "0624", "fe85", "fe85", "fe86", "fe86", false, false)
ALEF_HAMZA_BELOW = Glyph.new("alef hamza below", "",   "0625", "fe87", "fe87", "fe88", "fe88", false, false)
YAA_HAMZA        = Glyph.new("yaa hamza",        "",   "0626", "fe89", "fe8b", "fe8c", "fe8a", true,  false)
TAA_MARBUTA      = Glyph.new("taa marbuta",      "",   "0629", "fe93", "fe93", "fe94", "fe94", false, false)
TATWEEL          = Glyph.new("tatweel",          "",   "0640", "0640", "0640", "0640", "0640", true,  false)
ALEF_LAYYINA     = Glyph.new("alef layyina",     "",   "0649", "feef", "feef", "fef0", "fef0", false, false)
SHADDA           = Glyph.new("shadda",           "",   "0651", "fe7c", "fe7c", "fe7d", "fe7c", false, true)
SUKUN            = Glyph.new("sukun",            "",   "0652", "fe7e", "fe7e", "fe7f", "fe7e", false, true)
FATHA            = Glyph.new("fatha",            "a",  "064e", "fe76", "fe76", "fe77", "fe76", false, true)
KASRA            = Glyph.new("kasra",            "e",  "0650", "fe7a", "fe7a", "fe7b", "fe7a", false, true)
DAMMA            = Glyph.new("damma",            "u",  "064f", "fe78", "fe78", "fe79", "fe78", false, true)
MADDA            = Glyph.new("madda",            "",   "0653", "0653", "0653", "0653", "0653", false, true)
FATHATAN         = Glyph.new("fathatan",         "an", "064b", "fe79", "fe70", "fe71", "fe70", false, true)
KASRATAN         = Glyph.new("kasratan",         "in", "064d", "fe74", "fe74", "fe74", "fe74", false, true)
DAMMATAN         = Glyph.new("dammatan",         "oo", "064c", "fe72", "fe72", "fe72", "fe72", false, true)