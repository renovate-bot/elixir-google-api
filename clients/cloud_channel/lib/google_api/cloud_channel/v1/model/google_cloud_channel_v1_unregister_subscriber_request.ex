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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1UnregisterSubscriberRequest do
  @moduledoc """
  Request Message for UnregisterSubscriber.

  ## Attributes

  *   `account` (*type:* `String.t`, *default:* `nil`) - Optional. Resource name of the account. Required if integrator is not provided. Otherwise, leave this field empty/unset.
  *   `integrator` (*type:* `String.t`, *default:* `nil`) - Optional. Resource name of the integrator. Required if account is not provided. Otherwise, leave this field empty/unset.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Required. Service account to unregister from subscriber access to the topic.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :account => String.t() | nil,
          :integrator => String.t() | nil,
          :serviceAccount => String.t() | nil
        }

  field(:account)
  field(:integrator)
  field(:serviceAccount)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1UnregisterSubscriberRequest do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1UnregisterSubscriberRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1UnregisterSubscriberRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
