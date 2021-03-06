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

defmodule GoogleApi.Content.V21.Model.AccountCredentials do
  @moduledoc """
  Credentials allowing Google to call a partner's API on behalf of a merchant.

  ## Attributes

  *   `accessToken` (*type:* `String.t`, *default:* `nil`) - An OAuth access token.
  *   `expiresIn` (*type:* `String.t`, *default:* `nil`) - The amount of time, in seconds, after which the access token is no longer valid.
  *   `purpose` (*type:* `String.t`, *default:* `nil`) - Indicates to Google how Google should use these OAuth tokens.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessToken => String.t() | nil,
          :expiresIn => String.t() | nil,
          :purpose => String.t() | nil
        }

  field(:accessToken)
  field(:expiresIn)
  field(:purpose)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountCredentials do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountCredentials.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountCredentials do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
