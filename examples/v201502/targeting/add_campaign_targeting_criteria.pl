#!/usr/bin/perl -w
#
# Copyright 2015, Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This example adds various types of targeting criteria to a campaign. To get
# campaigns, run basic_operations/get_campaigns.pl.
#
# Tags: CampaignCriterionService.mutate
# Author: David Torres <api.davidtorres@gmail.com>

use strict;
use lib "../../../lib";

use Google::Ads::AdWords::Client;
use Google::Ads::AdWords::Logging;
use Google::Ads::AdWords::v201502::CampaignCriterionOperation;
use Google::Ads::AdWords::v201502::ConstantOperand;
use Google::Ads::AdWords::v201502::Function;
use Google::Ads::AdWords::v201502::GeoTargetOperand;
use Google::Ads::AdWords::v201502::IncomeOperand;
use Google::Ads::AdWords::v201502::Language;
use Google::Ads::AdWords::v201502::Location;
use Google::Ads::AdWords::v201502::LocationExtensionOperand;
use Google::Ads::AdWords::v201502::LocationGroups;
use Google::Ads::AdWords::v201502::PlacesOfInterestOperand;
use Google::Ads::AdWords::v201502::Platform;

use Cwd qw(abs_path);

# Replace with valid values of your account.
my $campaign_id = "INSERT_CAMPAIGN_ID_HERE";

# Example main subroutine.
sub add_campaign_targeting_criteria {
  my $client = shift;
  my $campaign_id = shift;

  my @criteria = ();

  # Create locations. The IDs can be found in the documentation or retrieved
  # with the LocationCriterionService.
  my $california = Google::Ads::AdWords::v201502::Location->new({
    id => 21137
  });
  push @criteria, $california;
  my $mexico = Google::Ads::AdWords::v201502::Location->new({
    id => 2484 # Mexico
  });
  push @criteria, $mexico;

  # Create languages. The IDs can be found in the documentation or retrieved
  # with the ConstantDataService.
  my $english = Google::Ads::AdWords::v201502::Language->new({
    id => 1000
  });
  push @criteria, $english;
  my $spanish = Google::Ads::AdWords::v201502::Language->new({
    id => 1003
  });
  push @criteria, $spanish;

  # Location Groups criteria. These represent targeting by household income
  # or places of interest. The IDs can be found in the documentation or
  # retrieved with the LocationCriterionService.
  my $income = Google::Ads::AdWords::v201502::LocationGroups->new({
    matchingFunction => Google::Ads::AdWords::v201502::Function->new({
      operator => "AND",
      lhsOperand => Google::Ads::AdWords::v201502::IncomeOperand->new({
        # Tiers are numbered 1-10, and represent 10% segments of earners.
        # For example, TIER_1 is the top 10%, TIER_2 is the 80-90%, etc.
        # Tiers 6 through 10 are grouped into TIER_6_TO_10.
        tier => "TIER_3"
      }),
      rhsOperand => Google::Ads::AdWords::v201502::GeoTargetOperand->new({
        locations => [1015116] # Miami, FL
      })
    })
  });
  push @criteria, $income;

  my $placesOfInterest = Google::Ads::AdWords::v201502::LocationGroups->new({
    matchingFunction => Google::Ads::AdWords::v201502::Function->new({
      operator => "AND",
      lhsOperand => Google::Ads::AdWords::v201502::PlacesOfInterestOperand->new({
        category => "DOWNTOWN" # Other valid options: AIRPORT, UNIVERSITY.
      }),
      rhsOperand => Google::Ads::AdWords::v201502::GeoTargetOperand->new({
        locations => [1015116] # Miami, FL
      })
    })
  });
  push @criteria, $placesOfInterest;

  # Distance targeting. Area of 10 miles around targets above.
  my $radius = Google::Ads::AdWords::v201502::ConstantOperand->new({
    type => "DOUBLE",
    unit => "MILES",
    doubleValue => 10.0
  });
  my $radiusLocationGroup = Google::Ads::AdWords::v201502::LocationGroups->new({
    matchingFunction => Google::Ads::AdWords::v201502::Function->new({
      operator => "IDENTITY",
      lhsOperand => Google::Ads::AdWords::v201502::LocationExtensionOperand->new({
        radius => $radius
      })
    })
  });
  push @criteria, $radiusLocationGroup;

  # Create operations.
  my @operations = ();
  foreach my $criterion (@criteria) {
    my $operation =
        Google::Ads::AdWords::v201502::CampaignCriterionOperation->new({
          operator => "ADD",
          operand => Google::Ads::AdWords::v201502::CampaignCriterion->new({
            campaignId => $campaign_id,
            criterion => $criterion
          })
        });
    push @operations, $operation;
  }

  # Set campaign criteria.
  my $result = $client->CampaignCriterionService()->mutate({
    operations => \@operations
  });

  # Display campaign criteria.
  if ($result->get_value()) {
    foreach my $campaign_criterion (@{$result->get_value()}) {
      printf "Campaign criterion with campaign id '%s', criterion id '%s', " .
          "and type '%s' was added.\n",
          $campaign_criterion->get_campaignId(),
          $campaign_criterion->get_criterion()->get_id(),
          $campaign_criterion->get_criterion()->get_type();
    }
  } else {
    print "No campaign criteria were added.\n";
  }

  return 1;
}

# Don't run the example if the file is being included.
if (abs_path($0) ne abs_path(__FILE__)) {
  return 1;
}

# Log SOAP XML request, response and API errors.
Google::Ads::AdWords::Logging::enable_all_logging();

# Get AdWords Client, credentials will be read from ~/adwords.properties.
my $client = Google::Ads::AdWords::Client->new({version => "v201502"});

# By default examples are set to die on any server returned fault.
$client->set_die_on_faults(1);

# Call the example
add_campaign_targeting_criteria($client, $campaign_id);
