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

defmodule GoogleApi.BigQueryReservation.V1.Model.Reservation do
  @moduledoc """
  A reservation is a mechanism used to guarantee slots to users.

  ## Attributes

  *   `autoscale` (*type:* `GoogleApi.BigQueryReservation.V1.Model.Autoscale.t`, *default:* `nil`) - The configuration parameters for the auto scaling feature.
  *   `concurrency` (*type:* `String.t`, *default:* `nil`) - Job concurrency target which sets a soft upper bound on the number of jobs that can run concurrently in this reservation. This is a soft target due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency target will be automatically computed by the system. NOTE: this field is exposed as target job concurrency in the Information Schema, DDL and BigQuery CLI.
  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time of the reservation.
  *   `edition` (*type:* `String.t`, *default:* `nil`) - Edition of the reservation.
  *   `ignoreIdleSlots` (*type:* `boolean()`, *default:* `nil`) - If false, any query or pipeline job using this reservation will use idle slots from other reservations within the same admin project. If true, a query or pipeline job using this reservation will execute with the slot capacity specified in the slot_capacity field at most.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. The labels associated with this reservation. You can use these to organize and group your reservations. You can set this property when inserting or updating a reservation.
  *   `multiRegionAuxiliary` (*type:* `boolean()`, *default:* `nil`) - Applicable only for reservations located within one of the BigQuery multi-regions (US or EU). If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region. NOTE: this is a preview feature. Project must be allow-listed in order to set this field.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. The reservation_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  *   `originalPrimaryLocation` (*type:* `String.t`, *default:* `nil`) - Output only. The location where the reservation was originally created. This is set only during the failover reservation's creation. All billing charges for the failover reservation will be applied to this location.
  *   `primaryLocation` (*type:* `String.t`, *default:* `nil`) - Output only. The current location of the reservation's primary replica. This field is only set for reservations using the managed disaster recovery feature.
  *   `replicationStatus` (*type:* `GoogleApi.BigQueryReservation.V1.Model.ReplicationStatus.t`, *default:* `nil`) - Output only. The Disater Recovery(DR) replication status of the reservation. This is only available for the primary replica of DR/failover reservations and provides information about the both the staleness of the secondary and the last error encountered while trying to replicate changes from the primary to the secondary.
  *   `secondaryLocation` (*type:* `String.t`, *default:* `nil`) - Optional. The current location of the reservation's secondary replica. This field is only set for reservations using the managed disaster recovery feature. Users can set this in create reservation calls to create a failover reservation or in update reservation calls to convert a non-failover reservation to a failover reservation(or vice versa).
  *   `slotCapacity` (*type:* `String.t`, *default:* `nil`) - Baseline slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the unit of parallelism. Queries using this reservation might use more slots during runtime if ignore_idle_slots is set to false, or autoscaling is enabled. The total slot_capacity of the reservation and its siblings may exceed the total slot_count of capacity commitments. In that case, the exceeding slots will be charged with the autoscale SKU. You can increase the number of baseline slots in a reservation every few minutes. If you want to decrease your baseline slots, you are limited to once an hour if you have recently changed your baseline slot capacity and your baseline slots exceed your committed slots. Otherwise, you can decrease your baseline slots every few minutes.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Last update time of the reservation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscale => GoogleApi.BigQueryReservation.V1.Model.Autoscale.t() | nil,
          :concurrency => String.t() | nil,
          :creationTime => DateTime.t() | nil,
          :edition => String.t() | nil,
          :ignoreIdleSlots => boolean() | nil,
          :labels => map() | nil,
          :multiRegionAuxiliary => boolean() | nil,
          :name => String.t() | nil,
          :originalPrimaryLocation => String.t() | nil,
          :primaryLocation => String.t() | nil,
          :replicationStatus =>
            GoogleApi.BigQueryReservation.V1.Model.ReplicationStatus.t() | nil,
          :secondaryLocation => String.t() | nil,
          :slotCapacity => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:autoscale, as: GoogleApi.BigQueryReservation.V1.Model.Autoscale)
  field(:concurrency)
  field(:creationTime, as: DateTime)
  field(:edition)
  field(:ignoreIdleSlots)
  field(:labels, type: :map)
  field(:multiRegionAuxiliary)
  field(:name)
  field(:originalPrimaryLocation)
  field(:primaryLocation)
  field(:replicationStatus, as: GoogleApi.BigQueryReservation.V1.Model.ReplicationStatus)
  field(:secondaryLocation)
  field(:slotCapacity)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryReservation.V1.Model.Reservation do
  def decode(value, options) do
    GoogleApi.BigQueryReservation.V1.Model.Reservation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryReservation.V1.Model.Reservation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
