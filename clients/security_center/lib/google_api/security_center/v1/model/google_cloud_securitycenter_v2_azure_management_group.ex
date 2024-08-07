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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2AzureManagementGroup do
  @moduledoc """
  Represents an Azure management group.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the Azure management group.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The UUID of the Azure management group, for example, `20000000-0001-0000-0000-000000000000`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :id => String.t() | nil
        }

  field(:displayName)
  field(:id)
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2AzureManagementGroup do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2AzureManagementGroup.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2AzureManagementGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
