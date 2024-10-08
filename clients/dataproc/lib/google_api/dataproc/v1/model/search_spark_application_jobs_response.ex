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

defmodule GoogleApi.Dataproc.V1.Model.SearchSparkApplicationJobsResponse do
  @moduledoc """
  A list of Jobs associated with a Spark Application.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSparkApplicationJobsRequest.
  *   `sparkApplicationJobs` (*type:* `list(GoogleApi.Dataproc.V1.Model.JobData.t)`, *default:* `nil`) - Output only. Data corresponding to a spark job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :sparkApplicationJobs => list(GoogleApi.Dataproc.V1.Model.JobData.t()) | nil
        }

  field(:nextPageToken)
  field(:sparkApplicationJobs, as: GoogleApi.Dataproc.V1.Model.JobData, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.SearchSparkApplicationJobsResponse do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.SearchSparkApplicationJobsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.SearchSparkApplicationJobsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
