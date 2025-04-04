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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button do
  @moduledoc """
  A text, icon, or text and icon button that users can click. For an example in Google Chat apps, see [Add a button](https://developers.google.com/workspace/chat/design-interactive-card-dialog#add_a_button). To make an image a clickable button, specify an `Image` (not an `ImageComponent`) and set an `onClick` action. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

  ## Attributes

  *   `altText` (*type:* `String.t`, *default:* `nil`) - The alternative text that's used for accessibility. Set descriptive text that lets users know what the button does. For example, if a button opens a hyperlink, you might write: "Opens a new browser tab and navigates to the Google Chat developer documentation at https://developers.google.com/workspace/chat".
  *   `color` (*type:* `GoogleApi.Chat.V1.Model.Color.t`, *default:* `nil`) - Optional. The color of the button. If set, the button `type` is set to `FILLED` and the color of `text` and `icon` fields are set to a contrasting color for readability. For example, if the button color is set to blue, any text or icons in the button are set to white. To set the button color, specify a value for the `red`, `green`, and `blue` fields. The value must be a float number between 0 and 1 based on the RGB color value, where `0` (0/255) represents the absence of color and `1` (255/255) represents the maximum intensity of the color. For example, the following sets the color to red at its maximum intensity: ``` "color": { "red": 1, "green": 0, "blue": 0, } ``` The `alpha` field is unavailable for button color. If specified, this field is ignored.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - If `true`, the button is displayed in an inactive state and doesn't respond to user actions.
  *   `icon` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Icon.t`, *default:* `nil`) - An icon displayed inside the button. If both `icon` and `text` are set, then the icon appears before the text.
  *   `onClick` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1OnClick.t`, *default:* `nil`) - Required. The action to perform when a user clicks the button, such as opening a hyperlink or running a custom function.
  *   `text` (*type:* `String.t`, *default:* `nil`) - The text displayed inside the button.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Optional. The type of a button. If unset, button type defaults to `OUTLINED`. If the `color` field is set, the button type is forced to `FILLED` and any value set for this field is ignored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :altText => String.t() | nil,
          :color => GoogleApi.Chat.V1.Model.Color.t() | nil,
          :disabled => boolean() | nil,
          :icon => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Icon.t() | nil,
          :onClick => GoogleApi.Chat.V1.Model.GoogleAppsCardV1OnClick.t() | nil,
          :text => String.t() | nil,
          :type => String.t() | nil
        }

  field(:altText)
  field(:color, as: GoogleApi.Chat.V1.Model.Color)
  field(:disabled)
  field(:icon, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Icon)
  field(:onClick, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1OnClick)
  field(:text)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
