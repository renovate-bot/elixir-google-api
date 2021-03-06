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

defmodule GoogleApi.ServiceManagement.V1.Model.Diagnostic do
  @moduledoc """
  Represents a diagnostic message (error or warning)

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of diagnostic information provided.
  *   `location` (*type:* `String.t`, *default:* `nil`) - File name and line number of the error or warning.
  *   `message` (*type:* `String.t`, *default:* `nil`) - Message describing the error or warning.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :location => String.t() | nil,
          :message => String.t() | nil
        }

  field(:kind)
  field(:location)
  field(:message)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.Diagnostic do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.Diagnostic.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.Diagnostic do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
