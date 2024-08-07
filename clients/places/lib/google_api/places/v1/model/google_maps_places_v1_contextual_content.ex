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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContextualContent do
  @moduledoc """
  Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details. Content that is contextual to the place query.

  ## Attributes

  *   `justifications` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContextualContentJustification.t)`, *default:* `nil`) - Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details. Justifications for the place.
  *   `photos` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Photo.t)`, *default:* `nil`) - Information (including references) about photos of this place, contexual to the place query.
  *   `reviews` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Review.t)`, *default:* `nil`) - List of reviews about this place, contexual to the place query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :justifications =>
            list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContextualContentJustification.t())
            | nil,
          :photos => list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Photo.t()) | nil,
          :reviews => list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Review.t()) | nil
        }

  field(:justifications,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContextualContentJustification,
    type: :list
  )

  field(:photos, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Photo, type: :list)
  field(:reviews, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Review, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContextualContent do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContextualContent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContextualContent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
