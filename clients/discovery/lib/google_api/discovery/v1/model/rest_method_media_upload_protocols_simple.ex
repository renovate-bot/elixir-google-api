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

defmodule GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocolsSimple do
  @moduledoc """
  Supports uploading as a single HTTP request.

  ## Attributes

  *   `multipart` (*type:* `boolean()`, *default:* `true`) - True if this endpoint supports upload multipart media.
  *   `path` (*type:* `String.t`, *default:* `nil`) - The URI path to be used for upload. Should be used in conjunction with the basePath property at the api-level.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :multipart => boolean() | nil,
          :path => String.t() | nil
        }

  field(:multipart)
  field(:path)
end

defimpl Poison.Decoder, for: GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocolsSimple do
  def decode(value, options) do
    GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocolsSimple.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Discovery.V1.Model.RestMethodMediaUploadProtocolsSimple do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
