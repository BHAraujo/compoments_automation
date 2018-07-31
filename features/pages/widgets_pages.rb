class AutoComplete < SitePrism::Page

    set_url "/widgets/autocomplete"

    element :input_autocomplete, "#autocomplete-input"

    def digitar_estado(estado)
      input_autocomplete.set(estado)
    end

    def select_estado
      find("#autocomplete-input").send_keys(:arrow_down, :enter)
    end

    def verificar_estado
      page.execute_script("""return document.getElementById('autocomplete-input').value""")

    end
end


class Datapicker < SitePrism::Page

    set_url "widgets/datapicker"

    element :input_datapicker, "#datepicker"
    element :show_mouth_datapicker, ".select-wrapper.select-month"
    element :show_year_datapicker, ".select-wrapper.select-year"
    element :btn_ok, ".btn-flat.datepicker-done"


    def selecionar_data(data)
      @dia =  data.split('/')[0]
      @mes =  data.split('/')[1]
      @ano =  data.split('/')[2]

      input_datapicker.click

      #mês
      show_mouth_datapicker.click
      select_mouth_datapicker = page.find(:xpath, "//span[text()='#{@mes}']")
      select_mouth_datapicker.click

      #ano
      if @ano != '2018'
        show_year_datapicker.click
        select_year_datapicker = page.find(:xpath, "//span[text()='#{@ano}']")
        select_year_datapicker.click
        sleep 2
      end

      #dia
      select_day_datapicker = page.find("td[data-day='#{@dia}']")
      select_day_datapicker.click

      btn_ok.click

    end

end
