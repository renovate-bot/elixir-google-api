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

defmodule GoogleApi.DNS.V1.Model.Change do
  @moduledoc """
  A Change represents a set of `ResourceRecordSet` additions and deletions applied atomically to a ManagedZone. ResourceRecordSets within a ManagedZone are modified by creating a new Change element in the Changes collection. In turn the Changes collection also records the past modifications to the `ResourceRecordSets` in a `ManagedZone`. The current state of the `ManagedZone` is the sum effect of applying all `Change` elements in the `Changes` collection in sequence.

  ## Attributes

  *   `additions` (*type:* `list(GoogleApi.DNS.V1.Model.ResourceRecordSet.t)`, *default:* `nil`) - Which ResourceRecordSets to add?
  *   `deletions` (*type:* `list(GoogleApi.DNS.V1.Model.ResourceRecordSet.t)`, *default:* `nil`) - Which ResourceRecordSets to remove? Must match existing data exactly.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique identifier for the resource; defined by the server (output only).
  *   `isServing` (*type:* `boolean()`, *default:* `nil`) - If the DNS queries for the zone will be served.
  *   `kind` (*type:* `String.t`, *default:* `dns#change`) - 
  *   `startTime` (*type:* `String.t`, *default:* `nil`) - The time that this operation was started by the server (output only). This is in RFC3339 text format.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the operation (output only). A status of "done" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additions => list(GoogleApi.DNS.V1.Model.ResourceRecordSet.t()) | nil,
          :deletions => list(GoogleApi.DNS.V1.Model.ResourceRecordSet.t()) | nil,
          :id => String.t() | nil,
          :isServing => boolean() | nil,
          :kind => String.t() | nil,
          :startTime => String.t() | nil,
          :status => String.t() | nil
        }

  field(:additions, as: GoogleApi.DNS.V1.Model.ResourceRecordSet, type: :list)
  field(:deletions, as: GoogleApi.DNS.V1.Model.ResourceRecordSet, type: :list)
  field(:id)
  field(:isServing)
  field(:kind)
  field(:startTime)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.Change do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.Change.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.Change do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
