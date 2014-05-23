require 'spec_helper'

describe Ghome do

  before do
    @ghome = Ghome.new(place: "Example Place", shubetu: "Example Shubetu")
#���Ԃ̏��������ɓ���܂�
#�p�X���[�h�̏��������ɓ���܂�
  end

  subject { @ghome }

  it { should respond_to(:place) }
  it { should respond_to(:shubetu) }

  it { should be_valid }

  describe "when place is not present" do
    before { @ghome.place = " " }
    it { should_not be_valid }
  end
  describe "when shubetu is not present" do
    before { @ghome.shubetu = " " }
    it { should_not be_valid }
  end
  describe "when place is too long" do
    before { @ghome.place = "a" * 51 }
    it { should_not be_valid }
  end
  describe "when shubetu is too long" do
    before { @ghome.shubetu = "a" * 51 }
    it { should_not be_valid }
  end

end