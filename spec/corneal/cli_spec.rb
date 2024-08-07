#require 'fakefs'
require_relative "../spec_helper"
require_relative "../../lib/corneal"

describe Corneal::VERSION do
  subject { Corneal::Generators::AppGenerator }

  describe "source_root" do
    it "should return with a full path" do
      pwd           = File.dirname(__FILE__)
      template_path = pwd.sub 'spec/corneal', 'lib/corneal/generators/app/templates'
      expect(subject.source_root).to eq template_path
    end
  end
end
