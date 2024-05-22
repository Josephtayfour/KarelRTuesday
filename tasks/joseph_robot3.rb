require_relative "../mixins/sensor_pack"
require_relative "../karel/ur_robot"
require_relative "../mixins/intelligent"

# MON premier robot
class JosephRobot3 < UrRobot

    include SensorPack

    include Intelligent
end