feature 'Hit Points' do
  scenario 'Have starting HP' do
    sign_in_and_play
    expect(page).to have_content 'Olly 60 :HP'
  end
end
