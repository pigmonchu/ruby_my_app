require 'rails_helper'
require 'capybara'

describe 'Kata' do

# comprobamos que a) existe pagina y que dentro de ella tenemos un kata_title y una kata_description
# Este test implica construir un esqueleto de aplicación, con su modelo, su página, su registro,...
    it 'can be read' do
        kata_title = 'Kata titulo'
        kata_description = 'Kata descripcion' 

        kata = Kata.new(
            title: kata_title,
            description: kata_description
        )
        kata.save

        visit root_path # parece obvio
        click_on(kata_title)

        expect(page).to have_content(kata_title)
        expect(page).to have_content(kata_description)

    end
end