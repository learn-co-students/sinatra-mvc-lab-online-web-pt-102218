describe 'class PigLatinizer' do
  let!(:words) { PigLatinizer.new }


  it 'can create a new instance of a class' do
    expect(PigLatinizer.new).to be_an_instance_of(PigLatinizer)
  end

  it 'piglatinizes an individual word' do
    expect(words.piglatinize("pork")).to eq("orkpay") #1
    expect(words.piglatinize("I")).to eq("Iway")#3
    expect(words.piglatinize("hello")).to eq("ellohay")#1
    expect(words.piglatinize("please")).to eq("easeplay") #2
    expect(words.piglatinize("tomorrow")).to eq("omorrowtay")#1
    expect(words.piglatinize("until")).to eq("untilway")#4
    expect(words.piglatinize("this")).to eq("isthay") #2
    expect(words.piglatinize("Enumeration")).to eq("Enumerationway")#4
    expect(words.piglatinize("spray")).to eq("ayspray")#5
    expect(words.piglatinize("prays")).to eq("ayspray")#2
  end

  it 'has a method splits the sentence to piglatinize each word' do
    expect(words.piglatinize("i love programming")).to eq("iway ovelay ogrammingpray")
  end

end
