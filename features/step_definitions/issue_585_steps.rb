When /^I reproduce issue 585/ do
  tap_mark('Third')
  wait_for { query("view marked:'notificationScreen'") }

  tap_mark('dismissButton')
  wait_for { query("view marked:'thirdView'") }
end
