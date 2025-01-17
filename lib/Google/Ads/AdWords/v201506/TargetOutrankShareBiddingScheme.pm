package Google::Ads::AdWords::v201506::TargetOutrankShareBiddingScheme;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201506' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201506::BiddingScheme);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %BiddingScheme__Type_of :ATTR(:get<BiddingScheme__Type>);
my %targetOutrankShare_of :ATTR(:get<targetOutrankShare>);
my %competitorDomain_of :ATTR(:get<competitorDomain>);
my %maxCpcBidCeiling_of :ATTR(:get<maxCpcBidCeiling>);
my %bidChangesForRaisesOnly_of :ATTR(:get<bidChangesForRaisesOnly>);
my %raiseBidWhenLowQualityScore_of :ATTR(:get<raiseBidWhenLowQualityScore>);

__PACKAGE__->_factory(
    [ qw(        BiddingScheme__Type
        targetOutrankShare
        competitorDomain
        maxCpcBidCeiling
        bidChangesForRaisesOnly
        raiseBidWhenLowQualityScore

    ) ],
    {
        'BiddingScheme__Type' => \%BiddingScheme__Type_of,
        'targetOutrankShare' => \%targetOutrankShare_of,
        'competitorDomain' => \%competitorDomain_of,
        'maxCpcBidCeiling' => \%maxCpcBidCeiling_of,
        'bidChangesForRaisesOnly' => \%bidChangesForRaisesOnly_of,
        'raiseBidWhenLowQualityScore' => \%raiseBidWhenLowQualityScore_of,
    },
    {
        'BiddingScheme__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'targetOutrankShare' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'competitorDomain' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'maxCpcBidCeiling' => 'Google::Ads::AdWords::v201506::Money',
        'bidChangesForRaisesOnly' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'raiseBidWhenLowQualityScore' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'BiddingScheme__Type' => 'BiddingScheme.Type',
        'targetOutrankShare' => 'targetOutrankShare',
        'competitorDomain' => 'competitorDomain',
        'maxCpcBidCeiling' => 'maxCpcBidCeiling',
        'bidChangesForRaisesOnly' => 'bidChangesForRaisesOnly',
        'raiseBidWhenLowQualityScore' => 'raiseBidWhenLowQualityScore',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::TargetOutrankShareBiddingScheme

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
TargetOutrankShareBiddingScheme from the namespace https://adwords.google.com/api/adwords/cm/v201506.

Target Outrank Share bidding strategy is an automated bidding strategy which automatically sets bids so that the customer's ads appear above a specified competitors' ads for a specified target fraction of the advertiser's eligible impressions on Google.com. <span class="constraint AdxEnabled">This is disabled for AdX.</span> 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * targetOutrankShare


=item * competitorDomain


=item * maxCpcBidCeiling


=item * bidChangesForRaisesOnly


=item * raiseBidWhenLowQualityScore




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

