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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataDiscoveryResultBigQueryPublishing do
  @moduledoc """
  Describes BigQuery publishing configurations.

  ## Attributes

  *   `dataset` (*type:* `String.t`, *default:* `nil`) - Output only. The BigQuery dataset the discovered tables are published to.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Output only. The location of the BigQuery publishing dataset.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataset => String.t() | nil,
          :location => String.t() | nil
        }

  field(:dataset)
  field(:location)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataDiscoveryResultBigQueryPublishing do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataDiscoveryResultBigQueryPublishing.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataDiscoveryResultBigQueryPublishing do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
