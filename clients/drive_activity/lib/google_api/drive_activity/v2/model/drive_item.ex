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

defmodule GoogleApi.DriveActivity.V2.Model.DriveItem do
  @moduledoc """
  A Drive item, such as a file or folder.

  ## Attributes

  *   `driveFile` (*type:* `GoogleApi.DriveActivity.V2.Model.DriveFile.t`, *default:* `nil`) - The Drive item is a file.
  *   `driveFolder` (*type:* `GoogleApi.DriveActivity.V2.Model.DriveFolder.t`, *default:* `nil`) - The Drive item is a folder. Includes information about the type of folder.
  *   `file` (*type:* `GoogleApi.DriveActivity.V2.Model.File.t`, *default:* `nil`) - This field is deprecated; please use the `driveFile` field instead.
  *   `folder` (*type:* `GoogleApi.DriveActivity.V2.Model.Folder.t`, *default:* `nil`) - This field is deprecated; please use the `driveFolder` field instead.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - The MIME type of the Drive item. See https://developers.google.com/workspace/drive/v3/web/mime-types.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The target Drive item. The format is `items/ITEM_ID`.
  *   `owner` (*type:* `GoogleApi.DriveActivity.V2.Model.Owner.t`, *default:* `nil`) - Information about the owner of this Drive item.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the Drive item.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :driveFile => GoogleApi.DriveActivity.V2.Model.DriveFile.t() | nil,
          :driveFolder => GoogleApi.DriveActivity.V2.Model.DriveFolder.t() | nil,
          :file => GoogleApi.DriveActivity.V2.Model.File.t() | nil,
          :folder => GoogleApi.DriveActivity.V2.Model.Folder.t() | nil,
          :mimeType => String.t() | nil,
          :name => String.t() | nil,
          :owner => GoogleApi.DriveActivity.V2.Model.Owner.t() | nil,
          :title => String.t() | nil
        }

  field(:driveFile, as: GoogleApi.DriveActivity.V2.Model.DriveFile)
  field(:driveFolder, as: GoogleApi.DriveActivity.V2.Model.DriveFolder)
  field(:file, as: GoogleApi.DriveActivity.V2.Model.File)
  field(:folder, as: GoogleApi.DriveActivity.V2.Model.Folder)
  field(:mimeType)
  field(:name)
  field(:owner, as: GoogleApi.DriveActivity.V2.Model.Owner)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.DriveActivity.V2.Model.DriveItem do
  def decode(value, options) do
    GoogleApi.DriveActivity.V2.Model.DriveItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DriveActivity.V2.Model.DriveItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
