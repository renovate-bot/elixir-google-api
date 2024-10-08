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

defmodule GoogleApi.BigQuery.V2.Model.Job do
  @moduledoc """


  ## Attributes

  *   `configuration` (*type:* `GoogleApi.BigQuery.V2.Model.JobConfiguration.t`, *default:* `nil`) - Required. Describes the job configuration.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. A hash of this resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Output only. Opaque ID field of the job.
  *   `jobCreationReason` (*type:* `GoogleApi.BigQuery.V2.Model.JobCreationReason.t`, *default:* `nil`) - Output only. The reason why a Job was created. [Preview](https://cloud.google.com/products/#product-launch-stages)
  *   `jobReference` (*type:* `GoogleApi.BigQuery.V2.Model.JobReference.t`, *default:* `nil`) - Optional. Reference describing the unique-per-user name of the job.
  *   `kind` (*type:* `String.t`, *default:* `bigquery#job`) - Output only. The type of the resource.
  *   `principal_subject` (*type:* `String.t`, *default:* `nil`) - Output only. [Full-projection-only] String representation of identity of requesting party. Populated for both first- and third-party identities. Only present for APIs that support third-party identities.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Output only. A URL that can be used to access the resource again.
  *   `statistics` (*type:* `GoogleApi.BigQuery.V2.Model.JobStatistics.t`, *default:* `nil`) - Output only. Information about the job, including starting time and ending time of the job.
  *   `status` (*type:* `GoogleApi.BigQuery.V2.Model.JobStatus.t`, *default:* `nil`) - Output only. The status of this job. Examine this value when polling an asynchronous job to see if the job is complete.
  *   `user_email` (*type:* `String.t`, *default:* `nil`) - Output only. Email address of the user who ran the job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configuration => GoogleApi.BigQuery.V2.Model.JobConfiguration.t() | nil,
          :etag => String.t() | nil,
          :id => String.t() | nil,
          :jobCreationReason => GoogleApi.BigQuery.V2.Model.JobCreationReason.t() | nil,
          :jobReference => GoogleApi.BigQuery.V2.Model.JobReference.t() | nil,
          :kind => String.t() | nil,
          :principal_subject => String.t() | nil,
          :selfLink => String.t() | nil,
          :statistics => GoogleApi.BigQuery.V2.Model.JobStatistics.t() | nil,
          :status => GoogleApi.BigQuery.V2.Model.JobStatus.t() | nil,
          :user_email => String.t() | nil
        }

  field(:configuration, as: GoogleApi.BigQuery.V2.Model.JobConfiguration)
  field(:etag)
  field(:id)
  field(:jobCreationReason, as: GoogleApi.BigQuery.V2.Model.JobCreationReason)
  field(:jobReference, as: GoogleApi.BigQuery.V2.Model.JobReference)
  field(:kind)
  field(:principal_subject)
  field(:selfLink)
  field(:statistics, as: GoogleApi.BigQuery.V2.Model.JobStatistics)
  field(:status, as: GoogleApi.BigQuery.V2.Model.JobStatus)
  field(:user_email)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.Job do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.Job.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.Job do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
