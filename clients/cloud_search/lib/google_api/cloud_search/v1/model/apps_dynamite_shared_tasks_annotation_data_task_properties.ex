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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataTaskProperties do
  @moduledoc """
  All relevant task properties for a Chat message.

  ## Attributes

  *   `assignee` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteUserId.t`, *default:* `nil`) - Obfuscated user ID of new assignee. Not set if the task doesn't have an assignee.
  *   `completed` (*type:* `boolean()`, *default:* `nil`) - Whether the task is marked as completed.
  *   `deleted` (*type:* `boolean()`, *default:* `nil`) - Whether the task is marked as deleted.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the task. If Task original description's length is greater than 1024, then Task BE sends the truncated description to Dynamite Integration Server.
  *   `startDate` (*type:* `GoogleApi.CloudSearch.V1.Model.Date.t`, *default:* `nil`) - Set if the task has a date but no time. Source of truth in Tasks BE: http://shortn/_wyT7eB4Ixv
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Set if the task has both a date and a time. Source of truth in Tasks BE: http://shortn/_u6cr0F5ttE
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the task.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assignee => GoogleApi.CloudSearch.V1.Model.AppsDynamiteUserId.t() | nil,
          :completed => boolean() | nil,
          :deleted => boolean() | nil,
          :description => String.t() | nil,
          :startDate => GoogleApi.CloudSearch.V1.Model.Date.t() | nil,
          :startTime => DateTime.t() | nil,
          :title => String.t() | nil
        }

  field(:assignee, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteUserId)
  field(:completed)
  field(:deleted)
  field(:description)
  field(:startDate, as: GoogleApi.CloudSearch.V1.Model.Date)
  field(:startTime, as: DateTime)
  field(:title)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataTaskProperties do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataTaskProperties.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataTaskProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end