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

defmodule GoogleApi.Chat.V1.Model.ListCustomEmojisResponse do
  @moduledoc """
  A response to list custom emojis.

  ## Attributes

  *   `customEmojis` (*type:* `list(GoogleApi.Chat.V1.Model.CustomEmoji.t)`, *default:* `nil`) - Unordered list. List of custom emojis.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token that you can send as `pageToken` to retrieve the next page of results. If empty, there are no subsequent pages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customEmojis => list(GoogleApi.Chat.V1.Model.CustomEmoji.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:customEmojis, as: GoogleApi.Chat.V1.Model.CustomEmoji, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.ListCustomEmojisResponse do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.ListCustomEmojisResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.ListCustomEmojisResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
