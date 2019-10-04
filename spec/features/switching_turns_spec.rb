feature 'Switching turns' do

  scenario 'at the start of the game' do
    sign_in_and_play
    expect(page).to have_content("Jess's turn")
  end

  scenario 'after player 1 attacks, turn switches to player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content("Olly's turn")
    expect(page).not_to have_content("Jess's turn")
  end
end
