package Google::Ads::AdWords::v201502::AdGroupBidModifier;
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

my %campaignId_of :ATTR(:get<campaignId>);
my %adGroupId_of :ATTR(:get<adGroupId>);
my %criterion_of :ATTR(:get<criterion>);
my %bidModifier_of :ATTR(:get<bidModifier>);
my %bidModifierSource_of :ATTR(:get<bidModifierSource>);

__PACKAGE__->_factory(
    [ qw(        campaignId
        adGroupId
        criterion
        bidModifier
        bidModifierSource

    ) ],
    {
        'campaignId' => \%campaignId_of,
        'adGroupId' => \%adGroupId_of,
        'criterion' => \%criterion_of,
        'bidModifier' => \%bidModifier_of,
        'bidModifierSource' => \%bidModifierSource_of,
    },
    {
        'campaignId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'adGroupId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'criterion' => 'Google::Ads::AdWords::v201502::Criterion',
        'bidModifier' => 'SOAP::WSDL::XSD::Typelib::Builtin::double',
        'bidModifierSource' => 'Google::Ads::AdWords::v201502::BidModifierSource',
    },
    {

        'campaignId' => 'campaignId',
        'adGroupId' => 'adGroupId',
        'criterion' => 'criterion',
        'bidModifier' => 'bidModifier',
        'bidModifierSource' => 'bidModifierSource',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201502::AdGroupBidModifier

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AdGroupBidModifier from the namespace https://adwords.google.com/api/adwords/cm/v201502.

Represents an adgroup level bid modifier override for campaign level criterion bid modifier values. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * campaignId


=item * adGroupId


=item * criterion


=item * bidModifier


=item * bidModifierSource




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

