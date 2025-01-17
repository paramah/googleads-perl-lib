package Google::Ads::AdWords::v201502::FeedMapping;
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

my %feedMappingId_of :ATTR(:get<feedMappingId>);
my %feedId_of :ATTR(:get<feedId>);
my %placeholderType_of :ATTR(:get<placeholderType>);
my %status_of :ATTR(:get<status>);
my %attributeFieldMappings_of :ATTR(:get<attributeFieldMappings>);
my %criterionType_of :ATTR(:get<criterionType>);

__PACKAGE__->_factory(
    [ qw(        feedMappingId
        feedId
        placeholderType
        status
        attributeFieldMappings
        criterionType

    ) ],
    {
        'feedMappingId' => \%feedMappingId_of,
        'feedId' => \%feedId_of,
        'placeholderType' => \%placeholderType_of,
        'status' => \%status_of,
        'attributeFieldMappings' => \%attributeFieldMappings_of,
        'criterionType' => \%criterionType_of,
    },
    {
        'feedMappingId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'feedId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'placeholderType' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'status' => 'Google::Ads::AdWords::v201502::FeedMapping::Status',
        'attributeFieldMappings' => 'Google::Ads::AdWords::v201502::AttributeFieldMapping',
        'criterionType' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'feedMappingId' => 'feedMappingId',
        'feedId' => 'feedId',
        'placeholderType' => 'placeholderType',
        'status' => 'status',
        'attributeFieldMappings' => 'attributeFieldMappings',
        'criterionType' => 'criterionType',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201502::FeedMapping

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
FeedMapping from the namespace https://adwords.google.com/api/adwords/cm/v201502.

A FeedMapping represents a mapping between feed attributes in a specific feed and placeholder fields for a specific placeholder type. This will tell the ads serving system which parts of the feed item should be used when populating a placeholder. Without this mapping the placeholder cannot be populated and the extension can not be displayed. <p>For a list of feed placeholders, see <a href="/adwords/api/docs/appendix/placeholders"> https://developers.google.com/adwords/api/docs/appendix/placeholders </a></p> 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * feedMappingId


=item * feedId


=item * placeholderType


=item * status


=item * attributeFieldMappings


=item * criterionType




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

