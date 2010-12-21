#!/usr/bin/env perl

use strict;
use warnings FATAL => 'all';
use inc::Module::Install;

requires 'namespace::autoclean';
requires 'Moose';
requires 'Plack::Middleware::Debug';
requires 'Carp::Clan';
requires 'DBIx::Class::QueryLog';
requires 'DBIx::Class::QueryLog::Analyzer';
requires 'Catalyst::Component::InstancePerContext';
test_requires 'Test::More' => '0.96';

all_from 'lib/Catalyst/TraitFor/Model/DBIC/Schema/QueryLog/AdoptPlack.pm';
require 'maint/Makefile.PL.include'
  if $Module::Install::AUTHOR;

WriteAll;
