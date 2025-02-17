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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1UploadRagFileResponse do
  @moduledoc """
  Response message for VertexRagDataService.UploadRagFile.

  ## Attributes

  *   `error` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus.t`, *default:* `nil`) - The error that occurred while processing the RagFile.
  *   `ragFile` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagFile.t`, *default:* `nil`) - The RagFile that had been uploaded into the RagCorpus.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :error => GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus.t() | nil,
          :ragFile => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagFile.t() | nil
        }

  field(:error, as: GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus)
  field(:ragFile, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagFile)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1UploadRagFileResponse do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1UploadRagFileResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1UploadRagFileResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
