# perl-random-test
Very small project for the Tests on Perl
# Jenkins conf
~~~
apt-get install cpanminus
cpan Test::Harness
cpan TAP::Formatter::JUnit
prove test.t --formatter=TAP::Formatter::JUnit > test_results.xml
~~~
