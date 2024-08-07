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

defmodule GoogleApi.Docs.V1.Model.DeleteNamedRangeRequest do
  @moduledoc """
  Deletes a NamedRange.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the range(s) to delete. All named ranges with the given name will be deleted.
  *   `namedRangeId` (*type:* `String.t`, *default:* `nil`) - The ID of the named range to delete.
  *   `tabsCriteria` (*type:* `GoogleApi.Docs.V1.Model.TabsCriteria.t`, *default:* `nil`) - Optional. The criteria used to specify which tab(s) the range deletion should occur in. When omitted, the range deletion is applied to all tabs. In a document containing a single tab: - If provided, must match the singular tab's ID. - If omitted, the range deletion applies to the singular tab. In a document containing multiple tabs: - If provided, the range deletion applies to the specified tabs. - If not provided, the range deletion applies to all tabs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :namedRangeId => String.t() | nil,
          :tabsCriteria => GoogleApi.Docs.V1.Model.TabsCriteria.t() | nil
        }

  field(:name)
  field(:namedRangeId)
  field(:tabsCriteria, as: GoogleApi.Docs.V1.Model.TabsCriteria)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.DeleteNamedRangeRequest do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.DeleteNamedRangeRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.DeleteNamedRangeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
