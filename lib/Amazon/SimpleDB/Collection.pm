use MooseX::Declare;

role Amazon::SimpleDB::Collection {
    use Amazon::SimpleDB::Iter;
    
    has 'items' => (
        is => 'ro',
        isa => 'ArrayRef[Amazon::SimpleDB::Object]',
        default => sub { [] },
    );
    method iter () {
        return Amazon::SimpleDB::Iter->new(items => $self->items);
    }
}