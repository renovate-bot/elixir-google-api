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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DatastoreOptions do
  @moduledoc """
  Options defining a data set within Google Cloud Datastore.

  ## Attributes

  *   `kind` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KindExpression.t`, *default:* `nil`) - The kind to process.
  *   `partitionId` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PartitionId.t`, *default:* `nil`) - A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KindExpression.t() | nil,
          :partitionId => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PartitionId.t() | nil
        }

  field(:kind, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KindExpression)
  field(:partitionId, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PartitionId)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DatastoreOptions do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DatastoreOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DatastoreOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
