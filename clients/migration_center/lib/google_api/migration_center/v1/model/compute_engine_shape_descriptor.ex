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

defmodule GoogleApi.MigrationCenter.V1.Model.ComputeEngineShapeDescriptor do
  @moduledoc """
  Compute Engine target shape descriptor.

  ## Attributes

  *   `logicalCoreCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of logical cores.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Output only. Compute Engine machine type.
  *   `memoryMb` (*type:* `integer()`, *default:* `nil`) - Memory in mebibytes.
  *   `physicalCoreCount` (*type:* `integer()`, *default:* `nil`) - Number of physical cores.
  *   `series` (*type:* `String.t`, *default:* `nil`) - Output only. Compute Engine machine series.
  *   `storage` (*type:* `list(GoogleApi.MigrationCenter.V1.Model.ComputeStorageDescriptor.t)`, *default:* `nil`) - Output only. Compute Engine storage. Never empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :logicalCoreCount => integer() | nil,
          :machineType => String.t() | nil,
          :memoryMb => integer() | nil,
          :physicalCoreCount => integer() | nil,
          :series => String.t() | nil,
          :storage => list(GoogleApi.MigrationCenter.V1.Model.ComputeStorageDescriptor.t()) | nil
        }

  field(:logicalCoreCount)
  field(:machineType)
  field(:memoryMb)
  field(:physicalCoreCount)
  field(:series)
  field(:storage, as: GoogleApi.MigrationCenter.V1.Model.ComputeStorageDescriptor, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.ComputeEngineShapeDescriptor do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.ComputeEngineShapeDescriptor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.ComputeEngineShapeDescriptor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
