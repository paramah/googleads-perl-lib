package Google::Ads::AdWords::v201502::AdGroupExperimentData;
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

my %experimentId_of :ATTR(:get<experimentId>);
my %experimentDeltaStatus_of :ATTR(:get<experimentDeltaStatus>);
my %experimentDataStatus_of :ATTR(:get<experimentDataStatus>);
my %experimentBidMultipliers_of :ATTR(:get<experimentBidMultipliers>);

__PACKAGE__->_factory(
    [ qw(        experimentId
        experimentDeltaStatus
        experimentDataStatus
        experimentBidMultipliers

    ) ],
    {
        'experimentId' => \%experimentId_of,
        'experimentDeltaStatus' => \%experimentDeltaStatus_of,
        'experimentDataStatus' => \%experimentDataStatus_of,
        'experimentBidMultipliers' => \%experimentBidMultipliers_of,
    },
    {
        'experimentId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'experimentDeltaStatus' => 'Google::Ads::AdWords::v201502::ExperimentDeltaStatus',
        'experimentDataStatus' => 'Google::Ads::AdWords::v201502::ExperimentDataStatus',
        'experimentBidMultipliers' => 'Google::Ads::AdWords::v201502::AdGroupExperimentBidMultipliers',
    },
    {

        'experimentId' => 'experimentId',
        'experimentDeltaStatus' => 'experimentDeltaStatus',
        'experimentDataStatus' => 'experimentDataStatus',
        'experimentBidMultipliers' => 'experimentBidMultipliers',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201502::AdGroupExperimentData

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AdGroupExperimentData from the namespace https://adwords.google.com/api/adwords/cm/v201502.

Data associated with an advertiser experiment for this adgroup. <span class="constraint AdxEnabled">This is disabled for AdX.</span> 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * experimentId


=item * experimentDeltaStatus


=item * experimentDataStatus


=item * experimentBidMultipliers




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

