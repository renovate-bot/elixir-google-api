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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1LogprobsResult do
  @moduledoc """
  Logprobs Result

  ## Attributes

  *   `chosenCandidates` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1LogprobsResultCandidate.t)`, *default:* `nil`) - Length = total number of decoding steps. The chosen candidates may or may not be in top_candidates.
  *   `topCandidates` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1LogprobsResultTopCandidates.t)`, *default:* `nil`) - Length = total number of decoding steps.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chosenCandidates =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1LogprobsResultCandidate.t())
            | nil,
          :topCandidates =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1LogprobsResultTopCandidates.t()
            )
            | nil
        }

  field(:chosenCandidates,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1LogprobsResultCandidate,
    type: :list
  )

  field(:topCandidates,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1LogprobsResultTopCandidates,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1LogprobsResult do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1LogprobsResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1LogprobsResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
