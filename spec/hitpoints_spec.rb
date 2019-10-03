feature 'Hit Points' do
  scenario 'Have starting HP' do
    sign_in_and_play
    expect(page).to have_content 'Jess: HP 60'
  end
end
