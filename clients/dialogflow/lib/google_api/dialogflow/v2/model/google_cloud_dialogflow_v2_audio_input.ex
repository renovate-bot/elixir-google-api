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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AudioInput do
  @moduledoc """
  Represents the natural language speech audio to be processed.

  ## Attributes

  *   `audio` (*type:* `String.t`, *default:* `nil`) - Required. The natural language speech audio to be processed. A single request can contain up to 2 minutes of speech audio data. The transcribed text cannot contain more than 256 bytes for virtual agent interactions.
  *   `config` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InputAudioConfig.t`, *default:* `nil`) - Required. Instructs the speech recognizer how to process the speech audio.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audio => String.t() | nil,
          :config =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InputAudioConfig.t() | nil
        }

  field(:audio)
  field(:config, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InputAudioConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AudioInput do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AudioInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AudioInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
