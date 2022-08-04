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

defmodule GoogleApi.DFAReporting.V4.Model.Project do
  @moduledoc """
  Contains properties of a Planning project.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this project.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Advertiser ID of this project.
  *   `audienceAgeGroup` (*type:* `String.t`, *default:* `nil`) - Audience age group of this project.
  *   `audienceGender` (*type:* `String.t`, *default:* `nil`) - Audience gender of this project.
  *   `budget` (*type:* `String.t`, *default:* `nil`) - Budget of this project in the currency specified by the current account. The value stored in this field represents only the non-fractional amount. For example, for USD, the smallest value that can be represented by this field is 1 US dollar.
  *   `clientBillingCode` (*type:* `String.t`, *default:* `nil`) - Client billing code of this project.
  *   `clientName` (*type:* `String.t`, *default:* `nil`) - Name of the project client.
  *   `endDate` (*type:* `Date.t`, *default:* `nil`) - 
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this project. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#project".
  *   `lastModifiedInfo` (*type:* `GoogleApi.DFAReporting.V4.Model.LastModifiedInfo.t`, *default:* `nil`) - Information about the most recent modification of this project.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this project.
  *   `overview` (*type:* `String.t`, *default:* `nil`) - Overview of this project.
  *   `startDate` (*type:* `Date.t`, *default:* `nil`) - 
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of this project.
  *   `targetClicks` (*type:* `String.t`, *default:* `nil`) - Number of clicks that the advertiser is targeting.
  *   `targetConversions` (*type:* `String.t`, *default:* `nil`) - Number of conversions that the advertiser is targeting.
  *   `targetCpaNanos` (*type:* `String.t`, *default:* `nil`) - CPA that the advertiser is targeting.
  *   `targetCpcNanos` (*type:* `String.t`, *default:* `nil`) - CPC that the advertiser is targeting.
  *   `targetCpmActiveViewNanos` (*type:* `String.t`, *default:* `nil`) - vCPM from Active View that the advertiser is targeting.
  *   `targetCpmNanos` (*type:* `String.t`, *default:* `nil`) - CPM that the advertiser is targeting.
  *   `targetImpressions` (*type:* `String.t`, *default:* `nil`) - Number of impressions that the advertiser is targeting.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :advertiserId => String.t() | nil,
          :audienceAgeGroup => String.t() | nil,
          :audienceGender => String.t() | nil,
          :budget => String.t() | nil,
          :clientBillingCode => String.t() | nil,
          :clientName => String.t() | nil,
          :endDate => Date.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :lastModifiedInfo => GoogleApi.DFAReporting.V4.Model.LastModifiedInfo.t() | nil,
          :name => String.t() | nil,
          :overview => String.t() | nil,
          :startDate => Date.t() | nil,
          :subaccountId => String.t() | nil,
          :targetClicks => String.t() | nil,
          :targetConversions => String.t() | nil,
          :targetCpaNanos => String.t() | nil,
          :targetCpcNanos => String.t() | nil,
          :targetCpmActiveViewNanos => String.t() | nil,
          :targetCpmNanos => String.t() | nil,
          :targetImpressions => String.t() | nil
        }

  field(:accountId)
  field(:advertiserId)
  field(:audienceAgeGroup)
  field(:audienceGender)
  field(:budget)
  field(:clientBillingCode)
  field(:clientName)
  field(:endDate, as: Date)
  field(:id)
  field(:kind)
  field(:lastModifiedInfo, as: GoogleApi.DFAReporting.V4.Model.LastModifiedInfo)
  field(:name)
  field(:overview)
  field(:startDate, as: Date)
  field(:subaccountId)
  field(:targetClicks)
  field(:targetConversions)
  field(:targetCpaNanos)
  field(:targetCpcNanos)
  field(:targetCpmActiveViewNanos)
  field(:targetCpmNanos)
  field(:targetImpressions)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.Project do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.Project.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.Project do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end