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

defmodule GoogleApi.ChromeUXReport.V1.Model.Percentiles do
  @moduledoc """
  Percentiles contains synthetic values of a metric at a given statistical percentile. These are used for estimating a metric's value as experienced by a percentage of users out of the total number of users.

  ## Attributes

  *   `p75` (*type:* `any()`, *default:* `nil`) - 75% of users experienced the given metric at or below this value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :p75 => any() | nil
        }

  field(:p75)
end

defimpl Poison.Decoder, for: GoogleApi.ChromeUXReport.V1.Model.Percentiles do
  def decode(value, options) do
    GoogleApi.ChromeUXReport.V1.Model.Percentiles.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ChromeUXReport.V1.Model.Percentiles do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
