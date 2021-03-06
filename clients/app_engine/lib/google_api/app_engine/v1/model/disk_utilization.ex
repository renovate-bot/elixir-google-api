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

defmodule GoogleApi.AppEngine.V1.Model.DiskUtilization do
  @moduledoc """
  Target scaling by disk usage. Only applicable in the App Engine flexible environment.

  ## Attributes

  *   `targetReadBytesPerSecond` (*type:* `integer()`, *default:* `nil`) - Target bytes read per second.
  *   `targetReadOpsPerSecond` (*type:* `integer()`, *default:* `nil`) - Target ops read per seconds.
  *   `targetWriteBytesPerSecond` (*type:* `integer()`, *default:* `nil`) - Target bytes written per second.
  *   `targetWriteOpsPerSecond` (*type:* `integer()`, *default:* `nil`) - Target ops written per second.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :targetReadBytesPerSecond => integer() | nil,
          :targetReadOpsPerSecond => integer() | nil,
          :targetWriteBytesPerSecond => integer() | nil,
          :targetWriteOpsPerSecond => integer() | nil
        }

  field(:targetReadBytesPerSecond)
  field(:targetReadOpsPerSecond)
  field(:targetWriteBytesPerSecond)
  field(:targetWriteOpsPerSecond)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.DiskUtilization do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.DiskUtilization.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.DiskUtilization do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
