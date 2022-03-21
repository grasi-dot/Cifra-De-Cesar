require './spec/spec_helper.rb'
require './ceaser_cipher.rb'

RSpec.describe Cypher do

  describe '#ceaser_cipher' do

    it 'Recebe um texto com espaco e letras misturadas' do
      expect(subject.ceaser_cipher( "What a string", 5)).to eq("Bmfy f xywnsl")
    end

    it 'Recebe string com espacos' do
      expect(subject.ceaser_cipher( "Rio Grande Do Norte", -2)).to eq("Pgm Epylbc Bm Lmprc")
    end

    it 'Recebe um texto com caracter especial' do
      expect(subject.ceaser_cipher( "felipe?!", 3)).to eq("iholsh?!")
    end
  
    it 'Recebe um texto com letras maiusculas' do
      expect(subject.ceaser_cipher( "CLEO", 1)).to eq("DMFP")
    end

    it 'Recebe um texto com letras minusculas' do
      expect(subject.ceaser_cipher( "laiz", 3)).to eq("odlc")
    end
    
    it 'Deslocamento negativo' do
      expect(subject.ceaser_cipher( "ana", -1)).to eq("zmz")
    end
  end
end
