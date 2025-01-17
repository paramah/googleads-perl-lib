package Google::Ads::AdWords::v201506::DisapprovalReason;
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

my %shortName_of :ATTR(:get<shortName>);

__PACKAGE__->_factory(
    [ qw(        shortName

    ) ],
    {
        'shortName' => \%shortName_of,
    },
    {
        'shortName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'shortName' => 'shortName',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::DisapprovalReason

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
DisapprovalReason from the namespace https://adwords.google.com/api/adwords/cm/v201506.

Container for information about why an AdWords entity was disapproved. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * shortName




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

