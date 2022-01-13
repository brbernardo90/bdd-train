# Before é executado antes de toda a execução.
Before do
    @app = App.new

end

After do |scenario|
    if scenario.failed?
        path = "html-report/#{scenario.__id__}.png"
        page.driver.browser.save_screenshot(path)
        attach(path, "image/png")
    end
end