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

defmodule GoogleApi.DFAReporting.V4.Model.DirectorySite do
  @moduledoc """
  DirectorySites contains properties of a website from the Site Directory. Sites need to be added to an account via the Sites resource before they can be assigned to a placement.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this directory site. This is a read-only, auto-generated field.
  *   `idDimensionValue` (*type:* `GoogleApi.DFAReporting.V4.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of this directory site. This is a read-only, auto-generated field.
  *   `inpageTagFormats` (*type:* `list(String.t)`, *default:* `nil`) - Tag types for regular placements. Acceptable values are: - "STANDARD" - "IFRAME_JAVASCRIPT_INPAGE" - "INTERNAL_REDIRECT_INPAGE" - "JAVASCRIPT_INPAGE" 
  *   `interstitialTagFormats` (*type:* `list(String.t)`, *default:* `nil`) - Tag types for interstitial placements. Acceptable values are: - "IFRAME_JAVASCRIPT_INTERSTITIAL" - "INTERNAL_REDIRECT_INTERSTITIAL" - "JAVASCRIPT_INTERSTITIAL" 
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#directorySite".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this directory site.
  *   `publisherSpecificationId` (*type:* `String.t`, *default:* `nil`) - Output only. Default publisher specification ID of video placements under this directory site. Possible values are: * `1`, Hulu * `2`, NBC * `3`, CBS * `4`, CBS Desktop * `5`, Discovery * `6`, VEVO HD * `7`, VEVO Vertical * `8`, Fox * `9`, CW Network * `10`, Disney * `11`, IGN * `12`, NFL.com * `13`, Turner Broadcasting * `14`, Tubi on Fox * `15`, Hearst Corporation * `16`, Twitch Desktop * `17`, ABC * `18`, Univision * `19`, MLB.com * `20`, MLB.com Mobile * `21`, MLB.com OTT * `22`, Polsat * `23`, TVN * `24`, Mediaset * `25`, Antena 3 * `26`, Mediamond * `27`, Sky Italia * `28`, Tubi on CBS * `29`, Spotify * `30`, Paramount * `31`, Max
  *   `settings` (*type:* `GoogleApi.DFAReporting.V4.Model.DirectorySiteSettings.t`, *default:* `nil`) - Directory site settings.
  *   `url` (*type:* `String.t`, *default:* `nil`) - URL of this directory site.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :idDimensionValue => GoogleApi.DFAReporting.V4.Model.DimensionValue.t() | nil,
          :inpageTagFormats => list(String.t()) | nil,
          :interstitialTagFormats => list(String.t()) | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :publisherSpecificationId => String.t() | nil,
          :settings => GoogleApi.DFAReporting.V4.Model.DirectorySiteSettings.t() | nil,
          :url => String.t() | nil
        }

  field(:id)
  field(:idDimensionValue, as: GoogleApi.DFAReporting.V4.Model.DimensionValue)
  field(:inpageTagFormats, type: :list)
  field(:interstitialTagFormats, type: :list)
  field(:kind)
  field(:name)
  field(:publisherSpecificationId)
  field(:settings, as: GoogleApi.DFAReporting.V4.Model.DirectorySiteSettings)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.DirectorySite do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.DirectorySite.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.DirectorySite do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
