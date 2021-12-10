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

defmodule GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1Data do
  @moduledoc """
  Data detailing messaging delivery

  ## Attributes

  *   `countMessagesAccepted` (*type:* `String.t`, *default:* `nil`) - Count of messages accepted by FCM intended to Android devices. The targeted device must have opted in to the collection of usage and diagnostic information.
  *   `deliveryPerformancePercents` (*type:* `GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents.t`, *default:* `nil`) - Additional information about delivery performance for messages that were successfully delivered.
  *   `messageInsightPercents` (*type:* `GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1MessageInsightPercents.t`, *default:* `nil`) - Additional general insights about message delivery.
  *   `messageOutcomePercents` (*type:* `GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1MessageOutcomePercents.t`, *default:* `nil`) - Mutually exclusive breakdown of message delivery outcomes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :countMessagesAccepted => String.t() | nil,
          :deliveryPerformancePercents =>
            GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents.t()
            | nil,
          :messageInsightPercents =>
            GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1MessageInsightPercents.t()
            | nil,
          :messageOutcomePercents =>
            GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1MessageOutcomePercents.t()
            | nil
        }

  field(:countMessagesAccepted)

  field(:deliveryPerformancePercents,
    as: GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents
  )

  field(:messageInsightPercents,
    as: GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1MessageInsightPercents
  )

  field(:messageOutcomePercents,
    as: GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1MessageOutcomePercents
  )
end

defimpl Poison.Decoder, for: GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1Data do
  def decode(value, options) do
    GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1Data.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1Data do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end