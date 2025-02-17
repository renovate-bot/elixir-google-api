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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Connection do
  @moduledoc """
  A data connection to allow the DLP API to profile data in locations that require additional configuration.

  ## Attributes

  *   `cloudSql` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudSqlProperties.t`, *default:* `nil`) - Connect to a Cloud SQL instance.
  *   `errors` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Error.t)`, *default:* `nil`) - Output only. Set if status == ERROR, to provide additional details. Will store the last 10 errors sorted with the most recent first.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the connection: `projects/{project}/locations/{location}/connections/{name}`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Required. The connection's state in its lifecycle.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudSql => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudSqlProperties.t() | nil,
          :errors => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Error.t()) | nil,
          :name => String.t() | nil,
          :state => String.t() | nil
        }

  field(:cloudSql, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudSqlProperties)
  field(:errors, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Error, type: :list)
  field(:name)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Connection do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Connection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Connection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
