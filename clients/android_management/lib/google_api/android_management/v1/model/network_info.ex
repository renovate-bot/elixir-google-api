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

defmodule GoogleApi.AndroidManagement.V1.Model.NetworkInfo do
  @moduledoc """
  Device network info.

  ## Attributes

  *   `imei` (*type:* `String.t`, *default:* `nil`) - IMEI number of the GSM device. For example, A1000031212.
  *   `meid` (*type:* `String.t`, *default:* `nil`) - MEID number of the CDMA device. For example, A00000292788E1.
  *   `networkOperatorName` (*type:* `String.t`, *default:* `nil`) - Alphabetic name of current registered operator. For example, Vodafone.
  *   `telephonyInfos` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.TelephonyInfo.t)`, *default:* `nil`) - Provides telephony information associated with each SIM card on the device. Only supported on fully managed devices starting from Android API level 23.
  *   `wifiMacAddress` (*type:* `String.t`, *default:* `nil`) - Wi-Fi MAC address of the device. For example, 7c:11:11:11:11:11.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :imei => String.t() | nil,
          :meid => String.t() | nil,
          :networkOperatorName => String.t() | nil,
          :telephonyInfos => list(GoogleApi.AndroidManagement.V1.Model.TelephonyInfo.t()) | nil,
          :wifiMacAddress => String.t() | nil
        }

  field(:imei)
  field(:meid)
  field(:networkOperatorName)
  field(:telephonyInfos, as: GoogleApi.AndroidManagement.V1.Model.TelephonyInfo, type: :list)
  field(:wifiMacAddress)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.NetworkInfo do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.NetworkInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.NetworkInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
