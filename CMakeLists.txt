cmake_minimum_required(VERSION 3.8)
project(trif_sim_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/LinkMesh.msg"
  "msg/JointLimit.msg"
  "msg/JointAxis.msg"
  "srv/AddLink.srv"
  "srv/AddJoint.srv"
  "srv/AddGroupTCP.srv"
  "srv/MoveJoint.srv"
  "srv/AddPlanningGroup.srv"
  "srv/AddGroupState.srv"
  "srv/AddVirtualJoint.srv"
  "srv/DisableCollision.srv"
  "srv/GenerateDescription.srv"
  "srv/GenerateTesseract.srv"
  DEPENDENCIES std_msgs geometry_msgs
)

ament_package()