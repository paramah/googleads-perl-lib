package Google::Ads::AdWords::v201402::AdExtensionOverride;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201402' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %adId_of :ATTR(:get<adId>);
my %adExtension_of :ATTR(:get<adExtension>);
my %overrideInfo_of :ATTR(:get<overrideInfo>);
my %status_of :ATTR(:get<status>);
my %approvalStatus_of :ATTR(:get<approvalStatus>);

__PACKAGE__->_factory(
    [ qw(        adId
        adExtension
        overrideInfo
        status
        approvalStatus

    ) ],
    {
        'adId' => \%adId_of,
        'adExtension' => \%adExtension_of,
        'overrideInfo' => \%overrideInfo_of,
        'status' => \%status_of,
        'approvalStatus' => \%approvalStatus_of,
    },
    {
        'adId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'adExtension' => 'Google::Ads::AdWords::v201402::AdExtension',
        'overrideInfo' => 'Google::Ads::AdWords::v201402::OverrideInfo',
        'status' => 'Google::Ads::AdWords::v201402::AdExtensionOverride::Status',
        'approvalStatus' => 'Google::Ads::AdWords::v201402::AdExtensionOverride::ApprovalStatus',
    },
    {

        'adId' => 'adId',
        'adExtension' => 'adExtension',
        'overrideInfo' => 'overrideInfo',
        'status' => 'status',
        'approvalStatus' => 'approvalStatus',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201402::AdExtensionOverride

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AdExtensionOverride from the namespace https://adwords.google.com/api/adwords/cm/v201402.

Represents an ad level ad extension override. An ad extension override specifies the ad extension that must be used if the ad is served with any ad extension data. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * adId


=item * adExtension


=item * overrideInfo


=item * status


=item * approvalStatus




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut
