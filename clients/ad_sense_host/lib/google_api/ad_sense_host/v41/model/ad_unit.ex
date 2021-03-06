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

defmodule GoogleApi.AdSenseHost.V41.Model.AdUnit do
  @moduledoc """


  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - Identity code of this ad unit, not necessarily unique across ad clients.
  *   `contentAdsSettings` (*type:* `GoogleApi.AdSenseHost.V41.Model.AdUnitContentAdsSettings.t`, *default:* `nil`) - Settings specific to content ads (AFC) and highend mobile content ads (AFMC - deprecated).
  *   `customStyle` (*type:* `GoogleApi.AdSenseHost.V41.Model.AdStyle.t`, *default:* `nil`) - Custom style information specific to this ad unit.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique identifier of this ad unit. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format.
  *   `kind` (*type:* `String.t`, *default:* `adsensehost#adUnit`) - Kind of resource this is, in this case adsensehost#adUnit.
  *   `mobileContentAdsSettings` (*type:* `GoogleApi.AdSenseHost.V41.Model.AdUnitMobileContentAdsSettings.t`, *default:* `nil`) - Settings specific to WAP mobile content ads (AFMC - deprecated).
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this ad unit.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of this ad unit. Possible values are:
      NEW: Indicates that the ad unit was created within the last seven days and does not yet have any activity associated with it.

      ACTIVE: Indicates that there has been activity on this ad unit in the last seven days.

      INACTIVE: Indicates that there has been no activity on this ad unit in the last seven days.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t() | nil,
          :contentAdsSettings =>
            GoogleApi.AdSenseHost.V41.Model.AdUnitContentAdsSettings.t() | nil,
          :customStyle => GoogleApi.AdSenseHost.V41.Model.AdStyle.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :mobileContentAdsSettings =>
            GoogleApi.AdSenseHost.V41.Model.AdUnitMobileContentAdsSettings.t() | nil,
          :name => String.t() | nil,
          :status => String.t() | nil
        }

  field(:code)
  field(:contentAdsSettings, as: GoogleApi.AdSenseHost.V41.Model.AdUnitContentAdsSettings)
  field(:customStyle, as: GoogleApi.AdSenseHost.V41.Model.AdStyle)
  field(:id)
  field(:kind)

  field(:mobileContentAdsSettings,
    as: GoogleApi.AdSenseHost.V41.Model.AdUnitMobileContentAdsSettings
  )

  field(:name)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.AdSenseHost.V41.Model.AdUnit do
  def decode(value, options) do
    GoogleApi.AdSenseHost.V41.Model.AdUnit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSenseHost.V41.Model.AdUnit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
