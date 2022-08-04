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

defmodule GoogleApi.Forms.V1.Model.Item do
  @moduledoc """
  A single item of the form. `kind` defines which kind of item it is.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the item.
  *   `imageItem` (*type:* `GoogleApi.Forms.V1.Model.ImageItem.t`, *default:* `nil`) - Displays an image on the page.
  *   `itemId` (*type:* `String.t`, *default:* `nil`) - The item ID. On creation, it can be provided but the ID must not be already used in the form. If not provided, a new ID is assigned.
  *   `pageBreakItem` (*type:* `GoogleApi.Forms.V1.Model.PageBreakItem.t`, *default:* `nil`) - Starts a new page with a title.
  *   `questionGroupItem` (*type:* `GoogleApi.Forms.V1.Model.QuestionGroupItem.t`, *default:* `nil`) - Poses one or more questions to the user with a single major prompt.
  *   `questionItem` (*type:* `GoogleApi.Forms.V1.Model.QuestionItem.t`, *default:* `nil`) - Poses a question to the user.
  *   `textItem` (*type:* `GoogleApi.Forms.V1.Model.TextItem.t`, *default:* `nil`) - Displays a title and description on the page.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the item.
  *   `videoItem` (*type:* `GoogleApi.Forms.V1.Model.VideoItem.t`, *default:* `nil`) - Displays a video on the page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :imageItem => GoogleApi.Forms.V1.Model.ImageItem.t() | nil,
          :itemId => String.t() | nil,
          :pageBreakItem => GoogleApi.Forms.V1.Model.PageBreakItem.t() | nil,
          :questionGroupItem => GoogleApi.Forms.V1.Model.QuestionGroupItem.t() | nil,
          :questionItem => GoogleApi.Forms.V1.Model.QuestionItem.t() | nil,
          :textItem => GoogleApi.Forms.V1.Model.TextItem.t() | nil,
          :title => String.t() | nil,
          :videoItem => GoogleApi.Forms.V1.Model.VideoItem.t() | nil
        }

  field(:description)
  field(:imageItem, as: GoogleApi.Forms.V1.Model.ImageItem)
  field(:itemId)
  field(:pageBreakItem, as: GoogleApi.Forms.V1.Model.PageBreakItem)
  field(:questionGroupItem, as: GoogleApi.Forms.V1.Model.QuestionGroupItem)
  field(:questionItem, as: GoogleApi.Forms.V1.Model.QuestionItem)
  field(:textItem, as: GoogleApi.Forms.V1.Model.TextItem)
  field(:title)
  field(:videoItem, as: GoogleApi.Forms.V1.Model.VideoItem)
end

defimpl Poison.Decoder, for: GoogleApi.Forms.V1.Model.Item do
  def decode(value, options) do
    GoogleApi.Forms.V1.Model.Item.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Forms.V1.Model.Item do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end