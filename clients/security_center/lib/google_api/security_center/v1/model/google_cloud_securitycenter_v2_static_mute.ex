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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2StaticMute do
  @moduledoc """
  Information about the static mute state. A static mute state overrides any dynamic mute rules that apply to this finding. The static mute state can be set by a static mute rule or by muting the finding directly.

  ## Attributes

  *   `applyTime` (*type:* `DateTime.t`, *default:* `nil`) - When the static mute was applied.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The static mute state. If the value is `MUTED` or `UNMUTED`, then the finding's overall mute state will have the same value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applyTime => DateTime.t() | nil,
          :state => String.t() | nil
        }

  field(:applyTime, as: DateTime)
  field(:state)
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2StaticMute do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2StaticMute.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2StaticMute do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
