feature 'View hit Points' do
  scenario 'I want to see P1 HP' do
    sign_in_and_play
    expect(page).to have_content 'Jess 60 :HP'
  end
  scenario 'I want to see P2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Olly 60 :HP'
  end
end
