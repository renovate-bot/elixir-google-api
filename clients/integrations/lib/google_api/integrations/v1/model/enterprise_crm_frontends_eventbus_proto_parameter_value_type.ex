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

defmodule GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoParameterValueType do
  @moduledoc """
  To support various types of parameter values. Next available id: 14

  ## Attributes

  *   `booleanArray` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray.t`, *default:* `nil`) - 
  *   `booleanValue` (*type:* `boolean()`, *default:* `nil`) - 
  *   `doubleArray` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray.t`, *default:* `nil`) - 
  *   `doubleValue` (*type:* `float()`, *default:* `nil`) - 
  *   `intArray` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoIntParameterArray.t`, *default:* `nil`) - 
  *   `intValue` (*type:* `String.t`, *default:* `nil`) - 
  *   `jsonValue` (*type:* `String.t`, *default:* `nil`) - 
  *   `protoArray` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoProtoParameterArray.t`, *default:* `nil`) - 
  *   `protoValue` (*type:* `map()`, *default:* `nil`) - 
  *   `serializedObjectValue` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter.t`, *default:* `nil`) - 
  *   `stringArray` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoStringParameterArray.t`, *default:* `nil`) - 
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :booleanArray =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray.t()
            | nil,
          :booleanValue => boolean() | nil,
          :doubleArray =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray.t()
            | nil,
          :doubleValue => float() | nil,
          :intArray =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoIntParameterArray.t()
            | nil,
          :intValue => String.t() | nil,
          :jsonValue => String.t() | nil,
          :protoArray =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoProtoParameterArray.t()
            | nil,
          :protoValue => map() | nil,
          :serializedObjectValue =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter.t()
            | nil,
          :stringArray =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoStringParameterArray.t()
            | nil,
          :stringValue => String.t() | nil
        }

  field(:booleanArray,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray
  )

  field(:booleanValue)

  field(:doubleArray,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray
  )

  field(:doubleValue)

  field(:intArray,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoIntParameterArray
  )

  field(:intValue)
  field(:jsonValue)

  field(:protoArray,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoProtoParameterArray
  )

  field(:protoValue, type: :map)

  field(:serializedObjectValue,
    as:
      GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter
  )

  field(:stringArray,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoStringParameterArray
  )

  field(:stringValue)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoParameterValueType do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoParameterValueType.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoParameterValueType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
