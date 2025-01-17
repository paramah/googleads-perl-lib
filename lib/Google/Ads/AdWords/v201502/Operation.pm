package Google::Ads::AdWords::v201502::Operation;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201502' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %operator_of :ATTR(:get<operator>);
my %Operation__Type_of :ATTR(:get<Operation__Type>);

__PACKAGE__->_factory(
    [ qw(        operator
        Operation__Type

    ) ],
    {
        'operator' => \%operator_of,
        'Operation__Type' => \%Operation__Type_of,
    },
    {
        'operator' => 'Google::Ads::AdWords::v201502::Operator',
        'Operation__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'operator' => 'operator',
        'Operation__Type' => 'Operation.Type',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201502::Operation

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Operation from the namespace https://adwords.google.com/api/adwords/cm/v201502.

This represents an operation that includes an operator and an operand specified type. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * operator


=item * Operation__Type

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 Operation.Type




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

