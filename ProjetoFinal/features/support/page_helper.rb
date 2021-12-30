Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each {|file| require file}

module Pages
    def user
        @user ||= User.new #caso a classe User não tenha sido instanciada, irá instancia-la
    end
end