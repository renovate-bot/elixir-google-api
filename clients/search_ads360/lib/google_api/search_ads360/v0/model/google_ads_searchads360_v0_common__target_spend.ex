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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_TargetSpend do
  @moduledoc """
  An automated bid strategy that sets your bids to help get as many clicks as possible within your budget.

  ## Attributes

  *   `cpcBidCeilingMicros` (*type:* `String.t`, *default:* `nil`) - Maximum bid limit that can be set by the bid strategy. The limit applies to all keywords managed by the strategy.
  *   `targetSpendMicros` (*type:* `String.t`, *default:* `nil`) - Deprecated: The spend target under which to maximize clicks. A TargetSpend bidder will attempt to spend the smaller of this value or the natural throttling spend amount. If not specified, the budget is used as the spend target. This field is deprecated and should no longer be used. See https://ads-developers.googleblog.com/2020/05/reminder-about-sunset-creation-of.html for details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpcBidCeilingMicros => String.t() | nil,
          :targetSpendMicros => String.t() | nil
        }

  field(:cpcBidCeilingMicros)
  field(:targetSpendMicros)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_TargetSpend do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_TargetSpend.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_TargetSpend do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
