#!/usr/bin/perl
sub get_single_case_result {
   my ($result, $number, $test_name) = @_;

   return "  <testCase>" . "\n"
    . "    <result>" . (($result eq 'ok') ? "success" : 'failed') . "</result>" . "\n"
    . "    <testNum>$number</testNum>" . "\n"
    . "    <testName>$test_name</testName>" . "\n"
    . "  </testCase>"  . "\n";
}

sub consume_test_line {
  my ($line) = @_;

  return '' if ($line =~ /^\d+\.\.\d+/);
  return '' if ($line =~ /^#/);

  my ($result, $number, $test_name) = $line =~ /((?:not )?ok) (\d+) - (.*)/;

  return '' unless ($result && $number && $test_name);

  return get_single_case_result($result, $number, $test_name);
}

print "<testResults>\n";
while (my $line = <>){
  print consume_test_line($line);
}
print "</testResults>\n";