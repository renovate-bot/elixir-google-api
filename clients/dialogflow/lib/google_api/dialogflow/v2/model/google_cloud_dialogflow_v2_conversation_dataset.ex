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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationDataset do
  @moduledoc """
  Represents a conversation dataset that a user imports raw data into. The data inside ConversationDataset can not be changed after ImportConversationData finishes (and calling ImportConversationData on a dataset that already has data is not allowed).

  ## Attributes

  *   `conversationCount` (*type:* `String.t`, *default:* `nil`) - Output only. The number of conversations this conversation dataset contains.
  *   `conversationInfo` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationInfo.t`, *default:* `nil`) - Output only. Metadata set during conversation data import.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time of this dataset.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The description of the dataset. Maximum of 10000 bytes.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the dataset. Maximum of 64 bytes.
  *   `inputConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InputConfig.t`, *default:* `nil`) - Output only. Input configurations set during conversation data import.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. ConversationDataset resource name. Format: `projects//locations//conversationDatasets/`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conversationCount => String.t() | nil,
          :conversationInfo =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationInfo.t() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :inputConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InputConfig.t() | nil,
          :name => String.t() | nil
        }

  field(:conversationCount)

  field(:conversationInfo,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationInfo
  )

  field(:createTime, as: DateTime)
  field(:description)
  field(:displayName)
  field(:inputConfig, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InputConfig)
  field(:name)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationDataset do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationDataset.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationDataset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end