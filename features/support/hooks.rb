

# Before do # Uma única vez durante toda a execução do Cucumber
#   $limpa_banco ||= 1
#   DB.execute('delete from produtos') if $limpa_banco == 1
#   $limpa_banco = 0
# end

Before do
  page.current_window.resize_to(1440, 900)
end

After do |scenario|
  nome_cenario = scenario.name.tr(' ', '_').gsub(/[^A-Za-z0-9 ]/, '').downcase!
  screenshot = "log/shots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Clique aqui para ver a evidência!')
end
