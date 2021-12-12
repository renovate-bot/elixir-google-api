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

defmodule GoogleApi.VMMigration.V1.Model.ListTargetProjectsResponse do
  @moduledoc """
  Response message for 'ListTargetProjects' call.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.
  *   `targetProjects` (*type:* `list(GoogleApi.VMMigration.V1.Model.TargetProject.t)`, *default:* `nil`) - Output only. The list of target response.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :targetProjects => list(GoogleApi.VMMigration.V1.Model.TargetProject.t()) | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:nextPageToken)
  field(:targetProjects, as: GoogleApi.VMMigration.V1.Model.TargetProject, type: :list)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.ListTargetProjectsResponse do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.ListTargetProjectsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.ListTargetProjectsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end