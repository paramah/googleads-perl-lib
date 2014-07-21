package Google::Ads::AdWords::v201406::Budget;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201406' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %budgetId_of :ATTR(:get<budgetId>);
my %name_of :ATTR(:get<name>);
my %period_of :ATTR(:get<period>);
my %amount_of :ATTR(:get<amount>);
my %deliveryMethod_of :ATTR(:get<deliveryMethod>);
my %referenceCount_of :ATTR(:get<referenceCount>);
my %isExplicitlyShared_of :ATTR(:get<isExplicitlyShared>);
my %status_of :ATTR(:get<status>);

__PACKAGE__->_factory(
    [ qw(        budgetId
        name
        period
        amount
        deliveryMethod
        referenceCount
        isExplicitlyShared
        status

    ) ],
    {
        'budgetId' => \%budgetId_of,
        'name' => \%name_of,
        'period' => \%period_of,
        'amount' => \%amount_of,
        'deliveryMethod' => \%deliveryMethod_of,
        'referenceCount' => \%referenceCount_of,
        'isExplicitlyShared' => \%isExplicitlyShared_of,
        'status' => \%status_of,
    },
    {
        'budgetId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'period' => 'Google::Ads::AdWords::v201406::Budget::BudgetPeriod',
        'amount' => 'Google::Ads::AdWords::v201406::Money',
        'deliveryMethod' => 'Google::Ads::AdWords::v201406::Budget::BudgetDeliveryMethod',
        'referenceCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'isExplicitlyShared' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'status' => 'Google::Ads::AdWords::v201406::Budget::BudgetStatus',
    },
    {

        'budgetId' => 'budgetId',
        'name' => 'name',
        'period' => 'period',
        'amount' => 'amount',
        'deliveryMethod' => 'deliveryMethod',
        'referenceCount' => 'referenceCount',
        'isExplicitlyShared' => 'isExplicitlyShared',
        'status' => 'status',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201406::Budget

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Budget from the namespace https://adwords.google.com/api/adwords/cm/v201406.

Budgets are used for managing the amount of money spent on AdWords. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * budgetId


=item * name


=item * period


=item * amount


=item * deliveryMethod


=item * referenceCount


=item * isExplicitlyShared


=item * status




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut
