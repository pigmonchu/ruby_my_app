require 'rails_helper'
require 'capybara'

describe 'Kata' do

    it 'can be read' do
        kata_title = 'Segundo titulo'
        kata_description = 'Segunda description'
        
#        create_kata()
        kata = Kata.new(title: 'Kata title', description: 'Kata description')
        kata.save

#        create_kata(kata_title, kata_description)
        kata = Kata.new(title: kata_title, description: kata_description)
        kata.save

        visit root_path

        click_on(kata_title)
        expect(page).to have_content(kata_title)
        expect(page).to have_content(kata_description)

    end

    def create_kata(title: 'Kata title', description: 'Kata description')
        kata = Kata.new(title: title, description: description)
        kata.save

        kata
    end
end