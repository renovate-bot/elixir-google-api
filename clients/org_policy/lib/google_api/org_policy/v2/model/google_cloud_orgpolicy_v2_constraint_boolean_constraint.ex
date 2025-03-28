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

defmodule GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintBooleanConstraint do
  @moduledoc """
  A constraint type is enforced or not enforced, which is configured in the `PolicyRule`. If `customConstraintDefinition` is defined, this constraint is a managed constraint.

  ## Attributes

  *   `customConstraintDefinition` (*type:* `GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintCustomConstraintDefinition.t`, *default:* `nil`) - Custom constraint definition. Defines this as a managed constraint.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customConstraintDefinition =>
            GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintCustomConstraintDefinition.t()
            | nil
        }

  field(:customConstraintDefinition,
    as: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintCustomConstraintDefinition
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintBooleanConstraint do
  def decode(value, options) do
    GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintBooleanConstraint.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintBooleanConstraint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
