# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.MerchantAPI.Reports_v1beta.Model.CompetitiveVisibilityCompetitorView do
  @moduledoc """
  Fields available for query in `competitive_visibility_competitor_view` table. [Competitive visibility](https://support.google.com/merchants/answer/11366442) report with businesses with similar visibility. Values are only set for fields requested explicitly in the request's search query.

  ## Attributes

  *   `adsOrganicRatio` (*type:* `float()`, *default:* `nil`) - [Ads / organic ratio] (https://support.google.com/merchants/answer/11366442#zippy=%2Cads-free-ratio) shows how often the domain receives impressions from Shopping ads compared to organic traffic. The number is rounded and bucketed. Cannot be filtered on in the 'WHERE' clause.
  *   `date` (*type:* `GoogleApi.MerchantAPI.Reports_v1beta.Model.Date.t`, *default:* `nil`) - Date of this row. A condition on `date` is required in the `WHERE` clause.
  *   `domain` (*type:* `String.t`, *default:* `nil`) - Domain of your competitor or your domain, if 'is_your_domain' is true. Required in the `SELECT` clause. Cannot be filtered on in the 'WHERE' clause.
  *   `higherPositionRate` (*type:* `float()`, *default:* `nil`) - [Higher position rate] (https://support.google.com/merchants/answer/11366442#zippy=%2Chigher-position-rate) shows how often a competitor’s offer got placed in a higher position on the page than your offer. Cannot be filtered on in the 'WHERE' clause.
  *   `isYourDomain` (*type:* `boolean()`, *default:* `nil`) - True if this row contains data for your domain. Cannot be filtered on in the 'WHERE' clause.
  *   `pageOverlapRate` (*type:* `float()`, *default:* `nil`) - [Page overlap rate] (https://support.google.com/merchants/answer/11366442#zippy=%2Cpage-overlap-rate) shows how frequently competing retailers’ offers are shown together with your offers on the same page. Cannot be filtered on in the 'WHERE' clause.
  *   `rank` (*type:* `String.t`, *default:* `nil`) - Position of the domain in the similar businesses ranking for the selected keys (`date`, `report_category_id`, `report_country_code`, `traffic_source`) based on impressions. 1 is the highest. Cannot be filtered on in the 'WHERE' clause.
  *   `relativeVisibility` (*type:* `float()`, *default:* `nil`) - [Relative visibility] (https://support.google.com/merchants/answer/11366442#zippy=%2Crelative-visibility) shows how often your competitors’ offers are shown compared to your offers. In other words, this is the number of displayed impressions of a competitor retailer divided by the number of your displayed impressions during a selected time range for a selected product category and country. Cannot be filtered on in the 'WHERE' clause.
  *   `reportCategoryId` (*type:* `String.t`, *default:* `nil`) - Google product category ID to calculate the report for, represented in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436). Required in the `SELECT` clause. A condition on `report_category_id` is required in the `WHERE` clause.
  *   `reportCountryCode` (*type:* `String.t`, *default:* `nil`) - Country where impressions appeared. Required in the `SELECT` clause. A condition on `report_country_code` is required in the `WHERE` clause.
  *   `trafficSource` (*type:* `String.t`, *default:* `nil`) - Traffic source of impressions. Required in the `SELECT` clause.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adsOrganicRatio => float() | nil,
          :date => GoogleApi.MerchantAPI.Reports_v1beta.Model.Date.t() | nil,
          :domain => String.t() | nil,
          :higherPositionRate => float() | nil,
          :isYourDomain => boolean() | nil,
          :pageOverlapRate => float() | nil,
          :rank => String.t() | nil,
          :relativeVisibility => float() | nil,
          :reportCategoryId => String.t() | nil,
          :reportCountryCode => String.t() | nil,
          :trafficSource => String.t() | nil
        }

  field(:adsOrganicRatio)
  field(:date, as: GoogleApi.MerchantAPI.Reports_v1beta.Model.Date)
  field(:domain)
  field(:higherPositionRate)
  field(:isYourDomain)
  field(:pageOverlapRate)
  field(:rank)
  field(:relativeVisibility)
  field(:reportCategoryId)
  field(:reportCountryCode)
  field(:trafficSource)
end

defimpl Poison.Decoder,
  for: GoogleApi.MerchantAPI.Reports_v1beta.Model.CompetitiveVisibilityCompetitorView do
  def decode(value, options) do
    GoogleApi.MerchantAPI.Reports_v1beta.Model.CompetitiveVisibilityCompetitorView.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MerchantAPI.Reports_v1beta.Model.CompetitiveVisibilityCompetitorView do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
