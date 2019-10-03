def sign_in_and_play
  visit('/')
    fill_in :player_1_name, with: 'Jess'
    fill_in :player_2_name, with: 'Olly'
    click_button 'Submit'
end