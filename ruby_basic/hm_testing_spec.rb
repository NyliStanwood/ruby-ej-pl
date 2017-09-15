require_relative './hm_testing'

#will inspect the file hm_testing
RSpec.describe 'hm_testing' do
  it 'llamar metodo' do
    #cuando llame al metodo hm_method espera un objeto equals to 'returning string'
    expect(hm_method).to eq('returning string')
  end
end


#se ejecuta en la consola de ruby con la siguiente linea
#rspec hm_testing_spec.rb
