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
# This example gets keywords related to a seed keyword.
#
# Tags: TargetingIdeaService.get
# Author: David Torres <api.davidtorres@gmail.com>

use strict;
use lib "../../../lib";

use Google::Ads::AdWords::Client;
use Google::Ads::AdWords::v201502::Language;
use Google::Ads::AdWords::v201502::LanguageSearchParameter;
use Google::Ads::AdWords::Logging;
use Google::Ads::AdWords::v201502::Paging;
use Google::Ads::AdWords::v201502::RelatedToQuerySearchParameter;
use Google::Ads::AdWords::v201502::TargetingIdeaSelector;
use Google::Ads::Common::MapUtils;

use Cwd qw(abs_path);

# Example main subroutine.
sub get_keyword_ideas {
  my $client = shift;

  # Create seed query.
  my $seed_query = "mars cruise";

  # Create selector.
  my $selector = Google::Ads::AdWords::v201502::TargetingIdeaSelector->new({
    requestType => "IDEAS",
    ideaType => "KEYWORD",
    requestedAttributeTypes => ["KEYWORD_TEXT",
                                "SEARCH_VOLUME",
                                "CATEGORY_PRODUCTS_AND_SERVICES"],
  });

  # Set selector paging (required for targeting idea service).
  my $paging = Google::Ads::AdWords::v201502::Paging->new({
    startIndex => 0,
    numberResults => 10
  });
  $selector->set_paging($paging);

  # Create related to keyword search parameter.
  my $query_search_parameter =
      Google::Ads::AdWords::v201502::RelatedToQuerySearchParameter->new({
        queries => [$seed_query]
      });

  # Language setting (not-required).
  # The ID can be found in the documentation:
  #   https://developers.google.com/adwords/api/docs/appendix/languagecodes
  my $language_english = Google::Ads::AdWords::v201502::Language->new({
    id => 1000
  });
  my $language_search_parameter =
      Google::Ads::AdWords::v201502::LanguageSearchParameter->new({
        languages => [$language_english]
      });

  $selector->set_searchParameters([
    $query_search_parameter,
    $language_search_parameter
  ]);

  # Get related keywords.
  my $page = $client->TargetingIdeaService()->get({selector => $selector});

  # Display related keywords.
  if ($page->get_entries()) {
    foreach my $targeting_idea (@{$page->get_entries()}) {
      my $data =
          Google::Ads::Common::MapUtils::get_map($targeting_idea->get_data());
      my $keyword = $data->{"KEYWORD_TEXT"}->get_value();
      my $search_volume =
          $data->{"SEARCH_VOLUME"}->get_value() ?
          $data->{"SEARCH_VOLUME"}->get_value() : 0;
      my $categories =
          $data->{"CATEGORY_PRODUCTS_AND_SERVICES"}->get_value()?
          $data->{"CATEGORY_PRODUCTS_AND_SERVICES"}->get_value():[];
      printf "Keyword with text \"%s\", monthly search volume \"%s\" and " .
             "categories \"%s\" was found.\n", $keyword,
             $search_volume, join(", ", @{$categories});
    }
  } else {
    print "No related keywords were found.\n";
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
get_keyword_ideas($client);
