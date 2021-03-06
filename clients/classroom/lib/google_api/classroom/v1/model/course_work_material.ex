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

defmodule GoogleApi.Classroom.V1.Model.CourseWorkMaterial do
  @moduledoc """
  Course work material created by a teacher for students of the course

  ## Attributes

  *   `alternateLink` (*type:* `String.t`, *default:* `nil`) - Absolute link to this course work material in the Classroom web UI. This is only populated if `state` is `PUBLISHED`. Read-only.
  *   `assigneeMode` (*type:* `String.t`, *default:* `nil`) - Assignee mode of the course work material. If unspecified, the default value is `ALL_STUDENTS`.
  *   `courseId` (*type:* `String.t`, *default:* `nil`) - Identifier of the course. Read-only.
  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp when this course work material was created. Read-only.
  *   `creatorUserId` (*type:* `String.t`, *default:* `nil`) - Identifier for the user that created the course work material. Read-only.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional description of this course work material. The text must be a valid UTF-8 string containing no more than 30,000 characters.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Classroom-assigned identifier of this course work material, unique per course. Read-only.
  *   `individualStudentsOptions` (*type:* `GoogleApi.Classroom.V1.Model.IndividualStudentsOptions.t`, *default:* `nil`) - Identifiers of students with access to the course work material. This field is set only if `assigneeMode` is `INDIVIDUAL_STUDENTS`. If the `assigneeMode` is `INDIVIDUAL_STUDENTS`, then only students specified in this field can see the course work material.
  *   `materials` (*type:* `list(GoogleApi.Classroom.V1.Model.Material.t)`, *default:* `nil`) - Additional materials. A course work material must have no more than 20 material items.
  *   `scheduledTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional timestamp when this course work material is scheduled to be published.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Status of this course work material. If unspecified, the default state is `DRAFT`.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title of this course work material. The title must be a valid UTF-8 string containing between 1 and 3000 characters.
  *   `topicId` (*type:* `String.t`, *default:* `nil`) - Identifier for the topic that this course work material is associated with. Must match an existing topic in the course.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp of the most recent change to this course work material. Read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternateLink => String.t() | nil,
          :assigneeMode => String.t() | nil,
          :courseId => String.t() | nil,
          :creationTime => DateTime.t() | nil,
          :creatorUserId => String.t() | nil,
          :description => String.t() | nil,
          :id => String.t() | nil,
          :individualStudentsOptions =>
            GoogleApi.Classroom.V1.Model.IndividualStudentsOptions.t() | nil,
          :materials => list(GoogleApi.Classroom.V1.Model.Material.t()) | nil,
          :scheduledTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :title => String.t() | nil,
          :topicId => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:alternateLink)
  field(:assigneeMode)
  field(:courseId)
  field(:creationTime, as: DateTime)
  field(:creatorUserId)
  field(:description)
  field(:id)
  field(:individualStudentsOptions, as: GoogleApi.Classroom.V1.Model.IndividualStudentsOptions)
  field(:materials, as: GoogleApi.Classroom.V1.Model.Material, type: :list)
  field(:scheduledTime, as: DateTime)
  field(:state)
  field(:title)
  field(:topicId)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.CourseWorkMaterial do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.CourseWorkMaterial.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.CourseWorkMaterial do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
