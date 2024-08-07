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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec do
  @moduledoc """
  Describes the specification of the evaluation.

  ## Attributes

  *   `querySetSpec` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec.t`, *default:* `nil`) - Required. The specification of the query set.
  *   `searchRequest` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSearchRequest.t`, *default:* `nil`) - Required. The search request that is used to perform the evaluation. Only the following fields within SearchRequest are supported; if any other fields are provided, an UNSUPPORTED error will be returned: * SearchRequest.serving_config * SearchRequest.branch * SearchRequest.canonical_filter * SearchRequest.query_expansion_spec * SearchRequest.spell_correction_spec * SearchRequest.content_search_spec * SearchRequest.user_pseudo_id
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :querySetSpec =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec.t()
            | nil,
          :searchRequest =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSearchRequest.t()
            | nil
        }

  field(:querySetSpec,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec
  )

  field(:searchRequest,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSearchRequest
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
