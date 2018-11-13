# To use the solution, the input data is required

struct ActionAtTime
    id::String
    action_type::Int # 0- Depot, 1 - Pickup, 2 - Delivery, 3 - otherOperation
    ActionAtPoint_id::String #  associated ActionAtPoint id
    scheduled_start_time::Float64
end

struct Route
    id::String
    vehicle_set_id::String
    sequence::Vector{ActionAtTime}
    end_status::Int # 0 returnToStartDepot, 1 returnToOtherDepot, 2 ongoing
    # path::OSRMpath     # TODO: add OSRM path here
end

struct RvrpSolution
    id::String
    instance_id::String
    cost::Float64
    routes::Vector{Route}
    unassigned_request_ids::Vector{String}
end