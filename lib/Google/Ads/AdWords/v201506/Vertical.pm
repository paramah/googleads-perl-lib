package Google::Ads::AdWords::v201506::Vertical;
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
my %verticalId_of :ATTR(:get<verticalId>);
my %verticalParentId_of :ATTR(:get<verticalParentId>);
my %path_of :ATTR(:get<path>);

__PACKAGE__->_factory(
    [ qw(        id
        type
        Criterion__Type
        verticalId
        verticalParentId
        path

    ) ],
    {
        'id' => \%id_of,
        'type' => \%type_of,
        'Criterion__Type' => \%Criterion__Type_of,
        'verticalId' => \%verticalId_of,
        'verticalParentId' => \%verticalParentId_of,
        'path' => \%path_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'type' => 'Google::Ads::AdWords::v201506::Criterion::Type',
        'Criterion__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'verticalId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'verticalParentId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'path' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'id' => 'id',
        'type' => 'type',
        'Criterion__Type' => 'Criterion.Type',
        'verticalId' => 'verticalId',
        'verticalParentId' => 'verticalParentId',
        'path' => 'path',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::Vertical

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Vertical from the namespace https://adwords.google.com/api/adwords/cm/v201506.

Use verticals to target or exclude placements in the Google Display Network based on the category into which the placement falls (for example, "Pets &amp; Animals/Pets/Dogs"). <a href="/adwords/api/docs/appendix/verticals">View the complete list of available vertical categories.</a> <span class="constraint AdxEnabled">This is enabled for AdX.</span> 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * verticalId


=item * verticalParentId


=item * path




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

