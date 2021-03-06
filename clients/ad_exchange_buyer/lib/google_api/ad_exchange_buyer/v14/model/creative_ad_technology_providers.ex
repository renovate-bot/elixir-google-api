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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.CreativeAdTechnologyProviders do
  @moduledoc """


  ## Attributes

  *   `detectedProviderIds` (*type:* `list(String.t)`, *default:* `nil`) - The detected ad technology provider IDs for this creative. See https://storage.googleapis.com/adx-rtb-dictionaries/providers.csv for mapping of provider ID to provided name, a privacy policy URL, and a list of domains which can be attributed to the provider. If this creative contains provider IDs that are outside of those listed in the `BidRequest.adslot.consented_providers_settings.consented_providers` field on the  Authorized Buyers Real-Time Bidding protocol or the `BidRequest.user.ext.consented_providers_settings.consented_providers` field on the OpenRTB protocol, a bid submitted for a European Economic Area (EEA) user with this creative is not compliant with the GDPR policies as mentioned in the "Third-party Ad Technology Vendors" section of Authorized Buyers Program Guidelines.
  *   `hasUnidentifiedProvider` (*type:* `boolean()`, *default:* `nil`) - Whether the creative contains an unidentified ad technology provider. If true, a bid submitted for a European Economic Area (EEA) user with this creative is not compliant with the GDPR policies as mentioned in the "Third-party Ad Technology Vendors" section of Authorized Buyers Program Guidelines.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detectedProviderIds => list(String.t()) | nil,
          :hasUnidentifiedProvider => boolean() | nil
        }

  field(:detectedProviderIds, type: :list)
  field(:hasUnidentifiedProvider)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.CreativeAdTechnologyProviders do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.CreativeAdTechnologyProviders.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.CreativeAdTechnologyProviders do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
