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

defmodule GoogleApi.WorkloadManager.V1.Model.ComponentHealth do
  @moduledoc """
  HealthCondition contains the detailed health check of each component.

  ## Attributes

  *   `component` (*type:* `String.t`, *default:* `nil`) - The component of a workload.
  *   `componentHealthChecks` (*type:* `list(GoogleApi.WorkloadManager.V1.Model.HealthCheck.t)`, *default:* `nil`) - The detailed health checks of the component.
  *   `componentHealthType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of the component health.
  *   `isRequired` (*type:* `boolean()`, *default:* `nil`) - Output only. The requirement of the component.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The health state of the component.
  *   `subComponentHealthes` (*type:* `list(GoogleApi.WorkloadManager.V1.Model.ComponentHealth.t)`, *default:* `nil`) - Sub component health.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :component => String.t() | nil,
          :componentHealthChecks =>
            list(GoogleApi.WorkloadManager.V1.Model.HealthCheck.t()) | nil,
          :componentHealthType => String.t() | nil,
          :isRequired => boolean() | nil,
          :state => String.t() | nil,
          :subComponentHealthes =>
            list(GoogleApi.WorkloadManager.V1.Model.ComponentHealth.t()) | nil
        }

  field(:component)
  field(:componentHealthChecks, as: GoogleApi.WorkloadManager.V1.Model.HealthCheck, type: :list)
  field(:componentHealthType)
  field(:isRequired)
  field(:state)

  field(:subComponentHealthes, as: GoogleApi.WorkloadManager.V1.Model.ComponentHealth, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.WorkloadManager.V1.Model.ComponentHealth do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.ComponentHealth.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkloadManager.V1.Model.ComponentHealth do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
