require 'ex1'

describe Matrix, "Exercicio 1 - Matriz" do
  before(:context) do
    @matrix = Matrix.new("1 2\n10 20")
  end
  it "extract first row" do
    expect(@matrix.rows[0]).to eq([1,2])
  end
  it "extract second row" do
    expect(@matrix.rows[1]).to eq([10,20])
  end
  it "extract first column" do
    expect(@matrix.columns[0]).to eq([1,10])
  end
  it "extract second column" do
    expect(@matrix.columns[1]).to eq([2,20])
  end
  it "columns is a transpose of rows" do
    expect(@matrix.rows.transpose).to eq(@matrix.columns)
  end
end
