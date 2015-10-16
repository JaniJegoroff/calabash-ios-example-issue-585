require 'calabash-cucumber/launcher'

Before do |scenario|
  @calabash_launcher = Calabash::Cucumber::Launcher.new
  unless @calabash_launcher.calabash_no_launch?
    options = {
      :uia_strategy => :preferences
    }
    @calabash_launcher.relaunch(options)
    @calabash_launcher.calabash_notify(self)
  end
end

After do |scenario|

end

