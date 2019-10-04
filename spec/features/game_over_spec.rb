feature 'Game over' do
  # context 'when Player 1 reaches 0 HP first' do
  #   before do
  #     sign_in_and_play
  #     attack_and_confirm
  #     allow(Kernel).to receive(:rand).and_return(60)
  #   end

  #   scenario 'Player 1 loses' do
  #     click_button 'Attack'
  #     expect(page).to have_content 'Jess loses!'
  #   end
  # end

  scenario 'Player 2 loses the game when HP is 0' do
    sign_in_and_play
    10.times { attack_and_confirm }
    click_button 'Attack'
    expect(page).to have_content("Olly loses!")
  end
end
