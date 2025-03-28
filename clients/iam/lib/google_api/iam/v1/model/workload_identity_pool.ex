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

defmodule GoogleApi.IAM.V1.Model.WorkloadIdentityPool do
  @moduledoc """
  Represents a collection of workload identities. You can define IAM policies to grant these identities access to Google Cloud resources.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A description of the pool. Cannot exceed 256 characters.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. A display name for the pool. Cannot exceed 32 characters.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time after which the workload identity pool will be permanently purged and cannot be recovered.
  *   `inlineCertificateIssuanceConfig` (*type:* `GoogleApi.IAM.V1.Model.InlineCertificateIssuanceConfig.t`, *default:* `nil`) - Optional. Defines the Certificate Authority (CA) pool resources and configurations required for issuance and rotation of mTLS workload certificates.
  *   `inlineTrustConfig` (*type:* `GoogleApi.IAM.V1.Model.InlineTrustConfig.t`, *default:* `nil`) - Optional. Represents config to add additional trusted trust domains.
  *   `mode` (*type:* `String.t`, *default:* `nil`) - Immutable. The mode the pool is operating in.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the pool.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the pool.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :disabled => boolean() | nil,
          :displayName => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :inlineCertificateIssuanceConfig =>
            GoogleApi.IAM.V1.Model.InlineCertificateIssuanceConfig.t() | nil,
          :inlineTrustConfig => GoogleApi.IAM.V1.Model.InlineTrustConfig.t() | nil,
          :mode => String.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil
        }

  field(:description)
  field(:disabled)
  field(:displayName)
  field(:expireTime, as: DateTime)

  field(:inlineCertificateIssuanceConfig,
    as: GoogleApi.IAM.V1.Model.InlineCertificateIssuanceConfig
  )

  field(:inlineTrustConfig, as: GoogleApi.IAM.V1.Model.InlineTrustConfig)
  field(:mode)
  field(:name)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.WorkloadIdentityPool do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.WorkloadIdentityPool.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.WorkloadIdentityPool do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
