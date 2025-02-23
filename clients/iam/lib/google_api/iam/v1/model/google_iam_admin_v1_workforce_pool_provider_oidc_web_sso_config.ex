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

defmodule GoogleApi.IAM.V1.Model.GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig do
  @moduledoc """
  Configuration for web single sign-on for the OIDC provider.

  ## Attributes

  *   `additionalScopes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Additional scopes to request for in the OIDC authentication request on top of scopes requested by default. By default, the `openid`, `profile` and `email` scopes that are supported by the identity provider are requested. Each additional scope may be at most 256 characters. A maximum of 10 additional scopes may be configured.
  *   `assertionClaimsBehavior` (*type:* `String.t`, *default:* `nil`) - Required. The behavior for how OIDC Claims are included in the `assertion` object used for attribute mapping and attribute condition.
  *   `responseType` (*type:* `String.t`, *default:* `nil`) - Required. The Response Type to request for in the OIDC Authorization Request for web sign-in. The `CODE` Response Type is recommended to avoid the Implicit Flow, for security reasons.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalScopes => list(String.t()) | nil,
          :assertionClaimsBehavior => String.t() | nil,
          :responseType => String.t() | nil
        }

  field(:additionalScopes, type: :list)
  field(:assertionClaimsBehavior)
  field(:responseType)
end

defimpl Poison.Decoder,
  for: GoogleApi.IAM.V1.Model.GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.IAM.V1.Model.GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
