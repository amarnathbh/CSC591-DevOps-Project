require 'spec/spec_helper'

# it will run in the spec. This will increase the code coverage for requests
describe "Tarantula::FuzzingSpider" do
  let(:project) { create(:project) }
  let(:user)    { create(:user) }

  before do
    #sign in user
    sign_in(user)

    project.team << [user, :master]

    allow(project).to receive(:branches).and_return(['master', 'foo/bar/baz'])
    allow(project).to receive(:tags).and_return(['v1.0.0', 'v2.0.0'])
    controller.instance_variable_set(:@project, project)
  end

  context "Add fuzz request to check edge cases" do
    it "it does a fuzzing crawler after sign_in to check all request links" do
      follow_redirect!
      t = tarantula_crawler(self)
      t.crawl '/'    
    end
  end   
end