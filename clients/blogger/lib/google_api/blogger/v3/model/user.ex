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

defmodule GoogleApi.Blogger.V3.Model.User do
  @moduledoc """


  ## Attributes

  *   `about` (*type:* `String.t`, *default:* `nil`) - Profile summary information.
  *   `blogs` (*type:* `GoogleApi.Blogger.V3.Model.UserBlogs.t`, *default:* `nil`) - The container of blogs for this user.
  *   `created` (*type:* `String.t`, *default:* `nil`) - The timestamp of when this profile was created, in seconds since epoch.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The identifier for this User.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of this entity. Always blogger#user.
  *   `locale` (*type:* `GoogleApi.Blogger.V3.Model.UserLocale.t`, *default:* `nil`) - This user's locale
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - The API REST URL to fetch this resource from.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The user's profile page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :about => String.t() | nil,
          :blogs => GoogleApi.Blogger.V3.Model.UserBlogs.t() | nil,
          :created => String.t() | nil,
          :displayName => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :locale => GoogleApi.Blogger.V3.Model.UserLocale.t() | nil,
          :selfLink => String.t() | nil,
          :url => String.t() | nil
        }

  field(:about)
  field(:blogs, as: GoogleApi.Blogger.V3.Model.UserBlogs)
  field(:created)
  field(:displayName)
  field(:id)
  field(:kind)
  field(:locale, as: GoogleApi.Blogger.V3.Model.UserLocale)
  field(:selfLink)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.User do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
