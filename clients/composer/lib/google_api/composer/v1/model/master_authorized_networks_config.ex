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

defmodule GoogleApi.Composer.V1.Model.MasterAuthorizedNetworksConfig do
  @moduledoc """
  Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.

  ## Attributes

  *   `cidrBlocks` (*type:* `list(GoogleApi.Composer.V1.Model.CidrBlock.t)`, *default:* `nil`) - Up to 50 external networks that could access Kubernetes master through HTTPS.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Whether or not master authorized networks feature is enabled.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cidrBlocks => list(GoogleApi.Composer.V1.Model.CidrBlock.t()) | nil,
          :enabled => boolean() | nil
        }

  field(:cidrBlocks, as: GoogleApi.Composer.V1.Model.CidrBlock, type: :list)
  field(:enabled)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1.Model.MasterAuthorizedNetworksConfig do
  def decode(value, options) do
    GoogleApi.Composer.V1.Model.MasterAuthorizedNetworksConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1.Model.MasterAuthorizedNetworksConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end