package Google::Ads::AdWords::v201506::FeedItem;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201506' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %feedId_of :ATTR(:get<feedId>);
my %feedItemId_of :ATTR(:get<feedItemId>);
my %status_of :ATTR(:get<status>);
my %startTime_of :ATTR(:get<startTime>);
my %endTime_of :ATTR(:get<endTime>);
my %attributeValues_of :ATTR(:get<attributeValues>);
my %policyData_of :ATTR(:get<policyData>);
my %devicePreference_of :ATTR(:get<devicePreference>);
my %scheduling_of :ATTR(:get<scheduling>);
my %campaignTargeting_of :ATTR(:get<campaignTargeting>);
my %adGroupTargeting_of :ATTR(:get<adGroupTargeting>);
my %keywordTargeting_of :ATTR(:get<keywordTargeting>);
my %urlCustomParameters_of :ATTR(:get<urlCustomParameters>);

__PACKAGE__->_factory(
    [ qw(        feedId
        feedItemId
        status
        startTime
        endTime
        attributeValues
        policyData
        devicePreference
        scheduling
        campaignTargeting
        adGroupTargeting
        keywordTargeting
        urlCustomParameters

    ) ],
    {
        'feedId' => \%feedId_of,
        'feedItemId' => \%feedItemId_of,
        'status' => \%status_of,
        'startTime' => \%startTime_of,
        'endTime' => \%endTime_of,
        'attributeValues' => \%attributeValues_of,
        'policyData' => \%policyData_of,
        'devicePreference' => \%devicePreference_of,
        'scheduling' => \%scheduling_of,
        'campaignTargeting' => \%campaignTargeting_of,
        'adGroupTargeting' => \%adGroupTargeting_of,
        'keywordTargeting' => \%keywordTargeting_of,
        'urlCustomParameters' => \%urlCustomParameters_of,
    },
    {
        'feedId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'feedItemId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'status' => 'Google::Ads::AdWords::v201506::FeedItem::Status',
        'startTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'endTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'attributeValues' => 'Google::Ads::AdWords::v201506::FeedItemAttributeValue',
        'policyData' => 'Google::Ads::AdWords::v201506::FeedItemPolicyData',
        'devicePreference' => 'Google::Ads::AdWords::v201506::FeedItemDevicePreference',
        'scheduling' => 'Google::Ads::AdWords::v201506::FeedItemScheduling',
        'campaignTargeting' => 'Google::Ads::AdWords::v201506::FeedItemCampaignTargeting',
        'adGroupTargeting' => 'Google::Ads::AdWords::v201506::FeedItemAdGroupTargeting',
        'keywordTargeting' => 'Google::Ads::AdWords::v201506::Keyword',
        'urlCustomParameters' => 'Google::Ads::AdWords::v201506::CustomParameters',
    },
    {

        'feedId' => 'feedId',
        'feedItemId' => 'feedItemId',
        'status' => 'status',
        'startTime' => 'startTime',
        'endTime' => 'endTime',
        'attributeValues' => 'attributeValues',
        'policyData' => 'policyData',
        'devicePreference' => 'devicePreference',
        'scheduling' => 'scheduling',
        'campaignTargeting' => 'campaignTargeting',
        'adGroupTargeting' => 'adGroupTargeting',
        'keywordTargeting' => 'keywordTargeting',
        'urlCustomParameters' => 'urlCustomParameters',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::FeedItem

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
FeedItem from the namespace https://adwords.google.com/api/adwords/cm/v201506.

Represents an item in a feed. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * feedId


=item * feedItemId


=item * status


=item * startTime


=item * endTime


=item * attributeValues


=item * policyData


=item * devicePreference


=item * scheduling


=item * campaignTargeting


=item * adGroupTargeting


=item * keywordTargeting


=item * urlCustomParameters




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

