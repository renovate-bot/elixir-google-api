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

defmodule GoogleApi.CloudBuild.V1.Model.NotifierSecretRef do
  @moduledoc """
  NotifierSecretRef contains the reference to a secret stored in the corresponding NotifierSpec.

  ## Attributes

  *   `secretRef` (*type:* `String.t`, *default:* `nil`) - The value of `secret_ref` should be a `name` that is registered in a `Secret` in the `secrets` list of the `Spec`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :secretRef => String.t() | nil
        }

  field(:secretRef)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.NotifierSecretRef do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.NotifierSecretRef.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.NotifierSecretRef do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
