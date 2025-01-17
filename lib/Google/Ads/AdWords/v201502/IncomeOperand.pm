package Google::Ads::AdWords::v201502::IncomeOperand;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201502' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201502::FunctionArgumentOperand);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %FunctionArgumentOperand__Type_of :ATTR(:get<FunctionArgumentOperand__Type>);
my %tier_of :ATTR(:get<tier>);

__PACKAGE__->_factory(
    [ qw(        FunctionArgumentOperand__Type
        tier

    ) ],
    {
        'FunctionArgumentOperand__Type' => \%FunctionArgumentOperand__Type_of,
        'tier' => \%tier_of,
    },
    {
        'FunctionArgumentOperand__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'tier' => 'Google::Ads::AdWords::v201502::IncomeTier',
    },
    {

        'FunctionArgumentOperand__Type' => 'FunctionArgumentOperand.Type',
        'tier' => 'tier',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201502::IncomeOperand

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
IncomeOperand from the namespace https://adwords.google.com/api/adwords/cm/v201502.

This operand specifies the income bracket a household falls under. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * tier




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

