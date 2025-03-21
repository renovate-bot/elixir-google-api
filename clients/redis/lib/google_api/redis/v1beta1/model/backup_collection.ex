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

defmodule GoogleApi.Redis.V1beta1.Model.BackupCollection do
  @moduledoc """
  BackupCollection of a cluster.

  ## Attributes

  *   `cluster` (*type:* `String.t`, *default:* `nil`) - Output only. The full resource path of the cluster the backup collection belongs to. Example: projects/{project}/locations/{location}/clusters/{cluster}
  *   `clusterUid` (*type:* `String.t`, *default:* `nil`) - Output only. The cluster uid of the backup collection.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the backup collection was created.
  *   `kmsKey` (*type:* `String.t`, *default:* `nil`) - Output only. The KMS key used to encrypt the backups under this backup collection.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Full resource path of the backup collection.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. System assigned unique identifier of the backup collection.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cluster => String.t() | nil,
          :clusterUid => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :kmsKey => String.t() | nil,
          :name => String.t() | nil,
          :uid => String.t() | nil
        }

  field(:cluster)
  field(:clusterUid)
  field(:createTime, as: DateTime)
  field(:kmsKey)
  field(:name)
  field(:uid)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.BackupCollection do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.BackupCollection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.BackupCollection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
