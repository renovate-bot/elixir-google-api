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

defmodule GoogleApi.Sheets.V4.Model.HistogramChartSpec do
  @moduledoc """
  A histogram chart. A histogram chart groups data items into bins, displaying each bin as a column of stacked items. Histograms are used to display the distribution of a dataset. Each column of items represents a range into which those items fall. The number of bins can be chosen automatically or specified explicitly.

  ## Attributes

  *   `bucketSize` (*type:* `float()`, *default:* `nil`) - By default the bucket size (the range of values stacked in a single column) is chosen automatically, but it may be overridden here. E.g., A bucket size of 1.5 results in buckets from 0 - 1.5, 1.5 - 3.0, etc. Cannot be negative. This field is optional.
  *   `legendPosition` (*type:* `String.t`, *default:* `nil`) - The position of the chart legend.
  *   `outlierPercentile` (*type:* `float()`, *default:* `nil`) - The outlier percentile is used to ensure that outliers do not adversely affect the calculation of bucket sizes. For example, setting an outlier percentile of 0.05 indicates that the top and bottom 5% of values when calculating buckets. The values are still included in the chart, they will be added to the first or last buckets instead of their own buckets. Must be between 0.0 and 0.5.
  *   `series` (*type:* `list(GoogleApi.Sheets.V4.Model.HistogramSeries.t)`, *default:* `nil`) - The series for a histogram may be either a single series of values to be bucketed or multiple series, each of the same length, containing the name of the series followed by the values to be bucketed for that series.
  *   `showItemDividers` (*type:* `boolean()`, *default:* `nil`) - Whether horizontal divider lines should be displayed between items in each column.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketSize => float() | nil,
          :legendPosition => String.t() | nil,
          :outlierPercentile => float() | nil,
          :series => list(GoogleApi.Sheets.V4.Model.HistogramSeries.t()) | nil,
          :showItemDividers => boolean() | nil
        }

  field(:bucketSize)
  field(:legendPosition)
  field(:outlierPercentile)
  field(:series, as: GoogleApi.Sheets.V4.Model.HistogramSeries, type: :list)
  field(:showItemDividers)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.HistogramChartSpec do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.HistogramChartSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.HistogramChartSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
