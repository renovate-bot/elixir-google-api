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

defmodule GoogleApi.YouTube.V3.Model.TestItem do
  @moduledoc """


  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag for the resource. See https://en.wikipedia.org/wiki/HTTP_ETag.
  *   `featuredPart` (*type:* `boolean()`, *default:* `nil`) - 
  *   `gaia` (*type:* `String.t`, *default:* `nil`) - 
  *   `id` (*type:* `String.t`, *default:* `nil`) - 
  *   `snippet` (*type:* `GoogleApi.YouTube.V3.Model.TestItemTestItemSnippet.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t() | nil,
          :featuredPart => boolean() | nil,
          :gaia => String.t() | nil,
          :id => String.t() | nil,
          :snippet => GoogleApi.YouTube.V3.Model.TestItemTestItemSnippet.t() | nil
        }

  field(:etag)
  field(:featuredPart)
  field(:gaia)
  field(:id)
  field(:snippet, as: GoogleApi.YouTube.V3.Model.TestItemTestItemSnippet)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.TestItem do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.TestItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.TestItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
