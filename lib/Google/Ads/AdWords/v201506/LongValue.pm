package Google::Ads::AdWords::v201506::LongValue;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201506' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201506::NumberValue);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %ComparableValue__Type_of :ATTR(:get<ComparableValue__Type>);
my %number_of :ATTR(:get<number>);

__PACKAGE__->_factory(
    [ qw(        ComparableValue__Type
        number

    ) ],
    {
        'ComparableValue__Type' => \%ComparableValue__Type_of,
        'number' => \%number_of,
    },
    {
        'ComparableValue__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'number' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'ComparableValue__Type' => 'ComparableValue.Type',
        'number' => 'number',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::LongValue

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
LongValue from the namespace https://adwords.google.com/api/adwords/cm/v201506.

Number value type for constructing long valued ranges. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * number




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

