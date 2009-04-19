use MooseX::Declare;

role Amazon::SimpleDB::Request {
    use LWP::Simple;
    use HTTP::Request;
    
    method perform () {
        # Do the actuall request here.
        my $url = $self->uri;
        
        my $res = get($self->uri)
    }
}