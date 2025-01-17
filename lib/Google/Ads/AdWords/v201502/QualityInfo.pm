package Google::Ads::AdWords::v201502::QualityInfo;
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

my %isKeywordAdRelevanceAcceptable_of :ATTR(:get<isKeywordAdRelevanceAcceptable>);
my %isLandingPageQualityAcceptable_of :ATTR(:get<isLandingPageQualityAcceptable>);
my %qualityScore_of :ATTR(:get<qualityScore>);

__PACKAGE__->_factory(
    [ qw(        isKeywordAdRelevanceAcceptable
        isLandingPageQualityAcceptable
        qualityScore

    ) ],
    {
        'isKeywordAdRelevanceAcceptable' => \%isKeywordAdRelevanceAcceptable_of,
        'isLandingPageQualityAcceptable' => \%isLandingPageQualityAcceptable_of,
        'qualityScore' => \%qualityScore_of,
    },
    {
        'isKeywordAdRelevanceAcceptable' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'isLandingPageQualityAcceptable' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'qualityScore' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'isKeywordAdRelevanceAcceptable' => 'isKeywordAdRelevanceAcceptable',
        'isLandingPageQualityAcceptable' => 'isLandingPageQualityAcceptable',
        'qualityScore' => 'qualityScore',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201502::QualityInfo

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
QualityInfo from the namespace https://adwords.google.com/api/adwords/cm/v201502.

Container for criterion quality information. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * isKeywordAdRelevanceAcceptable


=item * isLandingPageQualityAcceptable


=item * qualityScore




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

