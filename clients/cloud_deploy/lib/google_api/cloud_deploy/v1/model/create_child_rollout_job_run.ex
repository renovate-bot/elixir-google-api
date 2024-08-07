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

defmodule GoogleApi.CloudDeploy.V1.Model.CreateChildRolloutJobRun do
  @moduledoc """
  CreateChildRolloutJobRun contains information specific to a createChildRollout `JobRun`.

  ## Attributes

  *   `rollout` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the `ChildRollout`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/{rollout}`.
  *   `rolloutPhaseId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the childRollout Phase initiated by this JobRun.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rollout => String.t() | nil,
          :rolloutPhaseId => String.t() | nil
        }

  field(:rollout)
  field(:rolloutPhaseId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.CreateChildRolloutJobRun do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.CreateChildRolloutJobRun.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.CreateChildRolloutJobRun do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
