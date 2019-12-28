require 'ex2'

describe Grains, "Exercicio 2 - Grãos" do
  context "Test squares" do
    it "square 1" do
      expect(Grains.square 1).to eq(1)
    end
    it "square 3" do
      expect(Grains.square 3).to eq(4)
    end
    it "square 8" do
      expect(Grains.square 8).to eq(128)
    end
    it "square 16" do
      expect(Grains.square 16).to eq(32_768)
    end
    it "square 32" do
      expect(Grains.square 32).to eq(2_147_483_648)
    end
    it "total" do
      expect(Grains.total).to eq(18_446_744_073_709_551_615)
    end
  end
  context "Test Argument Error" do
    it "there is no square 0" do
      expect{ Grains.square 0 }.to raise_error ArgumentError
    end
    it "there is no square 65" do
      expect{ Grains.square 65 }.to raise_error ArgumentError
    end
    it "there is no square -1" do
      expect{ Grains.square -1 }.to raise_error ArgumentError
    end
  end 
end
