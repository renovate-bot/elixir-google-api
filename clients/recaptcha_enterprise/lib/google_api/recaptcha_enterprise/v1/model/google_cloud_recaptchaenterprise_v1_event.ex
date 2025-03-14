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

defmodule GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1Event do
  @moduledoc """
  The event being assessed.

  ## Attributes

  *   `expectedAction` (*type:* `String.t`, *default:* `nil`) - Optional. The expected action for this type of event. This should be the same action provided at token generation time on client-side platforms already integrated with recaptcha enterprise.
  *   `express` (*type:* `boolean()`, *default:* `nil`) - Optional. Flag for a reCAPTCHA express request for an assessment without a token. If enabled, `site_key` must reference an Express site key.
  *   `firewallPolicyEvaluation` (*type:* `boolean()`, *default:* `nil`) - Optional. Flag for enabling firewall policy config assessment. If this flag is enabled, the firewall policy is evaluated and a suggested firewall action is returned in the response.
  *   `fraudPrevention` (*type:* `String.t`, *default:* `nil`) - Optional. The Fraud Prevention setting for this assessment.
  *   `hashedAccountId` (*type:* `String.t`, *default:* `nil`) - Optional. Deprecated: use `user_info.account_id` instead. Unique stable hashed user identifier for the request. The identifier must be hashed using hmac-sha256 with stable secret.
  *   `headers` (*type:* `list(String.t)`, *default:* `nil`) - Optional. HTTP header information about the request.
  *   `ja3` (*type:* `String.t`, *default:* `nil`) - Optional. JA3 fingerprint for SSL clients. To learn how to compute this fingerprint, please refer to https://github.com/salesforce/ja3.
  *   `ja4` (*type:* `String.t`, *default:* `nil`) - Optional. JA4 fingerprint for SSL clients. To learn how to compute this fingerprint, please refer to https://github.com/FoxIO-LLC/ja4.
  *   `requestedUri` (*type:* `String.t`, *default:* `nil`) - Optional. The URI resource the user requested that triggered an assessment.
  *   `siteKey` (*type:* `String.t`, *default:* `nil`) - Optional. The site key that was used to invoke reCAPTCHA Enterprise on your site and generate the token.
  *   `token` (*type:* `String.t`, *default:* `nil`) - Optional. The user response token provided by the reCAPTCHA Enterprise client-side integration on your site.
  *   `transactionData` (*type:* `GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionData.t`, *default:* `nil`) - Optional. Data describing a payment transaction to be assessed. Sending this data enables reCAPTCHA Enterprise Fraud Prevention and the FraudPreventionAssessment component in the response.
  *   `userAgent` (*type:* `String.t`, *default:* `nil`) - Optional. The user agent present in the request from the user's device related to this event.
  *   `userInfo` (*type:* `GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1UserInfo.t`, *default:* `nil`) - Optional. Information about the user that generates this event, when they can be identified. They are often identified through the use of an account for logged-in requests or login/registration requests, or by providing user identifiers for guest actions like checkout.
  *   `userIpAddress` (*type:* `String.t`, *default:* `nil`) - Optional. The IP address in the request from the user's device related to this event.
  *   `wafTokenAssessment` (*type:* `boolean()`, *default:* `nil`) - Optional. Flag for running WAF token assessment. If enabled, the token must be specified, and have been created by a WAF-enabled key.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expectedAction => String.t() | nil,
          :express => boolean() | nil,
          :firewallPolicyEvaluation => boolean() | nil,
          :fraudPrevention => String.t() | nil,
          :hashedAccountId => String.t() | nil,
          :headers => list(String.t()) | nil,
          :ja3 => String.t() | nil,
          :ja4 => String.t() | nil,
          :requestedUri => String.t() | nil,
          :siteKey => String.t() | nil,
          :token => String.t() | nil,
          :transactionData =>
            GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionData.t()
            | nil,
          :userAgent => String.t() | nil,
          :userInfo =>
            GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1UserInfo.t()
            | nil,
          :userIpAddress => String.t() | nil,
          :wafTokenAssessment => boolean() | nil
        }

  field(:expectedAction)
  field(:express)
  field(:firewallPolicyEvaluation)
  field(:fraudPrevention)
  field(:hashedAccountId)
  field(:headers, type: :list)
  field(:ja3)
  field(:ja4)
  field(:requestedUri)
  field(:siteKey)
  field(:token)

  field(:transactionData,
    as: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionData
  )

  field(:userAgent)

  field(:userInfo,
    as: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1UserInfo
  )

  field(:userIpAddress)
  field(:wafTokenAssessment)
end

defimpl Poison.Decoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1Event do
  def decode(value, options) do
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1Event.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1Event do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
