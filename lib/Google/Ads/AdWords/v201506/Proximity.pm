package Google::Ads::AdWords::v201506::Proximity;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201506' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201506::Criterion);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %id_of :ATTR(:get<id>);
my %type_of :ATTR(:get<type>);
my %Criterion__Type_of :ATTR(:get<Criterion__Type>);
my %geoPoint_of :ATTR(:get<geoPoint>);
my %radiusDistanceUnits_of :ATTR(:get<radiusDistanceUnits>);
my %radiusInUnits_of :ATTR(:get<radiusInUnits>);
my %address_of :ATTR(:get<address>);

__PACKAGE__->_factory(
    [ qw(        id
        type
        Criterion__Type
        geoPoint
        radiusDistanceUnits
        radiusInUnits
        address

    ) ],
    {
        'id' => \%id_of,
        'type' => \%type_of,
        'Criterion__Type' => \%Criterion__Type_of,
        'geoPoint' => \%geoPoint_of,
        'radiusDistanceUnits' => \%radiusDistanceUnits_of,
        'radiusInUnits' => \%radiusInUnits_of,
        'address' => \%address_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'type' => 'Google::Ads::AdWords::v201506::Criterion::Type',
        'Criterion__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'geoPoint' => 'Google::Ads::AdWords::v201506::GeoPoint',
        'radiusDistanceUnits' => 'Google::Ads::AdWords::v201506::Proximity::DistanceUnits',
        'radiusInUnits' => 'SOAP::WSDL::XSD::Typelib::Builtin::double',
        'address' => 'Google::Ads::AdWords::v201506::Address',
    },
    {

        'id' => 'id',
        'type' => 'type',
        'Criterion__Type' => 'Criterion.Type',
        'geoPoint' => 'geoPoint',
        'radiusDistanceUnits' => 'radiusDistanceUnits',
        'radiusInUnits' => 'radiusInUnits',
        'address' => 'address',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::Proximity

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Proximity from the namespace https://adwords.google.com/api/adwords/cm/v201506.

Represents a Proximity Criterion. A proximity is an area within a certain radius of a point with the center point being described by a lat/long pair. The caller may also alternatively provide address fields which will be geocoded into a lat/long pair. Note: If a geoPoint value is provided, the address is not used for calculating the lat/long to target. <p> <span class="constraint AdxEnabled">This is enabled for AdX.</span> 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * geoPoint


=item * radiusDistanceUnits


=item * radiusInUnits


=item * address




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

