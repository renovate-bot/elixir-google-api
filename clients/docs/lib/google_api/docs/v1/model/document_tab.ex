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

defmodule GoogleApi.Docs.V1.Model.DocumentTab do
  @moduledoc """
  A tab with document contents.

  ## Attributes

  *   `body` (*type:* `GoogleApi.Docs.V1.Model.Body.t`, *default:* `nil`) - The main body of the document tab.
  *   `documentStyle` (*type:* `GoogleApi.Docs.V1.Model.DocumentStyle.t`, *default:* `nil`) - The style of the document tab.
  *   `footers` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.Footer.t}`, *default:* `nil`) - The footers in the document tab, keyed by footer ID.
  *   `footnotes` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.Footnote.t}`, *default:* `nil`) - The footnotes in the document tab, keyed by footnote ID.
  *   `headers` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.Header.t}`, *default:* `nil`) - The headers in the document tab, keyed by header ID.
  *   `inlineObjects` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.InlineObject.t}`, *default:* `nil`) - The inline objects in the document tab, keyed by object ID.
  *   `lists` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.List.t}`, *default:* `nil`) - The lists in the document tab, keyed by list ID.
  *   `namedRanges` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.NamedRanges.t}`, *default:* `nil`) - The named ranges in the document tab, keyed by name.
  *   `namedStyles` (*type:* `GoogleApi.Docs.V1.Model.NamedStyles.t`, *default:* `nil`) - The named styles of the document tab.
  *   `positionedObjects` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.PositionedObject.t}`, *default:* `nil`) - The positioned objects in the document tab, keyed by object ID.
  *   `suggestedDocumentStyleChanges` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.SuggestedDocumentStyle.t}`, *default:* `nil`) - The suggested changes to the style of the document tab, keyed by suggestion ID.
  *   `suggestedNamedStylesChanges` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.SuggestedNamedStyles.t}`, *default:* `nil`) - The suggested changes to the named styles of the document tab, keyed by suggestion ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :body => GoogleApi.Docs.V1.Model.Body.t() | nil,
          :documentStyle => GoogleApi.Docs.V1.Model.DocumentStyle.t() | nil,
          :footers => %{optional(String.t()) => GoogleApi.Docs.V1.Model.Footer.t()} | nil,
          :footnotes => %{optional(String.t()) => GoogleApi.Docs.V1.Model.Footnote.t()} | nil,
          :headers => %{optional(String.t()) => GoogleApi.Docs.V1.Model.Header.t()} | nil,
          :inlineObjects =>
            %{optional(String.t()) => GoogleApi.Docs.V1.Model.InlineObject.t()} | nil,
          :lists => %{optional(String.t()) => GoogleApi.Docs.V1.Model.List.t()} | nil,
          :namedRanges =>
            %{optional(String.t()) => GoogleApi.Docs.V1.Model.NamedRanges.t()} | nil,
          :namedStyles => GoogleApi.Docs.V1.Model.NamedStyles.t() | nil,
          :positionedObjects =>
            %{optional(String.t()) => GoogleApi.Docs.V1.Model.PositionedObject.t()} | nil,
          :suggestedDocumentStyleChanges =>
            %{optional(String.t()) => GoogleApi.Docs.V1.Model.SuggestedDocumentStyle.t()} | nil,
          :suggestedNamedStylesChanges =>
            %{optional(String.t()) => GoogleApi.Docs.V1.Model.SuggestedNamedStyles.t()} | nil
        }

  field(:body, as: GoogleApi.Docs.V1.Model.Body)
  field(:documentStyle, as: GoogleApi.Docs.V1.Model.DocumentStyle)
  field(:footers, as: GoogleApi.Docs.V1.Model.Footer, type: :map)
  field(:footnotes, as: GoogleApi.Docs.V1.Model.Footnote, type: :map)
  field(:headers, as: GoogleApi.Docs.V1.Model.Header, type: :map)
  field(:inlineObjects, as: GoogleApi.Docs.V1.Model.InlineObject, type: :map)
  field(:lists, as: GoogleApi.Docs.V1.Model.List, type: :map)
  field(:namedRanges, as: GoogleApi.Docs.V1.Model.NamedRanges, type: :map)
  field(:namedStyles, as: GoogleApi.Docs.V1.Model.NamedStyles)
  field(:positionedObjects, as: GoogleApi.Docs.V1.Model.PositionedObject, type: :map)

  field(:suggestedDocumentStyleChanges,
    as: GoogleApi.Docs.V1.Model.SuggestedDocumentStyle,
    type: :map
  )

  field(:suggestedNamedStylesChanges, as: GoogleApi.Docs.V1.Model.SuggestedNamedStyles, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.DocumentTab do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.DocumentTab.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.DocumentTab do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
