use Test::More tests => 6;
BEGIN { use_ok('Crypt::AON') };

my $AON_blank = Crypt::AON->new();
isa_ok($AON_blank, Crypt::AON);
can_ok($AON_blank, q/new/);
is($AON_blank->size(),128,'Size of block for $AON');
is(length $AON_blank->K_0(), 16, 'Length of default K_0');
#my $AON_badsize = Crypt::AON->new(size=>12);
#isa_ok($AON_badsize, Crypt::AON, '$AON_badsize is an Crypt::AON');
#is($AON_badsize->size(),128,'Size of block for $AON_badsize');
#my $AON_1024 = Crypt::AON->new(size=>1024);
#isa_ok($AON_1024, Crypt::AON, '$AON_1024 is an Crypt::AON');
#is($AON_1024->size(),1024,'Size of block for $AON_1024');
#is(length $AON_1024->K_0(), 128, 'Length of 1024 K_0');
#is($AON_1024->size(140),1024,'Size of block for $AON_1024, should warn');

my @transformed_alphabet_blank = $AON_blank->encrypt(plaintext=>"abcdefghijklmnopqrstuvwxyz");
my $unstransformed_alphabet_blank = $AON_blank->decrypt(cryptotext=>\@transformed_alphabet_blank);

is($unstransformed_alphabet_blank, "abcdefghijklmnopqrstuvwxyz", "untransform(tranform(alphabet)) works");

