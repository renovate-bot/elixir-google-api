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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummaryWithMetadata do
  @moduledoc """
  Summary with metadata information.

  ## Attributes

  *   `blobAttachments` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryBlobAttachment.t)`, *default:* `nil`) - Output only. Store multimodal data for answer enhancement.
  *   `citationMetadata` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationMetadata.t`, *default:* `nil`) - Citation metadata for given summary.
  *   `references` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReference.t)`, *default:* `nil`) - Document References.
  *   `summary` (*type:* `String.t`, *default:* `nil`) - Summary text with no citation information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blobAttachments =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryBlobAttachment.t()
            )
            | nil,
          :citationMetadata =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationMetadata.t()
            | nil,
          :references =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReference.t()
            )
            | nil,
          :summary => String.t() | nil
        }

  field(:blobAttachments,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryBlobAttachment,
    type: :list
  )

  field(:citationMetadata,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationMetadata
  )

  field(:references,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReference,
    type: :list
  )

  field(:summary)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummaryWithMetadata do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummaryWithMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummaryWithMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
