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

defmodule GoogleApi.VMwareEngine.V1.Model.AutoscalingSettings do
  @moduledoc """
  Autoscaling settings define the rules used by VMware Engine to automatically scale-out and scale-in the clusters in a private cloud.

  ## Attributes

  *   `autoscalingPolicies` (*type:* `%{optional(String.t) => GoogleApi.VMwareEngine.V1.Model.AutoscalingPolicy.t}`, *default:* `nil`) - Required. The map with autoscaling policies applied to the cluster. The key is the identifier of the policy. It must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5) Currently there map must contain only one element that describes the autoscaling policy for compute nodes.
  *   `coolDownPeriod` (*type:* `String.t`, *default:* `nil`) - Optional. The minimum duration between consecutive autoscale operations. It starts once addition or removal of nodes is fully completed. Defaults to 30 minutes if not specified. Cool down period must be in whole minutes (for example, 30, 31, 50, 180 minutes).
  *   `maxClusterNodeCount` (*type:* `integer()`, *default:* `nil`) - Optional. Maximum number of nodes of any type in a cluster. If not specified the default limits apply.
  *   `minClusterNodeCount` (*type:* `integer()`, *default:* `nil`) - Optional. Minimum number of nodes of any type in a cluster. If not specified the default limits apply.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscalingPolicies =>
            %{optional(String.t()) => GoogleApi.VMwareEngine.V1.Model.AutoscalingPolicy.t()} | nil,
          :coolDownPeriod => String.t() | nil,
          :maxClusterNodeCount => integer() | nil,
          :minClusterNodeCount => integer() | nil
        }

  field(:autoscalingPolicies, as: GoogleApi.VMwareEngine.V1.Model.AutoscalingPolicy, type: :map)
  field(:coolDownPeriod)
  field(:maxClusterNodeCount)
  field(:minClusterNodeCount)
end

defimpl Poison.Decoder, for: GoogleApi.VMwareEngine.V1.Model.AutoscalingSettings do
  def decode(value, options) do
    GoogleApi.VMwareEngine.V1.Model.AutoscalingSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMwareEngine.V1.Model.AutoscalingSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
