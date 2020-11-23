require 'report_builder'

Before do |scenario|
    @unidade = UnidadeScreen.new
    @home = HomeScreen.new

    visit 'https://www.fleury.com.br'
        Capybara.current_session.current_window.resize_to(1366, 768)
end

#Esta configuração é para que tire print da tela com sucesso ou com falha
After do |scenario|
    sufix = ('error' if scenario.failed?) || 'sucess'
    name = scenario.name.tr('', '_').downcase
    save_screenshot("images/#{sufix}-#{name}.png")
    embed("images/#{sufix}-#{name}.png", 'image/png', 'Screenshot')
end 

#Esta configuração é para gerar um report com grafico e que de maior visibilidade dos testes
at_exit do
    ReportBuilder.configure do |config|
        config.input_path = 'logs/report.json'
        config.report_path = 'logs/report'
        config.report_types = [:html]
        config.report_title = 'Fleury'
        config.color = "indigo"
        config.additional_info = {browser: 'Chrome', environment: 'Fleury'}
    end 
  ReportBuilder.build_report
end

