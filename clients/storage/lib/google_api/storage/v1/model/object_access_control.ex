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

defmodule GoogleApi.Storage.V1.Model.ObjectAccessControl do
  @moduledoc """
  An access-control entry.

  ## Attributes

  *   `bucket` (*type:* `String.t`, *default:* `nil`) - The name of the bucket.
  *   `domain` (*type:* `String.t`, *default:* `nil`) - The domain associated with the entity, if any.
  *   `email` (*type:* `String.t`, *default:* `nil`) - The email address associated with the entity, if any.
  *   `entity` (*type:* `String.t`, *default:* `nil`) - The entity holding the permission, in one of the following forms: 
      - user-userId 
      - user-email 
      - group-groupId 
      - group-email 
      - domain-domain 
      - project-team-projectId 
      - allUsers 
      - allAuthenticatedUsers Examples: 
      - The user liz@example.com would be user-liz@example.com. 
      - The group example@googlegroups.com would be group-example@googlegroups.com. 
      - To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com.
  *   `entityId` (*type:* `String.t`, *default:* `nil`) - The ID for the entity, if any.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - HTTP 1.1 Entity tag for the access-control entry.
  *   `generation` (*type:* `String.t`, *default:* `nil`) - The content generation of the object, if applied to an object.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the access-control entry.
  *   `kind` (*type:* `String.t`, *default:* `storage#objectAccessControl`) - The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  *   `object` (*type:* `String.t`, *default:* `nil`) - The name of the object, if applied to an object.
  *   `projectTeam` (*type:* `GoogleApi.Storage.V1.Model.ObjectAccessControlProjectTeam.t`, *default:* `nil`) - The project team associated with the entity, if any.
  *   `role` (*type:* `String.t`, *default:* `nil`) - The access permission for the entity.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - The link to this access-control entry.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucket => String.t() | nil,
          :domain => String.t() | nil,
          :email => String.t() | nil,
          :entity => String.t() | nil,
          :entityId => String.t() | nil,
          :etag => String.t() | nil,
          :generation => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :object => String.t() | nil,
          :projectTeam => GoogleApi.Storage.V1.Model.ObjectAccessControlProjectTeam.t() | nil,
          :role => String.t() | nil,
          :selfLink => String.t() | nil
        }

  field(:bucket)
  field(:domain)
  field(:email)
  field(:entity)
  field(:entityId)
  field(:etag)
  field(:generation)
  field(:id)
  field(:kind)
  field(:object)
  field(:projectTeam, as: GoogleApi.Storage.V1.Model.ObjectAccessControlProjectTeam)
  field(:role)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.ObjectAccessControl do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.ObjectAccessControl.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.ObjectAccessControl do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
