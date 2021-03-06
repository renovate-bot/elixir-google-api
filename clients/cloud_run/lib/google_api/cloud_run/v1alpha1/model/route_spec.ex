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

defmodule GoogleApi.CloudRun.V1alpha1.Model.RouteSpec do
  @moduledoc """
  RouteSpec holds the desired state of the Route (from the client).

  ## Attributes

  *   `generation` (*type:* `integer()`, *default:* `nil`) - Deprecated and not currently populated by Cloud Run. See metadata.generation instead, which is the sequence number containing the latest generation of the desired state. Read-only.
  *   `traffic` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.TrafficTarget.t)`, *default:* `nil`) - Traffic specifies how to distribute traffic over a collection of Knative Revisions and Configurations. Cloud Run currently supports a single configurationName.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :generation => integer() | nil,
          :traffic => list(GoogleApi.CloudRun.V1alpha1.Model.TrafficTarget.t()) | nil
        }

  field(:generation)
  field(:traffic, as: GoogleApi.CloudRun.V1alpha1.Model.TrafficTarget, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.RouteSpec do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.RouteSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.RouteSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
