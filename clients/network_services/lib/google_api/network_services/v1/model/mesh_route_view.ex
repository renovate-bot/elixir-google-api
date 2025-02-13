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

defmodule GoogleApi.NetworkServices.V1.Model.MeshRouteView do
  @moduledoc """
  MeshRouteView defines view-only resource for Routes to a Mesh

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Identifier. Full path name of the MeshRouteView resource. Format: projects/{project_number}/locations/{location}/meshes/{mesh_name}/routeViews/{route_view_name}
  *   `routeId` (*type:* `String.t`, *default:* `nil`) - Output only. The resource id for the route.
  *   `routeLocation` (*type:* `String.t`, *default:* `nil`) - Output only. Location where the route exists.
  *   `routeProjectNumber` (*type:* `String.t`, *default:* `nil`) - Output only. Project number where the route exists.
  *   `routeType` (*type:* `String.t`, *default:* `nil`) - Output only. Type of the route: HttpRoute,GrpcRoute,TcpRoute, or TlsRoute
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :routeId => String.t() | nil,
          :routeLocation => String.t() | nil,
          :routeProjectNumber => String.t() | nil,
          :routeType => String.t() | nil
        }

  field(:name)
  field(:routeId)
  field(:routeLocation)
  field(:routeProjectNumber)
  field(:routeType)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.MeshRouteView do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.MeshRouteView.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.MeshRouteView do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
