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

defmodule GoogleApi.Spanner.V1.Model.KeySet do
  @moduledoc """
  `KeySet` defines a collection of Cloud Spanner keys and/or key ranges. All the keys are expected to be in the same table or index. The keys need not be sorted in any particular way. If the same key is specified multiple times in the set (for example if two ranges, two keys, or a key and a range overlap), Cloud Spanner behaves as if the key were only specified once.

  ## Attributes

  *   `all` (*type:* `boolean()`, *default:* `nil`) - For convenience `all` can be set to `true` to indicate that this `KeySet` matches all keys in the table or index. Note that any keys specified in `keys` or `ranges` are only yielded once.
  *   `keys` (*type:* `list(list(any()))`, *default:* `nil`) - A list of specific keys. Entries in `keys` should have exactly as many elements as there are columns in the primary or index key with which this `KeySet` is used. Individual key values are encoded as described here.
  *   `ranges` (*type:* `list(GoogleApi.Spanner.V1.Model.KeyRange.t)`, *default:* `nil`) - A list of key ranges. See KeyRange for more information about key range specifications.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :all => boolean() | nil,
          :keys => list(list(any())) | nil,
          :ranges => list(GoogleApi.Spanner.V1.Model.KeyRange.t()) | nil
        }

  field(:all)
  field(:keys, type: :listlist)
  field(:ranges, as: GoogleApi.Spanner.V1.Model.KeyRange, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.KeySet do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.KeySet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.KeySet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
