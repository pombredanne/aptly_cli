require 'minitest_helper.rb'
require "minitest/autorun"

require "aptly_cli"

describe AptlyCli::AptlyMisc do
 
  it "must include httparty methods" do
    AptlyCli::AptlyMisc.must_include HTTMultiParty
  end

describe "API Get graph" do

  let(:misc_api) { AptlyCli::AptlyMisc.new }

  before do
    VCR.insert_cassette 'misc_api', :record => :new_episodes
  end

  after do
    VCR.eject_cassette
  end

  it "records the fixture for getting SVG graph" do
    misc_api.get_graph(extension = 'svg')
  end

  it "records the fixture for getting PNG graph" do
    misc_api.get_graph(extension = 'png')
  end
 
 end

describe "API Get Version" do

  let(:misc_api) { AptlyCli::AptlyMisc.new }

  before do
    VCR.insert_cassette 'misc_api', :record => :new_episodes
  end

  after do
    VCR.eject_cassette
  end

  it "records the fixture for geting the version of Aptly" do
    misc_api.get_version()
  end

 end

end
