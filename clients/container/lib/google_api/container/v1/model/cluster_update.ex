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

defmodule GoogleApi.Container.V1.Model.ClusterUpdate do
  @moduledoc """
  ClusterUpdate describes an update to the cluster. Exactly one update can be applied to a cluster with each request, so at most one field can be provided.

  ## Attributes

  *   `desiredNodePoolLoggingConfig` (*type:* `GoogleApi.Container.V1.Model.NodePoolLoggingConfig.t`, *default:* `nil`) - The desired node pool logging configuration defaults for the cluster.
  *   `desiredNodePoolId` (*type:* `String.t`, *default:* `nil`) - The node pool to be upgraded. This field is mandatory if "desired_node_version", "desired_image_family" or "desired_node_pool_autoscaling" is specified and there is more than one node pool on the cluster.
  *   `desiredK8sBetaApis` (*type:* `GoogleApi.Container.V1.Model.K8sBetaAPIConfig.t`, *default:* `nil`) - Desired Beta APIs to be enabled for cluster.
  *   `enableK8sBetaApis` (*type:* `GoogleApi.Container.V1.Model.K8sBetaAPIConfig.t`, *default:* `nil`) - Kubernetes open source beta apis enabled on the cluster. Only beta apis
  *   `desiredLoggingConfig` (*type:* `GoogleApi.Container.V1.Model.LoggingConfig.t`, *default:* `nil`) - The desired logging configuration.
  *   `desiredEnterpriseConfig` (*type:* `GoogleApi.Container.V1.Model.DesiredEnterpriseConfig.t`, *default:* `nil`) - The desired enterprise configuration for the cluster.
  *   `desiredGcfsConfig` (*type:* `GoogleApi.Container.V1.Model.GcfsConfig.t`, *default:* `nil`) - The desired GCFS config for the cluster
  *   `desiredDefaultEnablePrivateNodes` (*type:* `boolean()`, *default:* `nil`) - Override the default setting of whether future created nodes have private IP addresses only, namely NetworkConfig.default_enable_private_nodes
  *   `desiredDatapathProvider` (*type:* `String.t`, *default:* `nil`) - The desired datapath provider for the cluster.
  *   `desiredNodePoolAutoscaling` (*type:* `GoogleApi.Container.V1.Model.NodePoolAutoscaling.t`, *default:* `nil`) - Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only one pool in the cluster and desired_node_pool_id is not provided then the change applies to that single node pool.
  *   `desiredMonitoringConfig` (*type:* `GoogleApi.Container.V1.Model.MonitoringConfig.t`, *default:* `nil`) - The desired monitoring configuration.
  *   `desiredEnableMultiNetworking` (*type:* `boolean()`, *default:* `nil`) - Enable/Disable Multi-Networking for the cluster
  *   `desiredSecretManagerConfig` (*type:* `GoogleApi.Container.V1.Model.SecretManagerConfig.t`, *default:* `nil`) - Enable/Disable Secret Manager Config.
  *   `desiredControlPlaneEndpointsConfig` (*type:* `GoogleApi.Container.V1.Model.ControlPlaneEndpointsConfig.t`, *default:* `nil`) - Control plane endpoints configuration.
  *   `desiredLoggingService` (*type:* `String.t`, *default:* `nil`) - The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  *   `desiredSecurityPostureConfig` (*type:* `GoogleApi.Container.V1.Model.SecurityPostureConfig.t`, *default:* `nil`) - Enable/Disable Security Posture API features for the cluster.
  *   `desiredMonitoringService` (*type:* `String.t`, *default:* `nil`) - The monitoring service the cluster should use to write metrics. Currently available options: * `monitoring.googleapis.com/kubernetes` - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  *   `desiredContainerdConfig` (*type:* `GoogleApi.Container.V1.Model.ContainerdConfig.t`, *default:* `nil`) - The desired containerd config for the cluster.
  *   `desiredNotificationConfig` (*type:* `GoogleApi.Container.V1.Model.NotificationConfig.t`, *default:* `nil`) - The desired notification configuration.
  *   `desiredL4ilbSubsettingConfig` (*type:* `GoogleApi.Container.V1.Model.ILBSubsettingConfig.t`, *default:* `nil`) - The desired L4 Internal Load Balancer Subsetting configuration.
  *   `desiredIntraNodeVisibilityConfig` (*type:* `GoogleApi.Container.V1.Model.IntraNodeVisibilityConfig.t`, *default:* `nil`) - The desired config of Intra-node visibility.
  *   `desiredAutopilotWorkloadPolicyConfig` (*type:* `GoogleApi.Container.V1.Model.WorkloadPolicyConfig.t`, *default:* `nil`) - WorkloadPolicyConfig is the configuration related to GCW workload policy
  *   `desiredServiceExternalIpsConfig` (*type:* `GoogleApi.Container.V1.Model.ServiceExternalIPsConfig.t`, *default:* `nil`) - ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.
  *   `desiredReleaseChannel` (*type:* `GoogleApi.Container.V1.Model.ReleaseChannel.t`, *default:* `nil`) - The desired release channel configuration.
  *   `desiredRbacBindingConfig` (*type:* `GoogleApi.Container.V1.Model.RBACBindingConfig.t`, *default:* `nil`) - RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created.
  *   `desiredDnsConfig` (*type:* `GoogleApi.Container.V1.Model.DNSConfig.t`, *default:* `nil`) - DNSConfig contains clusterDNS config for this cluster.
  *   `desiredImageType` (*type:* `String.t`, *default:* `nil`) - The desired image type for the node pool. NOTE: Set the "desired_node_pool" field as well.
  *   `desiredShieldedNodes` (*type:* `GoogleApi.Container.V1.Model.ShieldedNodes.t`, *default:* `nil`) - Configuration for Shielded Nodes.
  *   `desiredMasterAuthorizedNetworksConfig` (*type:* `GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig.t`, *default:* `nil`) - The desired configuration options for master authorized networks feature. Deprecated: Use desired_control_plane_endpoints_config.ip_endpoints_config.authorized_networks_config instead.
  *   `desiredInTransitEncryptionConfig` (*type:* `String.t`, *default:* `nil`) - Specify the details of in-transit encryption.
  *   `userManagedKeysConfig` (*type:* `GoogleApi.Container.V1.Model.UserManagedKeysConfig.t`, *default:* `nil`) - The Custom keys configuration for the cluster.
  *   `desiredStackType` (*type:* `String.t`, *default:* `nil`) - The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.
  *   `desiredWorkloadIdentityConfig` (*type:* `GoogleApi.Container.V1.Model.WorkloadIdentityConfig.t`, *default:* `nil`) - Configuration for Workload Identity.
  *   `desiredIdentityServiceConfig` (*type:* `GoogleApi.Container.V1.Model.IdentityServiceConfig.t`, *default:* `nil`) - The desired Identity Service component configuration.
  *   `desiredEnablePrivateEndpoint` (*type:* `boolean()`, *default:* `nil`) - Enable/Disable private endpoint for the cluster's master. Deprecated: Use desired_control_plane_endpoints_config.ip_endpoints_config.enable_public_endpoint instead. Note that the value of enable_public_endpoint is reversed: if enable_private_endpoint is false, then enable_public_endpoint will be true.
  *   `additionalPodRangesConfig` (*type:* `GoogleApi.Container.V1.Model.AdditionalPodRangesConfig.t`, *default:* `nil`) - The additional pod ranges to be added to the cluster. These pod ranges can be used by node pools to allocate pod IPs.
  *   `desiredNodePoolAutoConfigLinuxNodeConfig` (*type:* `GoogleApi.Container.V1.Model.LinuxNodeConfig.t`, *default:* `nil`) - The desired Linux node config for all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters. Currently only `cgroup_mode` can be set here.
  *   `desiredNodePoolAutoConfigNetworkTags` (*type:* `GoogleApi.Container.V1.Model.NetworkTags.t`, *default:* `nil`) - The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  *   `desiredGatewayApiConfig` (*type:* `GoogleApi.Container.V1.Model.GatewayAPIConfig.t`, *default:* `nil`) - The desired config of Gateway API on this cluster.
  *   `desiredCostManagementConfig` (*type:* `GoogleApi.Container.V1.Model.CostManagementConfig.t`, *default:* `nil`) - The desired configuration for the fine-grained cost management feature.
  *   `desiredAddonsConfig` (*type:* `GoogleApi.Container.V1.Model.AddonsConfig.t`, *default:* `nil`) - Configurations for the various addons available to run in the cluster.
  *   `desiredMasterVersion` (*type:* `String.t`, *default:* `nil`) - The Kubernetes version to change the master to. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the default Kubernetes version
  *   `desiredPrivateIpv6GoogleAccess` (*type:* `String.t`, *default:* `nil`) - The desired state of IPv6 connectivity to Google Services.
  *   `desiredEnableCiliumClusterwideNetworkPolicy` (*type:* `boolean()`, *default:* `nil`) - Enable/Disable Cilium Clusterwide Network Policy for the cluster.
  *   `desiredNodePoolAutoConfigResourceManagerTags` (*type:* `GoogleApi.Container.V1.Model.ResourceManagerTags.t`, *default:* `nil`) - The desired resource manager tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  *   `desiredClusterAutoscaling` (*type:* `GoogleApi.Container.V1.Model.ClusterAutoscaling.t`, *default:* `nil`) - Cluster-level autoscaling configuration.
  *   `desiredFleet` (*type:* `GoogleApi.Container.V1.Model.Fleet.t`, *default:* `nil`) - The desired fleet configuration for the cluster.
  *   `desiredParentProductConfig` (*type:* `GoogleApi.Container.V1.Model.ParentProductConfig.t`, *default:* `nil`) - The desired parent product config for the cluster.
  *   `desiredDisableL4LbFirewallReconciliation` (*type:* `boolean()`, *default:* `nil`) - Enable/Disable L4 LB VPC firewall reconciliation for the cluster.
  *   `desiredResourceUsageExportConfig` (*type:* `GoogleApi.Container.V1.Model.ResourceUsageExportConfig.t`, *default:* `nil`) - The desired configuration for exporting resource usage.
  *   `removedAdditionalPodRangesConfig` (*type:* `GoogleApi.Container.V1.Model.AdditionalPodRangesConfig.t`, *default:* `nil`) - The additional pod ranges that are to be removed from the cluster. The pod ranges specified here must have been specified earlier in the 'additional_pod_ranges_config' argument.
  *   `desiredNodeVersion` (*type:* `String.t`, *default:* `nil`) - The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the Kubernetes master version
  *   `desiredMeshCertificates` (*type:* `GoogleApi.Container.V1.Model.MeshCertificates.t`, *default:* `nil`) - Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  *   `desiredPrivateClusterConfig` (*type:* `GoogleApi.Container.V1.Model.PrivateClusterConfig.t`, *default:* `nil`) - The desired private cluster configuration. master_global_access_config is the only field that can be changed via this field. See also ClusterUpdate.desired_enable_private_endpoint for modifying other fields within PrivateClusterConfig. Deprecated: Use desired_control_plane_endpoints_config.ip_endpoints_config.global_access instead.
  *   `desiredEnableFqdnNetworkPolicy` (*type:* `boolean()`, *default:* `nil`) - Enable/Disable FQDN Network Policy for the cluster.
  *   `desiredLocations` (*type:* `list(String.t)`, *default:* `nil`) - The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This list must always include the cluster's primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and/or removed.
  *   `desiredDefaultSnatStatus` (*type:* `GoogleApi.Container.V1.Model.DefaultSnatStatus.t`, *default:* `nil`) - The desired status of whether to disable default sNAT for this cluster.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - The current etag of the cluster. If an etag is provided and does not match the current etag of the cluster, update will be blocked and an ABORTED error will be returned.
  *   `desiredPodAutoscaling` (*type:* `GoogleApi.Container.V1.Model.PodAutoscaling.t`, *default:* `nil`) - The desired config for pod autoscaling.
  *   `desiredVerticalPodAutoscaling` (*type:* `GoogleApi.Container.V1.Model.VerticalPodAutoscaling.t`, *default:* `nil`) - Cluster-level Vertical Pod Autoscaling configuration.
  *   `desiredBinaryAuthorization` (*type:* `GoogleApi.Container.V1.Model.BinaryAuthorization.t`, *default:* `nil`) - The desired configuration options for the Binary Authorization feature.
  *   `desiredNodePoolAutoConfigKubeletConfig` (*type:* `GoogleApi.Container.V1.Model.NodeKubeletConfig.t`, *default:* `nil`) - The desired node kubelet config for all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  *   `desiredAuthenticatorGroupsConfig` (*type:* `GoogleApi.Container.V1.Model.AuthenticatorGroupsConfig.t`, *default:* `nil`) - The desired authenticator groups config for the cluster.
  *   `desiredNodeKubeletConfig` (*type:* `GoogleApi.Container.V1.Model.NodeKubeletConfig.t`, *default:* `nil`) - The desired node kubelet config for the cluster.
  *   `desiredDatabaseEncryption` (*type:* `GoogleApi.Container.V1.Model.DatabaseEncryption.t`, *default:* `nil`) - Configuration of etcd encryption.
  *   `desiredNetworkPerformanceConfig` (*type:* `GoogleApi.Container.V1.Model.ClusterNetworkPerformanceConfig.t`, *default:* `nil`) - The desired network performance config.
  *   `desiredCompliancePostureConfig` (*type:* `GoogleApi.Container.V1.Model.CompliancePostureConfig.t`, *default:* `nil`) - Enable/Disable Compliance Posture features for the cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :desiredNodePoolLoggingConfig =>
            GoogleApi.Container.V1.Model.NodePoolLoggingConfig.t() | nil,
          :desiredNodePoolId => String.t() | nil,
          :desiredK8sBetaApis => GoogleApi.Container.V1.Model.K8sBetaAPIConfig.t() | nil,
          :enableK8sBetaApis => GoogleApi.Container.V1.Model.K8sBetaAPIConfig.t() | nil,
          :desiredLoggingConfig => GoogleApi.Container.V1.Model.LoggingConfig.t() | nil,
          :desiredEnterpriseConfig =>
            GoogleApi.Container.V1.Model.DesiredEnterpriseConfig.t() | nil,
          :desiredGcfsConfig => GoogleApi.Container.V1.Model.GcfsConfig.t() | nil,
          :desiredDefaultEnablePrivateNodes => boolean() | nil,
          :desiredDatapathProvider => String.t() | nil,
          :desiredNodePoolAutoscaling =>
            GoogleApi.Container.V1.Model.NodePoolAutoscaling.t() | nil,
          :desiredMonitoringConfig => GoogleApi.Container.V1.Model.MonitoringConfig.t() | nil,
          :desiredEnableMultiNetworking => boolean() | nil,
          :desiredSecretManagerConfig =>
            GoogleApi.Container.V1.Model.SecretManagerConfig.t() | nil,
          :desiredControlPlaneEndpointsConfig =>
            GoogleApi.Container.V1.Model.ControlPlaneEndpointsConfig.t() | nil,
          :desiredLoggingService => String.t() | nil,
          :desiredSecurityPostureConfig =>
            GoogleApi.Container.V1.Model.SecurityPostureConfig.t() | nil,
          :desiredMonitoringService => String.t() | nil,
          :desiredContainerdConfig => GoogleApi.Container.V1.Model.ContainerdConfig.t() | nil,
          :desiredNotificationConfig => GoogleApi.Container.V1.Model.NotificationConfig.t() | nil,
          :desiredL4ilbSubsettingConfig =>
            GoogleApi.Container.V1.Model.ILBSubsettingConfig.t() | nil,
          :desiredIntraNodeVisibilityConfig =>
            GoogleApi.Container.V1.Model.IntraNodeVisibilityConfig.t() | nil,
          :desiredAutopilotWorkloadPolicyConfig =>
            GoogleApi.Container.V1.Model.WorkloadPolicyConfig.t() | nil,
          :desiredServiceExternalIpsConfig =>
            GoogleApi.Container.V1.Model.ServiceExternalIPsConfig.t() | nil,
          :desiredReleaseChannel => GoogleApi.Container.V1.Model.ReleaseChannel.t() | nil,
          :desiredRbacBindingConfig => GoogleApi.Container.V1.Model.RBACBindingConfig.t() | nil,
          :desiredDnsConfig => GoogleApi.Container.V1.Model.DNSConfig.t() | nil,
          :desiredImageType => String.t() | nil,
          :desiredShieldedNodes => GoogleApi.Container.V1.Model.ShieldedNodes.t() | nil,
          :desiredMasterAuthorizedNetworksConfig =>
            GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig.t() | nil,
          :desiredInTransitEncryptionConfig => String.t() | nil,
          :userManagedKeysConfig => GoogleApi.Container.V1.Model.UserManagedKeysConfig.t() | nil,
          :desiredStackType => String.t() | nil,
          :desiredWorkloadIdentityConfig =>
            GoogleApi.Container.V1.Model.WorkloadIdentityConfig.t() | nil,
          :desiredIdentityServiceConfig =>
            GoogleApi.Container.V1.Model.IdentityServiceConfig.t() | nil,
          :desiredEnablePrivateEndpoint => boolean() | nil,
          :additionalPodRangesConfig =>
            GoogleApi.Container.V1.Model.AdditionalPodRangesConfig.t() | nil,
          :desiredNodePoolAutoConfigLinuxNodeConfig =>
            GoogleApi.Container.V1.Model.LinuxNodeConfig.t() | nil,
          :desiredNodePoolAutoConfigNetworkTags =>
            GoogleApi.Container.V1.Model.NetworkTags.t() | nil,
          :desiredGatewayApiConfig => GoogleApi.Container.V1.Model.GatewayAPIConfig.t() | nil,
          :desiredCostManagementConfig =>
            GoogleApi.Container.V1.Model.CostManagementConfig.t() | nil,
          :desiredAddonsConfig => GoogleApi.Container.V1.Model.AddonsConfig.t() | nil,
          :desiredMasterVersion => String.t() | nil,
          :desiredPrivateIpv6GoogleAccess => String.t() | nil,
          :desiredEnableCiliumClusterwideNetworkPolicy => boolean() | nil,
          :desiredNodePoolAutoConfigResourceManagerTags =>
            GoogleApi.Container.V1.Model.ResourceManagerTags.t() | nil,
          :desiredClusterAutoscaling => GoogleApi.Container.V1.Model.ClusterAutoscaling.t() | nil,
          :desiredFleet => GoogleApi.Container.V1.Model.Fleet.t() | nil,
          :desiredParentProductConfig =>
            GoogleApi.Container.V1.Model.ParentProductConfig.t() | nil,
          :desiredDisableL4LbFirewallReconciliation => boolean() | nil,
          :desiredResourceUsageExportConfig =>
            GoogleApi.Container.V1.Model.ResourceUsageExportConfig.t() | nil,
          :removedAdditionalPodRangesConfig =>
            GoogleApi.Container.V1.Model.AdditionalPodRangesConfig.t() | nil,
          :desiredNodeVersion => String.t() | nil,
          :desiredMeshCertificates => GoogleApi.Container.V1.Model.MeshCertificates.t() | nil,
          :desiredPrivateClusterConfig =>
            GoogleApi.Container.V1.Model.PrivateClusterConfig.t() | nil,
          :desiredEnableFqdnNetworkPolicy => boolean() | nil,
          :desiredLocations => list(String.t()) | nil,
          :desiredDefaultSnatStatus => GoogleApi.Container.V1.Model.DefaultSnatStatus.t() | nil,
          :etag => String.t() | nil,
          :desiredPodAutoscaling => GoogleApi.Container.V1.Model.PodAutoscaling.t() | nil,
          :desiredVerticalPodAutoscaling =>
            GoogleApi.Container.V1.Model.VerticalPodAutoscaling.t() | nil,
          :desiredBinaryAuthorization =>
            GoogleApi.Container.V1.Model.BinaryAuthorization.t() | nil,
          :desiredNodePoolAutoConfigKubeletConfig =>
            GoogleApi.Container.V1.Model.NodeKubeletConfig.t() | nil,
          :desiredAuthenticatorGroupsConfig =>
            GoogleApi.Container.V1.Model.AuthenticatorGroupsConfig.t() | nil,
          :desiredNodeKubeletConfig => GoogleApi.Container.V1.Model.NodeKubeletConfig.t() | nil,
          :desiredDatabaseEncryption => GoogleApi.Container.V1.Model.DatabaseEncryption.t() | nil,
          :desiredNetworkPerformanceConfig =>
            GoogleApi.Container.V1.Model.ClusterNetworkPerformanceConfig.t() | nil,
          :desiredCompliancePostureConfig =>
            GoogleApi.Container.V1.Model.CompliancePostureConfig.t() | nil
        }

  field(:desiredNodePoolLoggingConfig, as: GoogleApi.Container.V1.Model.NodePoolLoggingConfig)
  field(:desiredNodePoolId)
  field(:desiredK8sBetaApis, as: GoogleApi.Container.V1.Model.K8sBetaAPIConfig)
  field(:enableK8sBetaApis, as: GoogleApi.Container.V1.Model.K8sBetaAPIConfig)
  field(:desiredLoggingConfig, as: GoogleApi.Container.V1.Model.LoggingConfig)
  field(:desiredEnterpriseConfig, as: GoogleApi.Container.V1.Model.DesiredEnterpriseConfig)
  field(:desiredGcfsConfig, as: GoogleApi.Container.V1.Model.GcfsConfig)
  field(:desiredDefaultEnablePrivateNodes)
  field(:desiredDatapathProvider)
  field(:desiredNodePoolAutoscaling, as: GoogleApi.Container.V1.Model.NodePoolAutoscaling)
  field(:desiredMonitoringConfig, as: GoogleApi.Container.V1.Model.MonitoringConfig)
  field(:desiredEnableMultiNetworking)
  field(:desiredSecretManagerConfig, as: GoogleApi.Container.V1.Model.SecretManagerConfig)

  field(:desiredControlPlaneEndpointsConfig,
    as: GoogleApi.Container.V1.Model.ControlPlaneEndpointsConfig
  )

  field(:desiredLoggingService)
  field(:desiredSecurityPostureConfig, as: GoogleApi.Container.V1.Model.SecurityPostureConfig)
  field(:desiredMonitoringService)
  field(:desiredContainerdConfig, as: GoogleApi.Container.V1.Model.ContainerdConfig)
  field(:desiredNotificationConfig, as: GoogleApi.Container.V1.Model.NotificationConfig)
  field(:desiredL4ilbSubsettingConfig, as: GoogleApi.Container.V1.Model.ILBSubsettingConfig)

  field(:desiredIntraNodeVisibilityConfig,
    as: GoogleApi.Container.V1.Model.IntraNodeVisibilityConfig
  )

  field(:desiredAutopilotWorkloadPolicyConfig,
    as: GoogleApi.Container.V1.Model.WorkloadPolicyConfig
  )

  field(:desiredServiceExternalIpsConfig,
    as: GoogleApi.Container.V1.Model.ServiceExternalIPsConfig
  )

  field(:desiredReleaseChannel, as: GoogleApi.Container.V1.Model.ReleaseChannel)
  field(:desiredRbacBindingConfig, as: GoogleApi.Container.V1.Model.RBACBindingConfig)
  field(:desiredDnsConfig, as: GoogleApi.Container.V1.Model.DNSConfig)
  field(:desiredImageType)
  field(:desiredShieldedNodes, as: GoogleApi.Container.V1.Model.ShieldedNodes)

  field(:desiredMasterAuthorizedNetworksConfig,
    as: GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig
  )

  field(:desiredInTransitEncryptionConfig)
  field(:userManagedKeysConfig, as: GoogleApi.Container.V1.Model.UserManagedKeysConfig)
  field(:desiredStackType)
  field(:desiredWorkloadIdentityConfig, as: GoogleApi.Container.V1.Model.WorkloadIdentityConfig)
  field(:desiredIdentityServiceConfig, as: GoogleApi.Container.V1.Model.IdentityServiceConfig)
  field(:desiredEnablePrivateEndpoint)
  field(:additionalPodRangesConfig, as: GoogleApi.Container.V1.Model.AdditionalPodRangesConfig)

  field(:desiredNodePoolAutoConfigLinuxNodeConfig,
    as: GoogleApi.Container.V1.Model.LinuxNodeConfig
  )

  field(:desiredNodePoolAutoConfigNetworkTags, as: GoogleApi.Container.V1.Model.NetworkTags)
  field(:desiredGatewayApiConfig, as: GoogleApi.Container.V1.Model.GatewayAPIConfig)
  field(:desiredCostManagementConfig, as: GoogleApi.Container.V1.Model.CostManagementConfig)
  field(:desiredAddonsConfig, as: GoogleApi.Container.V1.Model.AddonsConfig)
  field(:desiredMasterVersion)
  field(:desiredPrivateIpv6GoogleAccess)
  field(:desiredEnableCiliumClusterwideNetworkPolicy)

  field(:desiredNodePoolAutoConfigResourceManagerTags,
    as: GoogleApi.Container.V1.Model.ResourceManagerTags
  )

  field(:desiredClusterAutoscaling, as: GoogleApi.Container.V1.Model.ClusterAutoscaling)
  field(:desiredFleet, as: GoogleApi.Container.V1.Model.Fleet)
  field(:desiredParentProductConfig, as: GoogleApi.Container.V1.Model.ParentProductConfig)
  field(:desiredDisableL4LbFirewallReconciliation)

  field(:desiredResourceUsageExportConfig,
    as: GoogleApi.Container.V1.Model.ResourceUsageExportConfig
  )

  field(:removedAdditionalPodRangesConfig,
    as: GoogleApi.Container.V1.Model.AdditionalPodRangesConfig
  )

  field(:desiredNodeVersion)
  field(:desiredMeshCertificates, as: GoogleApi.Container.V1.Model.MeshCertificates)
  field(:desiredPrivateClusterConfig, as: GoogleApi.Container.V1.Model.PrivateClusterConfig)
  field(:desiredEnableFqdnNetworkPolicy)
  field(:desiredLocations, type: :list)
  field(:desiredDefaultSnatStatus, as: GoogleApi.Container.V1.Model.DefaultSnatStatus)
  field(:etag)
  field(:desiredPodAutoscaling, as: GoogleApi.Container.V1.Model.PodAutoscaling)
  field(:desiredVerticalPodAutoscaling, as: GoogleApi.Container.V1.Model.VerticalPodAutoscaling)
  field(:desiredBinaryAuthorization, as: GoogleApi.Container.V1.Model.BinaryAuthorization)

  field(:desiredNodePoolAutoConfigKubeletConfig,
    as: GoogleApi.Container.V1.Model.NodeKubeletConfig
  )

  field(:desiredAuthenticatorGroupsConfig,
    as: GoogleApi.Container.V1.Model.AuthenticatorGroupsConfig
  )

  field(:desiredNodeKubeletConfig, as: GoogleApi.Container.V1.Model.NodeKubeletConfig)
  field(:desiredDatabaseEncryption, as: GoogleApi.Container.V1.Model.DatabaseEncryption)

  field(:desiredNetworkPerformanceConfig,
    as: GoogleApi.Container.V1.Model.ClusterNetworkPerformanceConfig
  )

  field(:desiredCompliancePostureConfig, as: GoogleApi.Container.V1.Model.CompliancePostureConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.ClusterUpdate do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.ClusterUpdate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.ClusterUpdate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
