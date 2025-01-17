package Google::Ads::AdWords::v201506::UserListConversionType;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/rm/v201506' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %id_of :ATTR(:get<id>);
my %name_of :ATTR(:get<name>);
my %category_of :ATTR(:get<category>);

__PACKAGE__->_factory(
    [ qw(        id
        name
        category

    ) ],
    {
        'id' => \%id_of,
        'name' => \%name_of,
        'category' => \%category_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'category' => 'Google::Ads::AdWords::v201506::UserListConversionType::Category',
    },
    {

        'id' => 'id',
        'name' => 'name',
        'category' => 'category',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::UserListConversionType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
UserListConversionType from the namespace https://adwords.google.com/api/adwords/rm/v201506.

Represents a conversion type used for building remarketing user lists. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * id


=item * name


=item * category




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

