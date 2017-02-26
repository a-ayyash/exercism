module BookKeeping
  VERSION = 4
end

class DNA
  def self.valid?(dna_strand)
    dna_strand !~ /[^ATCG]/
  end
end

module Complement
  def self.of_dna(dna_strand)
    return '' if dna_strand.empty? || !DNA.valid?(dna_strand)
    dna_strand.tr(DNA_TO_RNA.keys.join, DNA_TO_RNA.values.join)
  end

  DNA_TO_RNA = { 'A' => 'U',
    'T' => 'A',
    'C' => 'G',
    'G' => 'C'
  }

end
