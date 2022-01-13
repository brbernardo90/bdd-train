Given('the webbrower is on beon home page') do
    @app.home.load
end

Given('the user click on Join Us button') do
    @app.home.join_us.click
end

When('the user filter the job offers with the values:') do |table|
    values = table.raw
    @app.carrers.select_filters(values[1])
end

Then('the beon website should show {string}') do |string|
    expect(@app.carrers).to have_content(string)
end


  