use strict;
use Test::More tests => 5;

ok 1, 'Always passing';
ok 2, 'Always passing 2';
#ok 0, "Always failing";
ok 1, 'Always passing';
ok 2, 'Always passing 2';
my $rand = int rand(2);
ok $rand, 'Random failing';
ok $rand, 'Random failing';
