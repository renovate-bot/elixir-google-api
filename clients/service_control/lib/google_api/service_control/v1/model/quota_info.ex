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

defmodule GoogleApi.ServiceControl.V1.Model.QuotaInfo do
  @moduledoc """
  Contains the quota information for a quota check response.

  ## Attributes

  *   `limitExceeded` (*type:* `list(String.t)`, *default:* `nil`) - Quota Metrics that have exceeded quota limits. For QuotaGroup-based quota, this is QuotaGroup.name For QuotaLimit-based quota, this is QuotaLimit.name See: google.api.Quota Deprecated: Use quota_metrics to get per quota group limit exceeded status.
  *   `quotaConsumed` (*type:* `map()`, *default:* `nil`) - Map of quota group name to the actual number of tokens consumed. If the quota check was not successful, then this will not be populated due to no quota consumption. We are not merging this field with 'quota_metrics' field because of the complexity of scaling in Chemist client code base. For simplicity, we will keep this field for Castor (that scales quota usage) and 'quota_metrics' for SuperQuota (that doesn't scale quota usage). 
  *   `quotaMetrics` (*type:* `list(GoogleApi.ServiceControl.V1.Model.MetricValueSet.t)`, *default:* `nil`) - Quota metrics to indicate the usage. Depending on the check request, one or more of the following metrics will be included: 1. For rate quota, per quota group or per quota metric incremental usage will be specified using the following delta metric: "serviceruntime.googleapis.com/api/consumer/quota_used_count" 2. For allocation quota, per quota metric total usage will be specified using the following gauge metric: "serviceruntime.googleapis.com/allocation/consumer/quota_used_count" 3. For both rate quota and allocation quota, the quota limit reached condition will be specified using the following boolean metric: "serviceruntime.googleapis.com/quota/exceeded"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :limitExceeded => list(String.t()) | nil,
          :quotaConsumed => map() | nil,
          :quotaMetrics => list(GoogleApi.ServiceControl.V1.Model.MetricValueSet.t()) | nil
        }

  field(:limitExceeded, type: :list)
  field(:quotaConsumed, type: :map)
  field(:quotaMetrics, as: GoogleApi.ServiceControl.V1.Model.MetricValueSet, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.QuotaInfo do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.QuotaInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.QuotaInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
