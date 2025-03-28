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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaListSessionsResponse do
  @moduledoc """
  Response for ListSessions method.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Pagination token, if not returned indicates the last page.
  *   `sessions` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaSession.t)`, *default:* `nil`) - All the Sessions for a given data store.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :sessions =>
            list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaSession.t())
            | nil
        }

  field(:nextPageToken)

  field(:sessions,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaSession,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaListSessionsResponse do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaListSessionsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaListSessionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
