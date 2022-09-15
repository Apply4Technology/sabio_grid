# encoding: utf-8
require 'acceptance_helper'

describe 'with_resultset WiceGrid', type: :request, js: true do
  before :each do
    visit '/resultset_processings'
  end

  it 'should return records displayed on the page' do
    expect(page).to have_content('10 records on the current page: 507, 519, 537, 540, 511, 515, 523, 524, 527, and 531')
  end

  it 'should show records displayed on all pages with a text filter selection' do
    fill_in('g_f_title', with: 'ed')
    expect(page).to have_content('1-2 / 2')
    expect(page).to have_content('2 records on the current page: 507 and 534')
  end

  it 'should show records displayed on all pages with a filter selection' do
    select 'no',  from: 'g_f_archived'
    expect(page).to have_content('1-10 / 46')
    expect(page).to have_content('10 records on the current page: 507, 519, 537, 540, 511, 515, 523, 527, 531, and 542')
  end

  it 'should show records displayed on all pages with a custom filter selection' do
    select 'Cancelled',  from: 'g_f_status_id'
    expect(page).to have_content('1-8 / 8')
    expect(page).to have_content('8 records on the current page: 511, 515, 523, 524, 527, 531, 542, and 551')
  end
end
