cmake_minimum_required(VERSION 3.8)
project(trif_sim_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/env_mgr_msgs/LinkMesh.msg"
  "msg/env_mgr_msgs/JointLimit.msg"
  "msg/env_mgr_msgs/JointAxis.msg"

  "srv/env_mgr_srvs/AddLink.srv"
  "srv/env_mgr_srvs/AddJoint.srv"
  "srv/env_mgr_srvs/AddGroupTCP.srv"
  "srv/env_mgr_srvs/MoveJoint.srv"
  "srv/env_mgr_srvs/AddPlanningGroup.srv"
  "srv/env_mgr_srvs/AddGroupState.srv"
  "srv/env_mgr_srvs/AddVirtualJoint.srv"
  "srv/env_mgr_srvs/DisableCollision.srv"
  "srv/env_mgr_srvs/SetKinematicChain.srv"
  "srv/env_mgr_srvs/GenerateEnvironment.srv"

  "msg/planner_msgs/PlannedPoint.msg"
  "msg/planner_msgs/PlannedToolpath.msg"
  "msg/planner_msgs/Toolpath.msg"
  "msg/planner_msgs/ToolpathPoint.msg"

  "srv/planner_srvs/AddToolpath.srv"
  "srv/planner_srvs/ClearToolpaths.srv"
  "srv/planner_srvs/ExecutePlan.srv"
  "srv/planner_srvs/LoadEnvironment.srv"

  DEPENDENCIES std_msgs geometry_msgs
)

ament_package()