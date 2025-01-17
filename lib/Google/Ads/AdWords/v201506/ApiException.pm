package Google::Ads::AdWords::v201506::ApiException;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201506' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201506::ApplicationException);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %message_of :ATTR(:get<message>);
my %ApplicationException__Type_of :ATTR(:get<ApplicationException__Type>);
my %errors_of :ATTR(:get<errors>);

__PACKAGE__->_factory(
    [ qw(        message
        ApplicationException__Type
        errors

    ) ],
    {
        'message' => \%message_of,
        'ApplicationException__Type' => \%ApplicationException__Type_of,
        'errors' => \%errors_of,
    },
    {
        'message' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ApplicationException__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'errors' => 'Google::Ads::AdWords::v201506::ApiError',
    },
    {

        'message' => 'message',
        'ApplicationException__Type' => 'ApplicationException.Type',
        'errors' => 'errors',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::ApiException

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ApiException from the namespace https://adwords.google.com/api/adwords/cm/v201506.

Exception class for holding a list of service errors. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * errors




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

