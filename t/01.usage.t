#!/usr/bin/perl -w

use strict;
use Test::More tests => 1;
use Amazon::SimpleDB;


my $sdb = Amazon:SimpleDB->new(key => 'something', secret => 'something');

my $domains = $sdb->domains();

{
    my $iter = $domains->iter;
    while (my $domain = $iter->next) {
        isa_ok($domain, "Amazon::SimpleDB::Domain");
    }
    
}

my $domain = $sdb->domain('test-domain');
#my $domain = Amazon::SimpleDB->connect(domain => 'blabla');

my @items = $domain->
ok(assertion);
