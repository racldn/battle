feature 'play page' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Robbie vs. Victor'
  end

  scenario 'seeing player hit points' do
    sign_in_and_play
    expect(page).to have_content 'Victor: 60HP'
  end
end

feature 'Attacking' do
  scenario 'Attacking player 2 and get a confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Robbie attacked Victor"
  end

  scenario 'Reduces hit points by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content "Victor: 60HP"
    expect(page).to have_content "Victor 50HP"
  end
end
