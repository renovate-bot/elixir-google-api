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

defmodule GoogleApi.VectorTile.V1.Model.FeatureTile do
  @moduledoc """
  A tile containing information about the map features located in the region it covers.

  ## Attributes

  *   `coordinates` (*type:* `GoogleApi.VectorTile.V1.Model.TileCoordinates.t`, *default:* `nil`) - The global tile coordinates that uniquely identify this tile.
  *   `features` (*type:* `list(GoogleApi.VectorTile.V1.Model.Feature.t)`, *default:* `nil`) - Features present on this map tile.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the tile. The tile resource name is prefixed by its collection ID `tiles/` followed by the resource ID, which encodes the tile's global x and y coordinates and zoom level as `@,,z`. For example, `tiles/@1,2,3z`.
  *   `providers` (*type:* `list(GoogleApi.VectorTile.V1.Model.ProviderInfo.t)`, *default:* `nil`) - Data providers for the data contained in this tile.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Tile response status code to support tile caching.
  *   `versionId` (*type:* `String.t`, *default:* `nil`) - An opaque value, usually less than 30 characters, that contains version info about this tile and the data that was used to generate it. The client should store this value in its tile cache and pass it back to the API in the client_tile_version_id field of subsequent tile requests in order to enable the API to detect when the new tile would be the same as the one the client already has in its cache. Also see STATUS_OK_DATA_UNCHANGED.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :coordinates => GoogleApi.VectorTile.V1.Model.TileCoordinates.t() | nil,
          :features => list(GoogleApi.VectorTile.V1.Model.Feature.t()) | nil,
          :name => String.t() | nil,
          :providers => list(GoogleApi.VectorTile.V1.Model.ProviderInfo.t()) | nil,
          :status => String.t() | nil,
          :versionId => String.t() | nil
        }

  field(:coordinates, as: GoogleApi.VectorTile.V1.Model.TileCoordinates)
  field(:features, as: GoogleApi.VectorTile.V1.Model.Feature, type: :list)
  field(:name)
  field(:providers, as: GoogleApi.VectorTile.V1.Model.ProviderInfo, type: :list)
  field(:status)
  field(:versionId)
end

defimpl Poison.Decoder, for: GoogleApi.VectorTile.V1.Model.FeatureTile do
  def decode(value, options) do
    GoogleApi.VectorTile.V1.Model.FeatureTile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VectorTile.V1.Model.FeatureTile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
