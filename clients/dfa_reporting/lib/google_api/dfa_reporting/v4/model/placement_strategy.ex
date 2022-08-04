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

defmodule GoogleApi.DFAReporting.V4.Model.PlacementStrategy do
  @moduledoc """
  Contains properties of a placement strategy.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this placement strategy.This is a read-only field that can be left blank.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this placement strategy. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#placementStrategy".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this placement strategy. This is a required field. It must be less than 256 characters long and unique among placement strategies of the same account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil
        }

  field(:accountId)
  field(:id)
  field(:kind)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.PlacementStrategy do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.PlacementStrategy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.PlacementStrategy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end