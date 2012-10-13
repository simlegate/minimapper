require 'minimapper/memory'
require 'minimapper/common'
require 'minimapper/entity'

class TestEntity < Minimapper::Entity
  attributes :name
  validates :name, presence: true
end

describe Minimapper::Memory do
  let(:repository) { described_class.new }
  let(:entity_klass) { TestEntity }

  include_examples :mapper
end