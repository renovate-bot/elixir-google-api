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

defmodule GoogleApi.Language.V2.Model.XPSTextComponentModel do
  @moduledoc """
  Component model.

  ## Attributes

  *   `batchPredictionModelGcsUri` (*type:* `String.t`, *default:* `nil`) - The Cloud Storage resource path to hold batch prediction model.
  *   `onlinePredictionModelGcsUri` (*type:* `String.t`, *default:* `nil`) - The Cloud Storage resource path to hold online prediction model.
  *   `partition` (*type:* `String.t`, *default:* `nil`) - The partition where the model is deployed. Populated by uCAIP BE as part of online PredictRequest.
  *   `servingArtifact` (*type:* `GoogleApi.Language.V2.Model.XPSModelArtifactItem.t`, *default:* `nil`) - The default model binary file used for serving (e.g. online predict, batch predict) via public Cloud Ai Platform API.
  *   `servoModelName` (*type:* `String.t`, *default:* `nil`) - The name of servo model. Populated by uCAIP BE as part of online PredictRequest.
  *   `submodelName` (*type:* `String.t`, *default:* `nil`) - The name of the trained NL submodel.
  *   `submodelType` (*type:* `String.t`, *default:* `nil`) - The type of trained NL submodel
  *   `tfRuntimeVersion` (*type:* `String.t`, *default:* `nil`) - ## The fields below are only populated under uCAIP request scope. https://cloud.google.com/ml-engine/docs/runtime-version-list
  *   `versionNumber` (*type:* `String.t`, *default:* `nil`) - The servomatic model version number. Populated by uCAIP BE as part of online PredictRequest.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchPredictionModelGcsUri => String.t() | nil,
          :onlinePredictionModelGcsUri => String.t() | nil,
          :partition => String.t() | nil,
          :servingArtifact => GoogleApi.Language.V2.Model.XPSModelArtifactItem.t() | nil,
          :servoModelName => String.t() | nil,
          :submodelName => String.t() | nil,
          :submodelType => String.t() | nil,
          :tfRuntimeVersion => String.t() | nil,
          :versionNumber => String.t() | nil
        }

  field(:batchPredictionModelGcsUri)
  field(:onlinePredictionModelGcsUri)
  field(:partition)
  field(:servingArtifact, as: GoogleApi.Language.V2.Model.XPSModelArtifactItem)
  field(:servoModelName)
  field(:submodelName)
  field(:submodelType)
  field(:tfRuntimeVersion)
  field(:versionNumber)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V2.Model.XPSTextComponentModel do
  def decode(value, options) do
    GoogleApi.Language.V2.Model.XPSTextComponentModel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V2.Model.XPSTextComponentModel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
