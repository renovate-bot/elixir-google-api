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

defmodule GoogleApi.NetworkConnectivity.V1.Model.PscConfig do
  @moduledoc """
  Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.

  ## Attributes

  *   `allowedGoogleProducersResourceHierarchyLevel` (*type:* `list(String.t)`, *default:* `nil`) - Optional. List of Projects, Folders, or Organizations from where the Producer instance can be within. For example, a network administrator can provide both 'organizations/foo' and 'projects/bar' as allowed_google_producers_resource_hierarchy_levels. This allowlists this network to connect with any Producer instance within the 'foo' organization or the 'bar' project. By default, allowed_google_producers_resource_hierarchy_level is empty. The format for each allowed_google_producers_resource_hierarchy_level is / where is one of 'projects', 'folders', or 'organizations' and is either the ID or the number of the resource type. Format for each allowed_google_producers_resource_hierarchy_level value: 'projects/' or 'folders/' or 'organizations/' Eg. [projects/my-project-id, projects/567, folders/891, organizations/123]
  *   `limit` (*type:* `String.t`, *default:* `nil`) - Optional. Max number of PSC connections for this policy.
  *   `producerInstanceLocation` (*type:* `String.t`, *default:* `nil`) - Required. ProducerInstanceLocation is used to specify which authorization mechanism to use to determine which projects the Producer instance can be within.
  *   `subnetworks` (*type:* `list(String.t)`, *default:* `nil`) - The resource paths of subnetworks to use for IP address management. Example: projects/{projectNumOrId}/regions/{region}/subnetworks/{resourceId}.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedGoogleProducersResourceHierarchyLevel => list(String.t()) | nil,
          :limit => String.t() | nil,
          :producerInstanceLocation => String.t() | nil,
          :subnetworks => list(String.t()) | nil
        }

  field(:allowedGoogleProducersResourceHierarchyLevel, type: :list)
  field(:limit)
  field(:producerInstanceLocation)
  field(:subnetworks, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.PscConfig do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.PscConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.PscConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
