require_relative "../mixins/sensor_pack"
require_relative "../karel/ur_robot"
require_relative "../mixins/intelligent"
require_relative "../mixins/intelligent2"


# MON premier robot
class JosephRobot3 < UrRobot

    include SensorPack

    include Intelligent

    include Intelligent2
end