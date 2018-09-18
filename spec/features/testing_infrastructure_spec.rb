feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end


  scenario 'Testing player1 and player2 forms in capybara' do
    visit('/battle')

    fill_in 'player1',:with => 'Robbie'
    fill_in 'player2', :with =>'Victor'
    click_on 'Submit'
    expect(page).to have_content 'Robbie Vs Victor'
  end
end
