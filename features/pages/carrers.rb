class Carrers < SitePrism::Page
    elements :filters, 'select.form-select'
    elements :results, 'div.job-offer'

    def select_filters(values)
        filters.zip(values).each do | filter, value|
            filter.all('option')[get_index(filter, value)].select_option      
        end
    end

    def get_index(filter, value)
        options = filter.all('option').map{ | el | el.text.strip}
        
        if options[1].include? '(' #to threat the first filter
            options = options.map{ | el | el.split('(')[0].strip}
        end

        options.index(value)
    end
end