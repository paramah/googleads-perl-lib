package Google::Ads::AdWords::v201506::DisplayAttribute;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201506' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201506::LabelAttribute);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %LabelAttribute__Type_of :ATTR(:get<LabelAttribute__Type>);
my %backgroundColor_of :ATTR(:get<backgroundColor>);
my %description_of :ATTR(:get<description>);

__PACKAGE__->_factory(
    [ qw(        LabelAttribute__Type
        backgroundColor
        description

    ) ],
    {
        'LabelAttribute__Type' => \%LabelAttribute__Type_of,
        'backgroundColor' => \%backgroundColor_of,
        'description' => \%description_of,
    },
    {
        'LabelAttribute__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'backgroundColor' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'description' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'LabelAttribute__Type' => 'LabelAttribute.Type',
        'backgroundColor' => 'backgroundColor',
        'description' => 'description',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::DisplayAttribute

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
DisplayAttribute from the namespace https://adwords.google.com/api/adwords/cm/v201506.

Attributes for Text Labels. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * backgroundColor


=item * description




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

