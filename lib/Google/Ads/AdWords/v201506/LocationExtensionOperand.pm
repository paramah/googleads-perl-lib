package Google::Ads::AdWords::v201506::LocationExtensionOperand;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201506' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201506::FunctionArgumentOperand);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %FunctionArgumentOperand__Type_of :ATTR(:get<FunctionArgumentOperand__Type>);
my %radius_of :ATTR(:get<radius>);
my %locationId_of :ATTR(:get<locationId>);

__PACKAGE__->_factory(
    [ qw(        FunctionArgumentOperand__Type
        radius
        locationId

    ) ],
    {
        'FunctionArgumentOperand__Type' => \%FunctionArgumentOperand__Type_of,
        'radius' => \%radius_of,
        'locationId' => \%locationId_of,
    },
    {
        'FunctionArgumentOperand__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'radius' => 'Google::Ads::AdWords::v201506::ConstantOperand',
        'locationId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'FunctionArgumentOperand__Type' => 'FunctionArgumentOperand.Type',
        'radius' => 'radius',
        'locationId' => 'locationId',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::LocationExtensionOperand

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
LocationExtensionOperand from the namespace https://adwords.google.com/api/adwords/cm/v201506.

This operand specifies information required for location extension targeting. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * radius


=item * locationId




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

