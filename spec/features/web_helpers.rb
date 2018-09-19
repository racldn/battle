def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Robbie'
  fill_in :player_2_name, with: 'Victor'
  click_button 'Submit'
end
