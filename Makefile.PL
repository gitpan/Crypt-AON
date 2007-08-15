use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Crypt::AON',
    AUTHOR              => 'Timothy Zander <timothy.zander@alum.rpi.edu>',
    VERSION_FROM        => 'lib/Crypt/AON.pm',
    ABSTRACT_FROM       => 'lib/Crypt/AON.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Crypt-AON-*' },
);
