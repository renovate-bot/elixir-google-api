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

defmodule GoogleApi.Testing.V1.Model.Account do
  @moduledoc """
  Identifies an account and how to log into it.

  ## Attributes

  *   `googleAuto` (*type:* `GoogleApi.Testing.V1.Model.GoogleAuto.t`, *default:* `nil`) - An automatic google login account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :googleAuto => GoogleApi.Testing.V1.Model.GoogleAuto.t() | nil
        }

  field(:googleAuto, as: GoogleApi.Testing.V1.Model.GoogleAuto)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.Account do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.Account.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.Account do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
