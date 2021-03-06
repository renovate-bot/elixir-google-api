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

defmodule GoogleApi.WebSecurityScanner.V1.Model.Xss do
  @moduledoc """
  Information reported for an XSS.

  ## Attributes

  *   `attackVector` (*type:* `String.t`, *default:* `nil`) - The attack vector of the payload triggering this XSS.
  *   `errorMessage` (*type:* `String.t`, *default:* `nil`) - An error message generated by a javascript breakage.
  *   `stackTraces` (*type:* `list(String.t)`, *default:* `nil`) - Stack traces leading to the point where the XSS occurred.
  *   `storedXssSeedingUrl` (*type:* `String.t`, *default:* `nil`) - The reproduction url for the seeding POST request of a Stored XSS.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attackVector => String.t() | nil,
          :errorMessage => String.t() | nil,
          :stackTraces => list(String.t()) | nil,
          :storedXssSeedingUrl => String.t() | nil
        }

  field(:attackVector)
  field(:errorMessage)
  field(:stackTraces, type: :list)
  field(:storedXssSeedingUrl)
end

defimpl Poison.Decoder, for: GoogleApi.WebSecurityScanner.V1.Model.Xss do
  def decode(value, options) do
    GoogleApi.WebSecurityScanner.V1.Model.Xss.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebSecurityScanner.V1.Model.Xss do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
