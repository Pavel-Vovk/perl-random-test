# perl-random-test
Very small project for the Tests on Perl
# Jenkins conf
connet to Jenkins machine by ssh
run:
```shell
$ apt-get install cpanminus
$ cpan Test::Harness
$ cpan TAP::Formatter::JUnit
$ prove test.t --formatter=TAP::Formatter::JUnit > test_results.xml
```
