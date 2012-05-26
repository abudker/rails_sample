require 'spec_helper'

describe "StaticPages" do
	
	describe "Home page" do
  		before { visit root_path } 

  		it "should have the h1 'Sample App'" do
    		page.should have_selector('h1', text: 'Sample App')
  		end

  		it "should have the base title" do
    		page.should have_selector('title',
            	text: "Ruby on Rails Tutorial Sample App")
  		end

  		it "should not have a custom page title" do
    	page.should_not have_selector('title', text: '| Home')
  		end
	end

	describe "About Page" do
		it "Should have the content 'About Us'" do
			visit about_path
			page.should have_selector('h1', :text=>'About Us')
		end
		
		it "should have the right title" do
			visit about_path
			page.should have_selector('title', :text=> "| About Us")
		end
	end
	
	describe "Help Page" do
		it "Should have the content 'Help'" do
			visit help_path
			page.should have_selector('h1', :text=>'Help')
		end
		
		it "should have the right title" do
			visit help_path
			page.should have_selector('title', :text=> "| Help")
		end
	end

	describe "Contact page" do
		it "should have the h1 contact" do
			visit contact_path
			page.should have_selector('h1', :text => 'Contact')
		end

		it "should have the title 'Contact'" do
      		visit contact_path
      		page.should have_selector('title',
            text: "| Contact")
    	end
	end


end