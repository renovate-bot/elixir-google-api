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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.DealPauseStatus do
  @moduledoc """
  Tracks which parties (if any) have paused a deal. The deal is considered paused if either hasBuyerPaused or hasSellPaused is true.

  ## Attributes

  *   `buyerPauseReason` (*type:* `String.t`, *default:* `nil`) - The buyer's reason for pausing, if the buyer paused the deal.
  *   `firstPausedBy` (*type:* `String.t`, *default:* `nil`) - The role of the person who first paused this deal.
  *   `hasBuyerPaused` (*type:* `boolean()`, *default:* `nil`) - True, if the buyer has paused the deal unilaterally.
  *   `hasSellerPaused` (*type:* `boolean()`, *default:* `nil`) - True, if the seller has paused the deal unilaterally.
  *   `sellerPauseReason` (*type:* `String.t`, *default:* `nil`) - The seller's reason for pausing, if the seller paused the deal.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buyerPauseReason => String.t() | nil,
          :firstPausedBy => String.t() | nil,
          :hasBuyerPaused => boolean() | nil,
          :hasSellerPaused => boolean() | nil,
          :sellerPauseReason => String.t() | nil
        }

  field(:buyerPauseReason)
  field(:firstPausedBy)
  field(:hasBuyerPaused)
  field(:hasSellerPaused)
  field(:sellerPauseReason)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.DealPauseStatus do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.DealPauseStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.DealPauseStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
