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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BucketingConfig do
  @moduledoc """
  Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 -> LOW, 31-65 -> MEDIUM, 66-100 -> HIGH. This can be used on data of type: number, long, string, timestamp. If the bound `Value` type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing. See https://cloud.google.com/sensitive-data-protection/docs/concepts-bucketing to learn more.

  ## Attributes

  *   `buckets` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Bucket.t)`, *default:* `nil`) - Set of buckets. Ranges must be non-overlapping.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buckets => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Bucket.t()) | nil
        }

  field(:buckets, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Bucket, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BucketingConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BucketingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BucketingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
