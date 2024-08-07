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

defmodule GoogleApi.Compute.V1.Model.FutureReservationStatus do
  @moduledoc """
  [Output only] Represents status related to the future reservation.

  ## Attributes

  *   `amendmentStatus` (*type:* `String.t`, *default:* `nil`) - [Output Only] The current status of the requested amendment.
  *   `autoCreatedReservations` (*type:* `list(String.t)`, *default:* `nil`) - Fully qualified urls of the automatically created reservations at start_time.
  *   `existingMatchingUsageInfo` (*type:* `GoogleApi.Compute.V1.Model.FutureReservationStatusExistingMatchingUsageInfo.t`, *default:* `nil`) - [Output Only] Represents the existing matching usage for the future reservation.
  *   `fulfilledCount` (*type:* `String.t`, *default:* `nil`) - This count indicates the fulfilled capacity so far. This is set during "PROVISIONING" state. This count also includes capacity delivered as part of existing matching reservations.
  *   `lastKnownGoodState` (*type:* `GoogleApi.Compute.V1.Model.FutureReservationStatusLastKnownGoodState.t`, *default:* `nil`) - [Output Only] This field represents the future reservation before an amendment was requested. If the amendment is declined, the Future Reservation will be reverted to the last known good state. The last known good state is not set when updating a future reservation whose Procurement Status is DRAFTING.
  *   `lockTime` (*type:* `String.t`, *default:* `nil`) - Time when Future Reservation would become LOCKED, after which no modifications to Future Reservation will be allowed. Applicable only after the Future Reservation is in the APPROVED state. The lock_time is an RFC3339 string. The procurement_status will transition to PROCURING state at this time.
  *   `procurementStatus` (*type:* `String.t`, *default:* `nil`) - Current state of this Future Reservation
  *   `specificSkuProperties` (*type:* `GoogleApi.Compute.V1.Model.FutureReservationStatusSpecificSKUProperties.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amendmentStatus => String.t() | nil,
          :autoCreatedReservations => list(String.t()) | nil,
          :existingMatchingUsageInfo =>
            GoogleApi.Compute.V1.Model.FutureReservationStatusExistingMatchingUsageInfo.t() | nil,
          :fulfilledCount => String.t() | nil,
          :lastKnownGoodState =>
            GoogleApi.Compute.V1.Model.FutureReservationStatusLastKnownGoodState.t() | nil,
          :lockTime => String.t() | nil,
          :procurementStatus => String.t() | nil,
          :specificSkuProperties =>
            GoogleApi.Compute.V1.Model.FutureReservationStatusSpecificSKUProperties.t() | nil
        }

  field(:amendmentStatus)
  field(:autoCreatedReservations, type: :list)

  field(:existingMatchingUsageInfo,
    as: GoogleApi.Compute.V1.Model.FutureReservationStatusExistingMatchingUsageInfo
  )

  field(:fulfilledCount)

  field(:lastKnownGoodState,
    as: GoogleApi.Compute.V1.Model.FutureReservationStatusLastKnownGoodState
  )

  field(:lockTime)
  field(:procurementStatus)

  field(:specificSkuProperties,
    as: GoogleApi.Compute.V1.Model.FutureReservationStatusSpecificSKUProperties
  )
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.FutureReservationStatus do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.FutureReservationStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.FutureReservationStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
