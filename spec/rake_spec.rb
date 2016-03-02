require 'spec_helper'
require 'rake'


describe "Rakefile" do 
  before(:all) do 
    load File.expand_path("../../Rakefile", __FILE__)
  end

  describe 'namespace :greeting' do
    describe 'greeting:hello' do

      it "should print out 'hello from Rake!'" do
        expect($stdout).to receive(:puts).with("hello from Rake!")
        Rake::Task["greeting:hello"].invoke
      end


    end

    describe 'greeting:hola' do

      it "should print out 'hola de Rake!'" do
        expect($stdout).to receive(:puts).with("hola de Rake!")
        Rake::Task["greeting:hola"].invoke
      end
    end
  end

  describe 'namespace :db' do

    describe 'db:migrate' do 
      it "invokes the :environment task as a dependency" do
      binding.pry 
        expect(Rake::Task["db:migrate"].prerequisites).to include("environment")
      end
    end

  end

end