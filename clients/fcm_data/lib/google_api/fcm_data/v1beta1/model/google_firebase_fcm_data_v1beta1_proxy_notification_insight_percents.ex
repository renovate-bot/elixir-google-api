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

defmodule GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1ProxyNotificationInsightPercents do
  @moduledoc """
  Additional information about [proxy notification](https://firebase.google.com/docs/cloud-messaging/android/message-priority#proxy) delivery. All percentages are calculated with countNotificationsAccepted as the denominator.

  ## Attributes

  *   `failed` (*type:* `number()`, *default:* `nil`) - The percentage of accepted notifications that failed to be proxied. This is usually caused by exceptions that occurred while calling [notifyAsPackage](https://developer.android.com/reference/android/app/NotificationManager#notifyAsPackage%28java.lang.String,%20java.lang.String,%20int,%20android.app.Notification%29).
  *   `proxied` (*type:* `number()`, *default:* `nil`) - The percentage of accepted notifications that were successfully proxied by [Google Play services](https://developers.google.com/android/guides/overview).
  *   `skippedNotThrottled` (*type:* `number()`, *default:* `nil`) - The percentage of accepted notifications that were skipped because the messages were not throttled.
  *   `skippedOptedOut` (*type:* `number()`, *default:* `nil`) - The percentage of accepted notifications that were skipped because the app disallowed these messages to be proxied.
  *   `skippedUnconfigured` (*type:* `number()`, *default:* `nil`) - The percentage of accepted notifications that were skipped because configurations required for notifications to be proxied were missing.
  *   `skippedUnsupported` (*type:* `number()`, *default:* `nil`) - The percentage of accepted notifications that were skipped because proxy notification is unsupported for the recipient.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :failed => number() | nil,
          :proxied => number() | nil,
          :skippedNotThrottled => number() | nil,
          :skippedOptedOut => number() | nil,
          :skippedUnconfigured => number() | nil,
          :skippedUnsupported => number() | nil
        }

  field(:failed)
  field(:proxied)
  field(:skippedNotThrottled)
  field(:skippedOptedOut)
  field(:skippedUnconfigured)
  field(:skippedUnsupported)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1ProxyNotificationInsightPercents do
  def decode(value, options) do
    GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1ProxyNotificationInsightPercents.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.FCMData.V1beta1.Model.GoogleFirebaseFcmDataV1beta1ProxyNotificationInsightPercents do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
