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

defmodule GoogleApi.Admin.Directory_v1.Model.UserPhoto do
  @moduledoc """


  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `height` (*type:* `integer()`, *default:* `nil`) - Height of the photo in pixels.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID the API uses to uniquely identify the user.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#user#photo`) - The type of the API resource. For Photo resources, this is `admin#directory#user#photo`.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - The MIME type of the photo. Allowed values are `JPEG`, `PNG`, `GIF`, `BMP`, `TIFF`, and web-safe base64 encoding.
  *   `photoData` (*type:* `String.t`, *default:* `nil`) - The user photo's upload data in [web-safe Base64](https://en.wikipedia.org/wiki/Base64#URL_applications) format in bytes. This means: * The slash (/) character is replaced with the underscore (_) character. * The plus sign (+) character is replaced with the hyphen (-) character. * The equals sign (=) character is replaced with the asterisk (*). * For padding, the period (.) character is used instead of the RFC-4648 baseURL definition which uses the equals sign (=) for padding. This is done to simplify URL-parsing. * Whatever the size of the photo being uploaded, the API downsizes it to 96x96 pixels.
  *   `primaryEmail` (*type:* `String.t`, *default:* `nil`) - The user's primary email address.
  *   `width` (*type:* `integer()`, *default:* `nil`) - Width of the photo in pixels.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t() | nil,
          :height => integer() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :mimeType => String.t() | nil,
          :photoData => String.t() | nil,
          :primaryEmail => String.t() | nil,
          :width => integer() | nil
        }

  field(:etag)
  field(:height)
  field(:id)
  field(:kind)
  field(:mimeType)
  field(:photoData)
  field(:primaryEmail)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.UserPhoto do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.UserPhoto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.UserPhoto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
