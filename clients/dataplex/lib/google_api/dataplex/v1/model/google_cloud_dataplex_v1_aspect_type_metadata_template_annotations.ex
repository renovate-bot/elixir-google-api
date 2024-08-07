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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AspectTypeMetadataTemplateAnnotations do
  @moduledoc """
  Definition of the annotations of a field.

  ## Attributes

  *   `deprecated` (*type:* `String.t`, *default:* `nil`) - Optional. Marks a field as deprecated. You can include a deprecation message.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description for a field.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. Display name for a field.
  *   `displayOrder` (*type:* `integer()`, *default:* `nil`) - Optional. Display order for a field. You can use this to reorder where a field is rendered.
  *   `stringType` (*type:* `String.t`, *default:* `nil`) - Optional. You can use String Type annotations to specify special meaning to string fields. The following values are supported: richText: The field must be interpreted as a rich text field. url: A fully qualified URL link. resource: A service qualified resource reference.
  *   `stringValues` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Suggested hints for string fields. You can use them to suggest values to users through console.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deprecated => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :displayOrder => integer() | nil,
          :stringType => String.t() | nil,
          :stringValues => list(String.t()) | nil
        }

  field(:deprecated)
  field(:description)
  field(:displayName)
  field(:displayOrder)
  field(:stringType)
  field(:stringValues, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AspectTypeMetadataTemplateAnnotations do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AspectTypeMetadataTemplateAnnotations.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AspectTypeMetadataTemplateAnnotations do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
