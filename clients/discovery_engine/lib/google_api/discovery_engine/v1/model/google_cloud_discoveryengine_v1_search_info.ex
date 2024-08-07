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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchInfo do
  @moduledoc """
  Detailed search information.

  ## Attributes

  *   `offset` (*type:* `integer()`, *default:* `nil`) - An integer that specifies the current offset for pagination (the 0-indexed starting location, amongst the products deemed by the API as relevant). See SearchRequest.offset for definition. If this field is negative, an `INVALID_ARGUMENT` is returned. This can only be set for `search` events. Other event types should not set this field. Otherwise, an `INVALID_ARGUMENT` error is returned.
  *   `orderBy` (*type:* `String.t`, *default:* `nil`) - The order in which products are returned, if applicable. See SearchRequest.order_by for definition and syntax. The value must be a UTF-8 encoded string with a length limit of 1,000 characters. Otherwise, an `INVALID_ARGUMENT` error is returned. This can only be set for `search` events. Other event types should not set this field. Otherwise, an `INVALID_ARGUMENT` error is returned.
  *   `searchQuery` (*type:* `String.t`, *default:* `nil`) - The user's search query. See SearchRequest.query for definition. The value must be a UTF-8 encoded string with a length limit of 5,000 characters. Otherwise, an `INVALID_ARGUMENT` error is returned. At least one of search_query or PageInfo.page_category is required for `search` events. Other event types should not set this field. Otherwise, an `INVALID_ARGUMENT` error is returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :offset => integer() | nil,
          :orderBy => String.t() | nil,
          :searchQuery => String.t() | nil
        }

  field(:offset)
  field(:orderBy)
  field(:searchQuery)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchInfo do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
