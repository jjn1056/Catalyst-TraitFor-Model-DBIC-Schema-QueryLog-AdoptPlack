use strict;
use warnings;

use inc::Module::Install 1.00;

requires 'namespace::autoclean';
requires 'Moose';
requires 'Plack::Middleware::Debug';
requires 'Carp::Clan';
requires 'DBIx::Class::QueryLog';
requires 'DBIx::Class::QueryLog::Analyzer';
requires 'Catalyst::Component::InstancePerContext';

build_requires 'Test::More' => '0.96';

all_from 'lib/Catalyst/TraitFor/Model/DBIC/Schema/QueryLog/AdoptPlack.pm';
readme_pod_from 'lib/Catalyst/TraitFor/Model/DBIC/Schema/QueryLog/AdoptPlack.pm';
auto_manifest;
auto_install;
githubmeta;
WriteAll;
