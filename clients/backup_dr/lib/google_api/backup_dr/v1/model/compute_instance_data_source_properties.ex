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

defmodule GoogleApi.BackupDR.V1.Model.ComputeInstanceDataSourceProperties do
  @moduledoc """
  ComputeInstanceDataSourceProperties represents the properties of a ComputeEngine resource that are stored in the DataSource.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the Compute Engine instance.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - The machine type of the instance.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the compute instance backed up by the datasource.
  *   `totalDiskCount` (*type:* `String.t`, *default:* `nil`) - The total number of disks attached to the Instance.
  *   `totalDiskSizeGb` (*type:* `String.t`, *default:* `nil`) - The sum of all the disk sizes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :machineType => String.t() | nil,
          :name => String.t() | nil,
          :totalDiskCount => String.t() | nil,
          :totalDiskSizeGb => String.t() | nil
        }

  field(:description)
  field(:machineType)
  field(:name)
  field(:totalDiskCount)
  field(:totalDiskSizeGb)
end

defimpl Poison.Decoder, for: GoogleApi.BackupDR.V1.Model.ComputeInstanceDataSourceProperties do
  def decode(value, options) do
    GoogleApi.BackupDR.V1.Model.ComputeInstanceDataSourceProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BackupDR.V1.Model.ComputeInstanceDataSourceProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
