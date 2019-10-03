feature 'switching turns' do
  scenario 'After player 1 attack, turn switches to player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).to have_content("Olly's turn")
  end
end
