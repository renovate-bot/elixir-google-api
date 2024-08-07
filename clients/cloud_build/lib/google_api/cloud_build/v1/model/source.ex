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

defmodule GoogleApi.CloudBuild.V1.Model.Source do
  @moduledoc """
  Location of the source in a supported storage service.

  ## Attributes

  *   `connectedRepository` (*type:* `GoogleApi.CloudBuild.V1.Model.ConnectedRepository.t`, *default:* `nil`) - Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource.
  *   `developerConnectConfig` (*type:* `GoogleApi.CloudBuild.V1.Model.DeveloperConnectConfig.t`, *default:* `nil`) - If provided, get the source from this Developer Connect config.
  *   `gitSource` (*type:* `GoogleApi.CloudBuild.V1.Model.GitSource.t`, *default:* `nil`) - If provided, get the source from this Git repository.
  *   `repoSource` (*type:* `GoogleApi.CloudBuild.V1.Model.RepoSource.t`, *default:* `nil`) - If provided, get the source from this location in a Cloud Source Repository.
  *   `storageSource` (*type:* `GoogleApi.CloudBuild.V1.Model.StorageSource.t`, *default:* `nil`) - If provided, get the source from this location in Cloud Storage.
  *   `storageSourceManifest` (*type:* `GoogleApi.CloudBuild.V1.Model.StorageSourceManifest.t`, *default:* `nil`) - If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectedRepository => GoogleApi.CloudBuild.V1.Model.ConnectedRepository.t() | nil,
          :developerConnectConfig =>
            GoogleApi.CloudBuild.V1.Model.DeveloperConnectConfig.t() | nil,
          :gitSource => GoogleApi.CloudBuild.V1.Model.GitSource.t() | nil,
          :repoSource => GoogleApi.CloudBuild.V1.Model.RepoSource.t() | nil,
          :storageSource => GoogleApi.CloudBuild.V1.Model.StorageSource.t() | nil,
          :storageSourceManifest => GoogleApi.CloudBuild.V1.Model.StorageSourceManifest.t() | nil
        }

  field(:connectedRepository, as: GoogleApi.CloudBuild.V1.Model.ConnectedRepository)
  field(:developerConnectConfig, as: GoogleApi.CloudBuild.V1.Model.DeveloperConnectConfig)
  field(:gitSource, as: GoogleApi.CloudBuild.V1.Model.GitSource)
  field(:repoSource, as: GoogleApi.CloudBuild.V1.Model.RepoSource)
  field(:storageSource, as: GoogleApi.CloudBuild.V1.Model.StorageSource)
  field(:storageSourceManifest, as: GoogleApi.CloudBuild.V1.Model.StorageSourceManifest)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.Source do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.Source.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.Source do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
