# frozen_string_literal: true

require File.expand_path("#{File.dirname(__FILE__)}/neo")

class AboutInheritance < Neo::Koan # rubocop:disable Style/Documentation
  class Dog # rubocop:disable Style/Documentation
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def bark
      'WOOF'
    end
  end

  class Chihuahua < Dog # rubocop:disable Style/Documentation
    def wag
      :happy
    end

    def bark
      'yip'
    end
  end

  def test_subclasses_have_the_parent_as_an_ancestor
    assert_equal true, Chihuahua.ancestors.include?(Dog)
  end

  def test_all_classes_ultimately_inherit_from_object
    assert_equal true, Chihuahua.ancestors.include?(Object)
  end

  def test_subclasses_inherit_behavior_from_parent_class
    chico = Chihuahua.new('Chico')
    assert_equal 'Chico', chico.name
  end

  def test_subclasses_add_new_behavior
    chico = Chihuahua.new('Chico')
    assert_equal :happy, chico.wag

    assert_raise(NoMethodError) do
      fido = Dog.new('Fido')
      fido.wag
    end
  end

  def test_subclasses_can_modify_existing_behavior
    chico = Chihuahua.new('Chico')
    assert_equal 'yip', chico.bark

    fido = Dog.new('Fido')
    assert_equal 'WOOF', fido.bark
  end

  # ------------------------------------------------------------------

  class BullDog < Dog # rubocop:disable Style/Documentation
    def bark
      super + ', GROWL' # rubocop:disable Style/StringConcatenation
    end
  end

  def test_subclasses_can_invoke_parent_behavior_via_super
    ralph = BullDog.new('Ralph')
    assert_equal 'WOOF, GROWL', ralph.bark
  end

  # ------------------------------------------------------------------

  class GreatDane < Dog # rubocop:disable Style/Documentation
    def growl
      super.bark + ', GROWL' # rubocop:disable Style/StringConcatenation
    end
  end

  def test_super_does_not_work_cross_method
    george = GreatDane.new('George')
    assert_raise(NoMethodError) do
      george.growl
    end
  end
end
