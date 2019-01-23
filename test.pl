use strict;
use Test::More tests => 6;

ok 1, 'Always passing';
ok 2, 'Always passing 2';
#ok 0, "Always failing";
ok 1, 'Always passing';
ok 2, 'Always passing 2';
my $rand = int rand(3)-1;
ok $rand, "Random failing $rand";
ok $rand, "Random failing $rand";
