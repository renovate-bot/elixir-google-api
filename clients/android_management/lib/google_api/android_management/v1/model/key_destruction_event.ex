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

defmodule GoogleApi.AndroidManagement.V1.Model.KeyDestructionEvent do
  @moduledoc """
  A cryptographic key including user installed, admin installed and system maintained private key is removed from the device either by the user or management. This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.

  ## Attributes

  *   `applicationUid` (*type:* `integer()`, *default:* `nil`) - UID of the application which owns the key.
  *   `keyAlias` (*type:* `String.t`, *default:* `nil`) - Alias of the key.
  *   `success` (*type:* `boolean()`, *default:* `nil`) - Whether the operation was successful.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicationUid => integer() | nil,
          :keyAlias => String.t() | nil,
          :success => boolean() | nil
        }

  field(:applicationUid)
  field(:keyAlias)
  field(:success)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.KeyDestructionEvent do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.KeyDestructionEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.KeyDestructionEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end