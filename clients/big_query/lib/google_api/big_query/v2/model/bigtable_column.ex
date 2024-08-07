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

defmodule GoogleApi.BigQuery.V2.Model.BigtableColumn do
  @moduledoc """
  Information related to a Bigtable column.

  ## Attributes

  *   `encoding` (*type:* `String.t`, *default:* `nil`) - Optional. The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. 'encoding' can also be set at the column family level. However, the setting at this level takes precedence if 'encoding' is set at both levels.
  *   `fieldName` (*type:* `String.t`, *default:* `nil`) - Optional. If the qualifier is not a valid BigQuery field identifier i.e. does not match a-zA-Z*, a valid identifier must be provided as the column field name and is used as field name in queries.
  *   `onlyReadLatest` (*type:* `boolean()`, *default:* `nil`) - Optional. If this is set, only the latest version of value in this column are exposed. 'onlyReadLatest' can also be set at the column family level. However, the setting at this level takes precedence if 'onlyReadLatest' is set at both levels.
  *   `qualifierEncoded` (*type:* `String.t`, *default:* `nil`) - [Required] Qualifier of the column. Columns in the parent column family that has this exact qualifier are exposed as `.` field. If the qualifier is valid UTF-8 string, it can be specified in the qualifier_string field. Otherwise, a base-64 encoded value must be set to qualifier_encoded. The column field name is the same as the column qualifier. However, if the qualifier is not a valid BigQuery field identifier i.e. does not match a-zA-Z*, a valid identifier must be provided as field_name.
  *   `qualifierString` (*type:* `String.t`, *default:* `nil`) - Qualifier string.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Optional. The type to convert the value in cells of this column. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive): * BYTES * STRING * INTEGER * FLOAT * BOOLEAN * JSON Default type is BYTES. 'type' can also be set at the column family level. However, the setting at this level takes precedence if 'type' is set at both levels.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encoding => String.t() | nil,
          :fieldName => String.t() | nil,
          :onlyReadLatest => boolean() | nil,
          :qualifierEncoded => String.t() | nil,
          :qualifierString => String.t() | nil,
          :type => String.t() | nil
        }

  field(:encoding)
  field(:fieldName)
  field(:onlyReadLatest)
  field(:qualifierEncoded)
  field(:qualifierString)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.BigtableColumn do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.BigtableColumn.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.BigtableColumn do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
