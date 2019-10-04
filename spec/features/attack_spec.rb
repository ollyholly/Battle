feature 'Attacking' do
  scenario 'player 1 can attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Jess attacked Olly'
  end
  
  scenario 'player 1 reduces player 2 HP' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Olly 60 :HP'
    expect(page).to have_content 'Olly 50 :HP'
  end

  scenario 'player 1 is attacked and receives a confirmation' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content("Olly attacked Jess")
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Jess 60 :HP'
    expect(page).to have_content 'Jess 50 :HP'
  end

end
