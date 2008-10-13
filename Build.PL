use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'POE::Component::WWW::DoctypeGrabber',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/POE/Component/WWW/DoctypeGrabber.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'POE'                                      => 0.9999,
        'POE::Component::NonBlockingWrapper::Base' => 0.002,
        'WWW::DoctypeGrabber'                      => 0.002,
    },
    add_to_cleanup      => [ 'POE-Component-WWW-DoctypeGrabber-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
