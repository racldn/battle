feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end


  screnario 'Testing player1 and player2 forms in capybara' do
    visit('/battle')

    fill_in 'player1',:with 'test'
    click_on 'subp1'
    expect(page).to have_content 'test'
    fill_in 'player2', :with 'test2'
    click_on 'subp2'
    expect(page).to have_content 'test2'
  end
end

