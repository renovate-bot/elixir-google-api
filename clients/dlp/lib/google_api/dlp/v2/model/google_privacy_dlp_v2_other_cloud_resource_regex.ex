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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherCloudResourceRegex do
  @moduledoc """
  A pattern to match against one or more resources. At least one pattern must be specified. Regular expressions use RE2 [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found under the google/re2 repository on GitHub.

  ## Attributes

  *   `amazonS3BucketRegex` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2AmazonS3BucketRegex.t`, *default:* `nil`) - Regex for Amazon S3 buckets.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amazonS3BucketRegex =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2AmazonS3BucketRegex.t() | nil
        }

  field(:amazonS3BucketRegex, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2AmazonS3BucketRegex)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherCloudResourceRegex do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherCloudResourceRegex.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherCloudResourceRegex do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
