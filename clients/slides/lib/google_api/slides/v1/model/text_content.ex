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

defmodule GoogleApi.Slides.V1.Model.TextContent do
  @moduledoc """
  The general text content. The text must reside in a compatible shape (e.g. text box or rectangle) or a table cell in a page.

  ## Attributes

  *   `lists` (*type:* `%{optional(String.t) => GoogleApi.Slides.V1.Model.List.t}`, *default:* `nil`) - The bulleted lists contained in this text, keyed by list ID.
  *   `textElements` (*type:* `list(GoogleApi.Slides.V1.Model.TextElement.t)`, *default:* `nil`) - The text contents broken down into its component parts, including styling information. This property is read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lists => %{optional(String.t()) => GoogleApi.Slides.V1.Model.List.t()} | nil,
          :textElements => list(GoogleApi.Slides.V1.Model.TextElement.t()) | nil
        }

  field(:lists, as: GoogleApi.Slides.V1.Model.List, type: :map)
  field(:textElements, as: GoogleApi.Slides.V1.Model.TextElement, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.TextContent do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.TextContent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.TextContent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
