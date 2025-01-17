package Google::Ads::AdWords::v201506::AdGroupCriterion;
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

my %adGroupId_of :ATTR(:get<adGroupId>);
my %criterionUse_of :ATTR(:get<criterionUse>);
my %criterion_of :ATTR(:get<criterion>);
my %labels_of :ATTR(:get<labels>);
my %forwardCompatibilityMap_of :ATTR(:get<forwardCompatibilityMap>);
my %AdGroupCriterion__Type_of :ATTR(:get<AdGroupCriterion__Type>);

__PACKAGE__->_factory(
    [ qw(        adGroupId
        criterionUse
        criterion
        labels
        forwardCompatibilityMap
        AdGroupCriterion__Type

    ) ],
    {
        'adGroupId' => \%adGroupId_of,
        'criterionUse' => \%criterionUse_of,
        'criterion' => \%criterion_of,
        'labels' => \%labels_of,
        'forwardCompatibilityMap' => \%forwardCompatibilityMap_of,
        'AdGroupCriterion__Type' => \%AdGroupCriterion__Type_of,
    },
    {
        'adGroupId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'criterionUse' => 'Google::Ads::AdWords::v201506::CriterionUse',
        'criterion' => 'Google::Ads::AdWords::v201506::Criterion',
        'labels' => 'Google::Ads::AdWords::v201506::Label',
        'forwardCompatibilityMap' => 'Google::Ads::AdWords::v201506::String_StringMapEntry',
        'AdGroupCriterion__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'adGroupId' => 'adGroupId',
        'criterionUse' => 'criterionUse',
        'criterion' => 'criterion',
        'labels' => 'labels',
        'forwardCompatibilityMap' => 'forwardCompatibilityMap',
        'AdGroupCriterion__Type' => 'AdGroupCriterion.Type',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::AdGroupCriterion

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AdGroupCriterion from the namespace https://adwords.google.com/api/adwords/cm/v201506.

Represents a criterion in an ad group, used with AdGroupCriterionService. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * adGroupId


=item * criterionUse


=item * criterion


=item * labels


=item * forwardCompatibilityMap


=item * AdGroupCriterion__Type

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 AdGroupCriterion.Type




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

