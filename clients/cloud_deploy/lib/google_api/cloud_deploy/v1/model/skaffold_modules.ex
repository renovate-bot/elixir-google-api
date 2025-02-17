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

defmodule GoogleApi.CloudDeploy.V1.Model.SkaffoldModules do
  @moduledoc """
  Skaffold Config modules and their remote source.

  ## Attributes

  *   `configs` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The Skaffold Config modules to use from the specified source.
  *   `git` (*type:* `GoogleApi.CloudDeploy.V1.Model.SkaffoldGitSource.t`, *default:* `nil`) - Optional. Remote git repository containing the Skaffold Config modules.
  *   `googleCloudBuildRepo` (*type:* `GoogleApi.CloudDeploy.V1.Model.SkaffoldGCBRepoSource.t`, *default:* `nil`) - Optional. Cloud Build V2 repository containing the Skaffold Config modules.
  *   `googleCloudStorage` (*type:* `GoogleApi.CloudDeploy.V1.Model.SkaffoldGCSSource.t`, *default:* `nil`) - Optional. Cloud Storage bucket containing the Skaffold Config modules.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configs => list(String.t()) | nil,
          :git => GoogleApi.CloudDeploy.V1.Model.SkaffoldGitSource.t() | nil,
          :googleCloudBuildRepo => GoogleApi.CloudDeploy.V1.Model.SkaffoldGCBRepoSource.t() | nil,
          :googleCloudStorage => GoogleApi.CloudDeploy.V1.Model.SkaffoldGCSSource.t() | nil
        }

  field(:configs, type: :list)
  field(:git, as: GoogleApi.CloudDeploy.V1.Model.SkaffoldGitSource)
  field(:googleCloudBuildRepo, as: GoogleApi.CloudDeploy.V1.Model.SkaffoldGCBRepoSource)
  field(:googleCloudStorage, as: GoogleApi.CloudDeploy.V1.Model.SkaffoldGCSSource)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.SkaffoldModules do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.SkaffoldModules.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.SkaffoldModules do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
