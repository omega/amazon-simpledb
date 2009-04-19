use MooseX::Declare;

class Amazon::SimpleDB {
    has [qw/key secret/] => (is => 'ro', isa => 'Str', required => 1);
    
    method domains () {
        
        my $res = $self->request('ListDomains');
    }
    
    method request (Str $action) {
        # Create a request of the propper class?
        
        my $cls = 'Amazon::SimpleDB::Request::' . $action;
        
        my $obj = $cls->new();
        
        return $obj->perform();
        
        
    }
}