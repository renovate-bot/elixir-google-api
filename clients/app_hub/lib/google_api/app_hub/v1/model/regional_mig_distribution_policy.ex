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

defmodule GoogleApi.AppHub.V1.Model.RegionalMigDistributionPolicy do
  @moduledoc """
  To be used for specifying the intended distribution of regional compute.googleapis.com/InstanceGroupManager instances

  ## Attributes

  *   `targetShape` (*type:* `integer()`, *default:* `nil`) - The shape in which the group converges around distribution of resources. Instance of proto2 enum
  *   `zones` (*type:* `list(GoogleApi.AppHub.V1.Model.ZoneConfiguration.t)`, *default:* `nil`) - Cloud zones used by regional MIG to create instances.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :targetShape => integer() | nil,
          :zones => list(GoogleApi.AppHub.V1.Model.ZoneConfiguration.t()) | nil
        }

  field(:targetShape)
  field(:zones, as: GoogleApi.AppHub.V1.Model.ZoneConfiguration, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AppHub.V1.Model.RegionalMigDistributionPolicy do
  def decode(value, options) do
    GoogleApi.AppHub.V1.Model.RegionalMigDistributionPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppHub.V1.Model.RegionalMigDistributionPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
