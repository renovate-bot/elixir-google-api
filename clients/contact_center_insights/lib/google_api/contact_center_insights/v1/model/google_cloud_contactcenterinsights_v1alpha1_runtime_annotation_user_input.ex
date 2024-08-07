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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotationUserInput do
  @moduledoc """
  Explicit input used for generating the answer

  ## Attributes

  *   `generatorName` (*type:* `String.t`, *default:* `nil`) - The resource name of associated generator. Format: `projects//locations//generators/`
  *   `query` (*type:* `String.t`, *default:* `nil`) - Query text. Article Search uses this to store the input query used to generate the search results.
  *   `querySource` (*type:* `String.t`, *default:* `nil`) - Query source for the answer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :generatorName => String.t() | nil,
          :query => String.t() | nil,
          :querySource => String.t() | nil
        }

  field(:generatorName)
  field(:query)
  field(:querySource)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotationUserInput do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotationUserInput.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotationUserInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
