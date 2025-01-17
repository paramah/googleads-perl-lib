package Google::Ads::AdWords::v201502::HtmlDisplayType;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/o/v201502' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %htmlOption_of :ATTR(:get<htmlOption>);

__PACKAGE__->_factory(
    [ qw(        htmlOption

    ) ],
    {
        'htmlOption' => \%htmlOption_of,
    },
    {
        'htmlOption' => 'Google::Ads::AdWords::v201502::HtmlDisplayType::HtmlOption',
    },
    {

        'htmlOption' => 'htmlOption',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201502::HtmlDisplayType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
HtmlDisplayType from the namespace https://adwords.google.com/api/adwords/o/v201502.

HTML-specific options for display ads are contained within this class. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * htmlOption




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

