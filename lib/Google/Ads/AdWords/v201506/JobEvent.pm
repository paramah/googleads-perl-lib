package Google::Ads::AdWords::v201506::JobEvent;
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

my %dateTime_of :ATTR(:get<dateTime>);
my %JobEvent__Type_of :ATTR(:get<JobEvent__Type>);

__PACKAGE__->_factory(
    [ qw(        dateTime
        JobEvent__Type

    ) ],
    {
        'dateTime' => \%dateTime_of,
        'JobEvent__Type' => \%JobEvent__Type_of,
    },
    {
        'dateTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'JobEvent__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'dateTime' => 'dateTime',
        'JobEvent__Type' => 'JobEvent.Type',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::JobEvent

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
JobEvent from the namespace https://adwords.google.com/api/adwords/cm/v201506.

An event defined by a status change of a job. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * dateTime


=item * JobEvent__Type

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 JobEvent.Type




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

