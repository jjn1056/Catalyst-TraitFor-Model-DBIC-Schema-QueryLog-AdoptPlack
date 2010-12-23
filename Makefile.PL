#!/usr/bin/env perl

use strict;
use warnings FATAL => 'all';
use inc::Module::Install;

requires 'Moose' => '1.21';
requires 'Catalyst::Component::InstancePerContext' => '0.001001';
test_requires 'Test::More' => '0.96';

all_from 'lib/Catalyst/TraitFor/Model/DBIC/Schema/QueryLog/AdoptPlack.pm';
require 'maint/Makefile.PL.include'
  if $Module::Install::AUTHOR;

WriteAll;
