# Do not update - this file is auto-generated by rake openapi:generate[graphql]

require "graphql"
require "graphql/batch"
require "graphql/preload"

require "api/graphql/types/big_int"
require "api/graphql/types/date_time"
require "api/graphql/types/query_filter"

module Api
  module GraphQL
    ContainerGroupType = ::GraphQL::ObjectType.define do
      name "ContainerGroup"
      description "A ContainerGroup"

      implements ::GraphQL::Relay::Node.interface

      field :archived_at, Types::DateTime
      field :container_node_id, types.String, "ID of the resource"
      field :container_project_id, types.String, "ID of the resource"
      field :created_at, Types::DateTime
      field :id, !types.ID, "ID of the resource"
      field :ipaddress, types.String
      field :last_seen_at, Types::DateTime
      field :name, types.String
      field :resource_version, types.String
      field :source_created_at, Types::DateTime
      field :source_deleted_at, Types::DateTime
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :updated_at, Types::DateTime
      connection :containers, ContainerType.connection_type, "The containers associated with this ContainerGroupType" do
        preload :containers
      end
      connection :tags, TagType.connection_type, "The tags associated with this ContainerGroupType" do
        preload :tags
      end
    end

    ContainerImageType = ::GraphQL::ObjectType.define do
      name "ContainerImage"
      description "A ContainerImage"

      implements ::GraphQL::Relay::Node.interface

      field :archived_at, Types::DateTime
      field :created_at, Types::DateTime
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :name, types.String
      field :resource_version, types.String
      field :source_created_at, Types::DateTime
      field :source_deleted_at, Types::DateTime
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :tag, types.String
      field :updated_at, Types::DateTime
      connection :tags, TagType.connection_type, "The tags associated with this ContainerImageType" do
        preload :tags
      end
    end

    ContainerNodeType = ::GraphQL::ObjectType.define do
      name "ContainerNode"
      description "A ContainerNode"

      implements ::GraphQL::Relay::Node.interface

      field :allocatable_cpus, types.Float
      field :allocatable_memory, Types::BigInt
      field :allocatable_pods, Types::BigInt
      field :archived_at, Types::DateTime
      field :cpus, Types::BigInt
      field :created_at, Types::DateTime
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :lives_on_id, types.String, "ID of the resource"
      field :lives_on_type, types.String
      field :memory, Types::BigInt
      field :name, types.String
      field :pods, Types::BigInt
      field :resource_version, types.String
      field :source_created_at, Types::DateTime
      field :source_deleted_at, Types::DateTime
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :updated_at, Types::DateTime
      connection :container_groups, ContainerGroupType.connection_type, "The container_groups associated with this ContainerNodeType" do
        preload :container_groups
      end
      connection :tags, TagType.connection_type, "The tags associated with this ContainerNodeType" do
        preload :tags
      end
    end

    ContainerProjectType = ::GraphQL::ObjectType.define do
      name "ContainerProject"
      description "A ContainerProject"

      implements ::GraphQL::Relay::Node.interface

      field :archived_at, Types::DateTime
      field :created_at, Types::DateTime
      field :display_name, types.String
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :name, types.String
      field :resource_version, types.String
      field :source_created_at, Types::DateTime
      field :source_deleted_at, Types::DateTime
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :status_phase, types.String
      field :updated_at, Types::DateTime
      connection :container_groups, ContainerGroupType.connection_type, "The container_groups associated with this ContainerProjectType" do
        preload :container_groups
      end
      connection :container_resource_quotas, ContainerResourceQuotaType.connection_type, "The container_resource_quotas associated with this ContainerProjectType" do
        preload :container_resource_quotas
      end
      connection :container_templates, ContainerTemplateType.connection_type, "The container_templates associated with this ContainerProjectType" do
        preload :container_templates
      end
      connection :tags, TagType.connection_type, "The tags associated with this ContainerProjectType" do
        preload :tags
      end
    end

    ContainerResourceQuotaType = ::GraphQL::ObjectType.define do
      name "ContainerResourceQuota"
      description "A ContainerResourceQuota"

      implements ::GraphQL::Relay::Node.interface

      field :archived_at, Types::DateTime
      field :container_project_id, types.String, "ID of the resource"
      field :created_at, Types::DateTime
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :name, types.String
      field :resource_version, types.String
      field :source_created_at, Types::DateTime
      field :source_deleted_at, Types::DateTime
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :updated_at, Types::DateTime
    end

    ContainerTemplateType = ::GraphQL::ObjectType.define do
      name "ContainerTemplate"
      description "A ContainerTemplate"

      implements ::GraphQL::Relay::Node.interface

      field :archived_at, Types::DateTime
      field :container_project_id, types.String, "ID of the resource"
      field :created_at, Types::DateTime
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :name, types.String
      field :resource_version, types.String
      field :source_created_at, Types::DateTime
      field :source_deleted_at, Types::DateTime
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :updated_at, Types::DateTime
      connection :tags, TagType.connection_type, "The tags associated with this ContainerTemplateType" do
        preload :tags
      end
    end

    ContainerType = ::GraphQL::ObjectType.define do
      name "Container"
      description "A Container"

      implements ::GraphQL::Relay::Node.interface

      field :archived_at, Types::DateTime
      field :container_group_id, types.String, "ID of the resource"
      field :container_image_id, types.String, "ID of the resource"
      field :cpu_limit, types.Float
      field :cpu_request, types.Float
      field :created_at, Types::DateTime
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :memory_limit, Types::BigInt
      field :memory_request, Types::BigInt
      field :name, types.String
      field :updated_at, Types::DateTime
    end

    FlavorType = ::GraphQL::ObjectType.define do
      name "Flavor"
      description "A Flavor"

      field :archived_at, Types::DateTime
      field :cpus, Types::BigInt, "Number of CPUs"
      field :created_at, Types::DateTime
      field :disk_count, Types::BigInt, "The number of default disks"
      field :disk_size, Types::BigInt, "Size of the default disks in bytes"
      field :extra, types.String
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :memory, Types::BigInt, "Amount of RAM in bytes"
      field :name, types.String
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :updated_at, Types::DateTime
    end

    OrchestrationStackType = ::GraphQL::ObjectType.define do
      name "OrchestrationStack"
      description "A OrchestrationStack"

      implements ::GraphQL::Relay::Node.interface

      field :archived_at, Types::DateTime
      field :created_at, Types::DateTime
      field :description, types.String, "Description of the OrchestrationStack"
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :name, types.String
      field :source_created_at, Types::DateTime
      field :source_deleted_at, Types::DateTime
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :updated_at, Types::DateTime
    end

    ServiceInstanceType = ::GraphQL::ObjectType.define do
      name "ServiceInstance"
      description "A ServiceInstance"

      implements ::GraphQL::Relay::Node.interface

      field :archived_at, Types::DateTime
      field :created_at, Types::DateTime
      field :external_url, types.String
      field :extra, types.String, "Extra information about this object in JSON format"
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :name, types.String
      field :service_offering_id, types.String, "ID of the resource"
      field :service_plan_id, types.String, "ID of the resource"
      field :source_created_at, Types::DateTime
      field :source_deleted_at, Types::DateTime
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :source_region_id, types.String, "ID of the resource"
      field :subscription_id, types.String, "ID of the resource"
      field :updated_at, Types::DateTime
    end

    ServiceOfferingIconType = ::GraphQL::ObjectType.define do
      name "ServiceOfferingIcon"
      description "A ServiceOfferingIcon"

      field :created_at, Types::DateTime
      field :data, types.String, "Raw icon data"
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :updated_at, Types::DateTime
    end

    ServiceOfferingType = ::GraphQL::ObjectType.define do
      name "ServiceOffering"
      description "A ServiceOffering"

      implements ::GraphQL::Relay::Node.interface

      field :archived_at, Types::DateTime
      field :created_at, Types::DateTime
      field :description, types.String
      field :display_name, types.String
      field :distributor, types.String
      field :documentation_url, types.String
      field :extra, types.String, "Extra information about this object in JSON format"
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :long_description, types.String
      field :name, types.String
      field :service_offering_icon_id, types.String, "ID of the resource"
      field :source_created_at, Types::DateTime
      field :source_deleted_at, Types::DateTime
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String, "The native reference used by the Source to refer to this object"
      field :source_region_id, types.String, "ID of the resource"
      field :subscription_id, types.String, "ID of the resource"
      field :support_url, types.String
      field :updated_at, Types::DateTime
      connection :service_instances, ServiceInstanceType.connection_type, "The service_instances associated with this ServiceOfferingType" do
        preload :service_instances
      end
      connection :service_plans, ServicePlanType.connection_type, "The service_plans associated with this ServiceOfferingType" do
        preload :service_plans
      end
      connection :tags, TagType.connection_type, "The tags associated with this ServiceOfferingType" do
        preload :tags
      end
    end

    ServicePlanType = ::GraphQL::ObjectType.define do
      name "ServicePlan"
      description "A ServicePlan"

      implements ::GraphQL::Relay::Node.interface

      field :archived_at, Types::DateTime
      field :created_at, Types::DateTime
      field :description, types.String
      field :extra, types.String, "Extra information about this object in JSON format"
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :name, types.String
      field :resource_version, types.String
      field :service_offering_id, types.String, "ID of the resource"
      field :source_created_at, Types::DateTime
      field :source_deleted_at, Types::DateTime
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :source_region_id, types.String, "ID of the resource"
      field :subscription_id, types.String, "ID of the resource"
      field :update_json_schema, types.String
      field :updated_at, Types::DateTime
      connection :service_instances, ServiceInstanceType.connection_type, "The service_instances associated with this ServicePlanType" do
        preload :service_instances
      end
    end

    SourceType = ::GraphQL::ObjectType.define do
      name "Source"
      description "A Source"

      field :created_at, Types::DateTime
      field :id, !types.ID, "ID of the resource"
      field :tenant_id, types.String, "ID of the resource"
      field :uid, types.String
      field :updated_at, Types::DateTime
      connection :container_groups, ContainerGroupType.connection_type, "The container_groups associated with this SourceType" do
        preload :container_groups
      end
      connection :container_images, ContainerImageType.connection_type, "The container_images associated with this SourceType" do
        preload :container_images
      end
      connection :container_nodes, ContainerNodeType.connection_type, "The container_nodes associated with this SourceType" do
        preload :container_nodes
      end
      connection :container_projects, ContainerProjectType.connection_type, "The container_projects associated with this SourceType" do
        preload :container_projects
      end
      connection :container_templates, ContainerTemplateType.connection_type, "The container_templates associated with this SourceType" do
        preload :container_templates
      end
      connection :containers, ContainerType.connection_type, "The containers associated with this SourceType" do
        preload :containers
      end
      connection :orchestration_stacks, OrchestrationStackType.connection_type, "The orchestration_stacks associated with this SourceType" do
        preload :orchestration_stacks
      end
      connection :service_instances, ServiceInstanceType.connection_type, "The service_instances associated with this SourceType" do
        preload :service_instances
      end
      connection :service_offerings, ServiceOfferingType.connection_type, "The service_offerings associated with this SourceType" do
        preload :service_offerings
      end
      connection :service_plans, ServicePlanType.connection_type, "The service_plans associated with this SourceType" do
        preload :service_plans
      end
      connection :vms, VmType.connection_type, "The vms associated with this SourceType" do
        preload :vms
      end
      connection :volume_types, VolumeTypeType.connection_type, "The volume_types associated with this SourceType" do
        preload :volume_types
      end
      connection :volumes, VolumeType.connection_type, "The volumes associated with this SourceType" do
        preload :volumes
      end
    end

    TagType = ::GraphQL::ObjectType.define do
      name "Tag"
      description "A Tag"

      implements ::GraphQL::Relay::Node.interface

      field :created_at, Types::DateTime
      field :description, types.String
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :name, types.String
      field :namespace, types.String
      field :value, types.String
      connection :container_groups, ContainerGroupType.connection_type, "The container_groups associated with this TagType" do
        preload :container_groups
      end
      connection :container_images, ContainerImageType.connection_type, "The container_images associated with this TagType" do
        preload :container_images
      end
      connection :container_nodes, ContainerNodeType.connection_type, "The container_nodes associated with this TagType" do
        preload :container_nodes
      end
      connection :container_projects, ContainerProjectType.connection_type, "The container_projects associated with this TagType" do
        preload :container_projects
      end
      connection :container_templates, ContainerTemplateType.connection_type, "The container_templates associated with this TagType" do
        preload :container_templates
      end
      connection :service_offerings, ServiceOfferingType.connection_type, "The service_offerings associated with this TagType" do
        preload :service_offerings
      end
      connection :vms, VmType.connection_type, "The vms associated with this TagType" do
        preload :vms
      end
    end

    TaskType = ::GraphQL::ObjectType.define do
      name "Task"
      description "A Task"

      field :completed_at, Types::DateTime
      field :context, types.String
      field :created_at, Types::DateTime
      field :id, !types.ID, "ID of the resource"
      field :name, types.String
      field :state, types.String
      field :status, types.String
      field :updated_at, Types::DateTime
    end

    VmType = ::GraphQL::ObjectType.define do
      name "Vm"
      description "A Vm"

      implements ::GraphQL::Relay::Node.interface

      field :archived_at, Types::DateTime
      field :cpus, Types::BigInt, "Total number of CPUs"
      field :created_at, Types::DateTime
      field :description, types.String, "Description of the Vm"
      field :extra, types.String
      field :flavor_id, types.String, "ID of the resource"
      field :host_inventory_uuid, types.String
      field :hostname, types.String
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :memory, Types::BigInt, "Total RAM in bytes"
      field :name, types.String
      field :orchestration_stack_id, types.String, "ID of the resource"
      field :power_state, types.String
      field :source_created_at, Types::DateTime
      field :source_deleted_at, Types::DateTime
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :uid_ems, types.String, "Cross-Source Unique Reference"
      field :updated_at, Types::DateTime
      connection :tags, TagType.connection_type, "The tags associated with this VmType" do
        preload :tags
      end
      connection :volume_attachments, VolumeAttachmentType.connection_type, "The volume_attachments associated with this VmType" do
        preload :volume_attachments
      end
      connection :volumes, VolumeType.connection_type, "The volumes associated with this VmType" do
        preload :volumes
      end
    end

    VolumeAttachmentType = ::GraphQL::ObjectType.define do
      name "VolumeAttachment"
      description "A VolumeAttachment"

      implements ::GraphQL::Relay::Node.interface

      field :device, types.String
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :state, types.String
      field :vm_id, types.String, "ID of the resource"
      field :volume_id, types.String, "ID of the resource"
    end

    VolumeTypeType = ::GraphQL::ObjectType.define do
      name "VolumeType"
      description "A VolumeType"

      implements ::GraphQL::Relay::Node.interface

      field :archived_at, Types::DateTime
      field :created_at, Types::DateTime
      field :description, types.String
      field :extra, types.String
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :name, types.String
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :updated_at, Types::DateTime
    end

    VolumeType = ::GraphQL::ObjectType.define do
      name "Volume"
      description "A Volume"

      implements ::GraphQL::Relay::Node.interface

      field :archived_at, Types::DateTime
      field :created_at, Types::DateTime
      field :extra, types.String
      field :id, !types.ID, "ID of the resource"
      field :last_seen_at, Types::DateTime
      field :name, types.String
      field :size, Types::BigInt, "Size of the volume in bytes"
      field :source_created_at, Types::DateTime
      field :source_deleted_at, Types::DateTime
      field :source_id, types.String, "ID of the resource"
      field :source_ref, types.String
      field :source_region_id, types.String, "ID of the resource"
      field :state, types.String
      field :updated_at, Types::DateTime
      field :volume_type_id, types.String, "ID of the resource"
    end

    QueryType = ::GraphQL::ObjectType.define do
      name "Query"
      description "The query root of this schema"

      [
        :container_groups, :container_images, :container_nodes, :container_projects, :container_resource_quotas, :container_templates, :containers, :flavors, :orchestration_stacks, :service_instances, :service_offering_icons, :service_offerings, :service_plans, :sources, :tags, :tasks, :vms, :volume_attachments, :volume_types, :volumes
      ].each do |collection|

        klass_names   = collection.to_s.camelize
        klass_name    = klass_names.singularize
        model_class   = klass_name.constantize
        resource_type = "Api::GraphQL::#{klass_name}Type".constantize

        field collection.to_s.singularize.to_sym do
          type resource_type
          argument :id, !types.ID
          description model_class.name
          resolve lambda { |_obj, args, _ctx|
            model_class.where(:id => args[:id]).first
          }
        end

        connection collection, !resource_type.connection_type, "List available #{klass_names}" do
          argument :id, types.ID
          argument :filter, Types::QueryFilter, "The Query Filter"

          resolve lambda { |_obj, args, _ctx|
            scope = if args[:filter]
                      ::ManageIQ::API::Common::Filter.new(model_class,
                                                          ActionController::Parameters.new(args[:filter]),
                                                          ::Api::Docs["1.0"].definitions[klass_name]).apply
                    else
                      model_class
                    end
            args[:id] ? scope.where(:id => args[:id]) : scope.all
          }
        end
      end
    end

    Schema = ::GraphQL::Schema.define do
      use ::GraphQL::Batch
      enable_preloading

      query QueryType
    end
  end
end
