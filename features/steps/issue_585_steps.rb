When(/^I reproduce issue 585$/) do
  query = "view marked:'Third'"
  wait_for_element_exists(query)
  touch(query)

  query = "view marked:'notificationScreen'"
  wait_for_element_exists(query)
  wait_for_none_animating

  query = "view marked:'dismissButton'"
  wait_for_element_exists(query)
  touch(query)

  query = "view marked:'thirdView'"
  wait_for_element_exists(query)
end

