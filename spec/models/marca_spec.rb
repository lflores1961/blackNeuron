require 'rails_helper'

RSpec.describe Marca, type: :model do
  context 'Validation tests' do
    it 'ensures name is present' do
      marca = Marca.new(description: 'Some description for this node', start: Time.now).save
      expect(marca).to eq(false)
    end

    it 'ensures description is present' do
      marca = Marca.new(name: 'Nodo uno', start: Time.now).save
      expect(marca).to eq(false)
    end

    it 'ensures start date is present' do
      marca = Marca.new(name: 'Nodo uno', description: 'Some description for this test node').save
      expect(marca).to eq(false)
    end

    it 'should save successfully' do
      marca = Marca.new(name: 'Nodo uno', description: 'Some description for this test node', start: Time.now).save
      expect(marca).to eq(true)
    end
  end
end
