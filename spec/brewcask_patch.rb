class Specinfra::Command::Darwin::Base::Package < Specinfra::Command::Base::Package
  class << self

    def check_is_installed_by_homebrew_cask(package, version=nil)
      escaped_package = escape(File.basename(package))
      if version
        cmd = "brew cask info #{escaped_package} | grep -E '^$(brew --prefix)/Caskroom/#{escaped_package}/#{escape(version)}'"
      else
        cmd = "#{brew_cask_list} | grep -E '^#{escaped_package}$'"
      end
      cmd
    end

    def brew_cask_list
      # Since `brew cask list` is slow, directly check Caskroom directory
      "ls -1 $(brew --prefix)/Caskroom/"
    end
  end
end

