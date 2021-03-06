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

defmodule GoogleApi.DriveActivity.V2.Model.Action do
  @moduledoc """
  Information about the action.

  ## Attributes

  *   `actor` (*type:* `GoogleApi.DriveActivity.V2.Model.Actor.t`, *default:* `nil`) - The actor responsible for this action (or empty if all actors are responsible).
  *   `detail` (*type:* `GoogleApi.DriveActivity.V2.Model.ActionDetail.t`, *default:* `nil`) - The type and detailed information about the action.
  *   `target` (*type:* `GoogleApi.DriveActivity.V2.Model.Target.t`, *default:* `nil`) - The target this action affects (or empty if affecting all targets). This represents the state of the target immediately after this action occurred.
  *   `timeRange` (*type:* `GoogleApi.DriveActivity.V2.Model.TimeRange.t`, *default:* `nil`) - The action occurred over this time range.
  *   `timestamp` (*type:* `DateTime.t`, *default:* `nil`) - The action occurred at this specific time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actor => GoogleApi.DriveActivity.V2.Model.Actor.t() | nil,
          :detail => GoogleApi.DriveActivity.V2.Model.ActionDetail.t() | nil,
          :target => GoogleApi.DriveActivity.V2.Model.Target.t() | nil,
          :timeRange => GoogleApi.DriveActivity.V2.Model.TimeRange.t() | nil,
          :timestamp => DateTime.t() | nil
        }

  field(:actor, as: GoogleApi.DriveActivity.V2.Model.Actor)
  field(:detail, as: GoogleApi.DriveActivity.V2.Model.ActionDetail)
  field(:target, as: GoogleApi.DriveActivity.V2.Model.Target)
  field(:timeRange, as: GoogleApi.DriveActivity.V2.Model.TimeRange)
  field(:timestamp, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DriveActivity.V2.Model.Action do
  def decode(value, options) do
    GoogleApi.DriveActivity.V2.Model.Action.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DriveActivity.V2.Model.Action do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
