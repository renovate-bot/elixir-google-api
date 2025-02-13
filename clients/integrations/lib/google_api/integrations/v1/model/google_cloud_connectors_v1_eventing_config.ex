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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingConfig do
  @moduledoc """
  Eventing Configuration of a connection

  ## Attributes

  *   `additionalVariables` (*type:* `list(GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConfigVariable.t)`, *default:* `nil`) - Optional. Additional eventing related field values
  *   `authConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1AuthConfig.t`, *default:* `nil`) - Optional. Auth details for the webhook adapter.
  *   `deadLetterConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingConfigDeadLetterConfig.t`, *default:* `nil`) - Optional. Dead letter configuration for eventing of a connection.
  *   `enrichmentConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EnrichmentConfig.t`, *default:* `nil`) - Optional. Data enrichment configuration.
  *   `enrichmentEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Enrichment Enabled.
  *   `eventsListenerIngressEndpoint` (*type:* `String.t`, *default:* `nil`) - Optional. Ingress endpoint of the event listener. This is used only when private connectivity is enabled.
  *   `listenerAuthConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1AuthConfig.t`, *default:* `nil`) - Optional. Auth details for the event listener.
  *   `privateConnectivityEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Private Connectivity Enabled.
  *   `proxyDestinationConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1DestinationConfig.t`, *default:* `nil`) - Optional. Proxy for Eventing auto-registration.
  *   `registrationDestinationConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1DestinationConfig.t`, *default:* `nil`) - Optional. Registration endpoint for auto registration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalVariables =>
            list(GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConfigVariable.t()) | nil,
          :authConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1AuthConfig.t() | nil,
          :deadLetterConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingConfigDeadLetterConfig.t()
            | nil,
          :enrichmentConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EnrichmentConfig.t() | nil,
          :enrichmentEnabled => boolean() | nil,
          :eventsListenerIngressEndpoint => String.t() | nil,
          :listenerAuthConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1AuthConfig.t() | nil,
          :privateConnectivityEnabled => boolean() | nil,
          :proxyDestinationConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1DestinationConfig.t() | nil,
          :registrationDestinationConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1DestinationConfig.t() | nil
        }

  field(:additionalVariables,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConfigVariable,
    type: :list
  )

  field(:authConfig, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1AuthConfig)

  field(:deadLetterConfig,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingConfigDeadLetterConfig
  )

  field(:enrichmentConfig,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EnrichmentConfig
  )

  field(:enrichmentEnabled)
  field(:eventsListenerIngressEndpoint)

  field(:listenerAuthConfig, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1AuthConfig)

  field(:privateConnectivityEnabled)

  field(:proxyDestinationConfig,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1DestinationConfig
  )

  field(:registrationDestinationConfig,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1DestinationConfig
  )
end

defimpl Poison.Decoder, for: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingConfig do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
