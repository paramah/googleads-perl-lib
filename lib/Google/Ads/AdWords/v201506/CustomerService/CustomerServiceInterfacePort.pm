package Google::Ads::AdWords::v201506::CustomerService::CustomerServiceInterfacePort;
use strict;
use warnings;
use Class::Std::Fast::Storable;
use Scalar::Util qw(blessed);
use base qw(SOAP::WSDL::Client::Base);

# only load if it hasn't been loaded before
require Google::Ads::AdWords::v201506::TypeMaps::CustomerService
    if not Google::Ads::AdWords::v201506::TypeMaps::CustomerService->can('get_class');

sub START {
    $_[0]->set_proxy('https://adwords.google.com/api/adwords/mcm/v201506/CustomerService') if not $_[2]->{proxy};
    $_[0]->set_class_resolver('Google::Ads::AdWords::v201506::TypeMaps::CustomerService')
        if not $_[2]->{class_resolver};

    $_[0]->set_prefix($_[2]->{use_prefix}) if exists $_[2]->{use_prefix};
}

sub get {
    my ($self, $body, $header) = @_;
    die "get must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'get',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Google::Ads::AdWords::v201506::CustomerService::get )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Google::Ads::AdWords::v201506::CustomerService::RequestHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub mutate {
    my ($self, $body, $header) = @_;
    die "mutate must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'mutate',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Google::Ads::AdWords::v201506::CustomerService::mutate )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Google::Ads::AdWords::v201506::CustomerService::RequestHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}




1;



__END__

=pod

=head1 NAME

Google::Ads::AdWords::v201506::CustomerService::CustomerServiceInterfacePort - SOAP Interface for the CustomerService Web Service

=head1 SYNOPSIS

 use Google::Ads::AdWords::v201506::CustomerService::CustomerServiceInterfacePort;
 my $interface = Google::Ads::AdWords::v201506::CustomerService::CustomerServiceInterfacePort->new();

 my $response;
 $response = $interface->get();
 $response = $interface->mutate();



=head1 DESCRIPTION

SOAP Interface for the CustomerService web service
located at https://adwords.google.com/api/adwords/mcm/v201506/CustomerService.

=head1 SERVICE CustomerService



=head2 Port CustomerServiceInterfacePort



=head1 METHODS

=head2 General methods

=head3 new

Constructor.

All arguments are forwarded to L<SOAP::WSDL::Client|SOAP::WSDL::Client>.

=head2 SOAP Service methods

Method synopsis is displayed with hash refs as parameters.

The commented class names in the method's parameters denote that objects
of the corresponding class can be passed instead of the marked hash ref.

You may pass any combination of objects, hash and list refs to these
methods, as long as you meet the structure.

List items (i.e. multiple occurences) are not displayed in the synopsis.
You may generally pass a list ref of hash refs (or objects) instead of a hash
ref - this may result in invalid XML if used improperly, though. Note that
SOAP::WSDL always expects list references at maximum depth position.

XML attributes are not displayed in this synopsis and cannot be set using
hash refs. See the respective class' documentation for additional information.



=head3 get

Returns details of the authorized customer. @return customer associated with the caller 

Returns a L<Google::Ads::AdWords::v201506::CustomerService::getResponse|Google::Ads::AdWords::v201506::CustomerService::getResponse> object.

 $response = $interface->get( {
  },,
 );

=head3 mutate

Update the authorized customer. <p>While there are a limited set of properties available to update, please read this <a href="https://support.google.com/analytics/answer/1033981">help center article on auto-tagging</a> before updating {@code customer.autoTaggingEnabled}. @param customer the requested updated value for the customer. @throws ApiException 

Returns a L<Google::Ads::AdWords::v201506::CustomerService::mutateResponse|Google::Ads::AdWords::v201506::CustomerService::mutateResponse> object.

 $response = $interface->mutate( {
    customer =>  $a_reference_to, # see Google::Ads::AdWords::v201506::Customer
  },,
 );



=head1 AUTHOR

Generated by SOAP::WSDL on Mon Jun 29 11:53:24 2015

=cut
