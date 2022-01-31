After do |scenario|
    scenario_name = scenario.name.gsub(/[^\w\-]/, " ")
  
    if scenario.failed?
      tira_foto(scenario_name.downcase!, "falhou")
    else
      tira_foto(scenario_name.downcase!, "passou")
    end
  end

def tira_foto(file_name, resultado)
    data = Time.now.strftime("%F").to_s
    h_m_s = Time.now.strftime("%H%M%S%p").to_s
    temp_shot = page.save_screenshot("results/evidencias/#{data}/temp_screen#{h_m_s}.png")
    shot = Base64.encode64(File.open(temp_shot).read)
    attach(temp_shot, "image/png")
  end
  
  def temp_shot
    temp_shot = page.save_screenshot("results/evidencias/#{$data}/temp_shot#{$h_m_s}.png")
    shot = Base64.encode64(File.open(temp_shot, "rb").read)
  end