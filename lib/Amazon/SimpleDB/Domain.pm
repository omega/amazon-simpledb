use MooseX::Declare;

class Amazon::SimpleDB::Domain with Amazon::SimpleDB::Object {
    has 'name' => (is => 'ro', isa => 'Str', required => 1);
    
}