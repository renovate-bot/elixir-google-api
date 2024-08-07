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

defmodule GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoErrorDetail do
  @moduledoc """
  An error, warning, or information message associated with a workflow.

  ## Attributes

  *   `errorCode` (*type:* `GoogleApi.Integrations.V1.Model.CrmlogErrorCode.t`, *default:* `nil`) - The associated error-code, which can be a common or internal code.
  *   `errorMessage` (*type:* `String.t`, *default:* `nil`) - The full text of the error message, including any parameters that were thrown along with the exception.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - The severity of the error: ERROR|WARN|INFO.
  *   `taskNumber` (*type:* `integer()`, *default:* `nil`) - The task try-number, in which, the error occurred. If zero, the error happened at the event level.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorCode => GoogleApi.Integrations.V1.Model.CrmlogErrorCode.t() | nil,
          :errorMessage => String.t() | nil,
          :severity => String.t() | nil,
          :taskNumber => integer() | nil
        }

  field(:errorCode, as: GoogleApi.Integrations.V1.Model.CrmlogErrorCode)
  field(:errorMessage)
  field(:severity)
  field(:taskNumber)
end

defimpl Poison.Decoder, for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoErrorDetail do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoErrorDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoErrorDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
