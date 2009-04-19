use MooseX::Declare;

class Amazon::SimpleDB::Iter {
    use MooseX::AttributeHelpers;
    
    has 'items' => (
        metaclass => 'Collection::List',
        is => 'ro', 
        isa => 'ArrayRef[Amazon::SimpleDB::Object]',
        default => sub { [] },
        auto_deref => 1,
        provides => {
            get => '_get',
            count => 'count',
            first => 'first',
            last => 'last',
            
        },
    );
    has 'position' => (
        metaclass => 'Counter',
        is => 'ro',
        isa => 'Int',
        default => sub { 0 },
        provides => {
            inc => '_inc',
            dec => '_dec',
            reset => 'reset',
        }
    ); 
    method 'next' () {
        my $obj = $self->_get($self->position);
        $self->_inc;
        return $obj;
    }
    
}