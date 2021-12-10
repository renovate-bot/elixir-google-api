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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput do
  @moduledoc """
  The output from the virtual agent.

  ## Attributes

  *   `currentPage` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Page.t`, *default:* `nil`) - The Page on which the utterance was spoken. Only name and displayName will be set.
  *   `diagnosticInfo` (*type:* `map()`, *default:* `nil`) - Required. Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  *   `differences` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TestRunDifference.t)`, *default:* `nil`) - Output only. If this is part of a result conversation turn, the list of differences between the original run and the replay for this output, if any.
  *   `sessionParameters` (*type:* `map()`, *default:* `nil`) - The session parameters available to the bot at this point.
  *   `status` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleRpcStatus.t`, *default:* `nil`) - Response error from the agent in the test result. If set, other output is empty.
  *   `textResponses` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ResponseMessageText.t)`, *default:* `nil`) - The text responses from the agent for the turn.
  *   `triggeredIntent` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Intent.t`, *default:* `nil`) - The Intent that triggered the response. Only name and displayName will be set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentPage => GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Page.t() | nil,
          :diagnosticInfo => map() | nil,
          :differences =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TestRunDifference.t())
            | nil,
          :sessionParameters => map() | nil,
          :status => GoogleApi.Dialogflow.V3.Model.GoogleRpcStatus.t() | nil,
          :textResponses =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ResponseMessageText.t())
            | nil,
          :triggeredIntent =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Intent.t() | nil
        }

  field(:currentPage, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Page)
  field(:diagnosticInfo, type: :map)

  field(:differences,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TestRunDifference,
    type: :list
  )

  field(:sessionParameters, type: :map)
  field(:status, as: GoogleApi.Dialogflow.V3.Model.GoogleRpcStatus)

  field(:textResponses,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ResponseMessageText,
    type: :list
  )

  field(:triggeredIntent, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Intent)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end