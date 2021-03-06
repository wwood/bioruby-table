
Given /^I have input file\(s\) named "(.*?)"$/ do |arg1|
  @filenames = arg1.split(/,/)
end

When /^I execute "(.*?)"$/ do |arg1|
  @cmd = arg1 + ' ' + @filenames.join(' ')
end

Then /^I expect the named output to match "(.*?)"$/ do |arg1|
  RegressionTest::CliExec::exec(@cmd,arg1).should be_true
end
