require "rails_helper"

RSpec.describe Article, type: :model do
  describe "article" do
    context "validation" do
      subject { create(:article) }
      it { is_expected.to validate_presence_of(:title) }
      it { is_expected.to validate_presence_of(:content) }
    end

    context "association" do
      subject { create(:article) }
      it { is_expected.to have_many(:comments) }
    end
  end
end
