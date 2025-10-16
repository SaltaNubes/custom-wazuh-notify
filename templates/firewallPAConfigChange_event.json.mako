<%
import json
from utils.utils import get
%>
${json.dumps(
{
    "dateAndTime": get(data, 'timestamp', "n/a"),
    "sourceUserName": get(data, 'data.admin', "n/a"),
    "hostName": get(data, 'data.device_group_hierarchy_level_4', 'n/a'),
    "action": get(data, 'data.command', 'n/a'),
    "eventDetail": get(data, 'data.configuration_path', 'n/a')
}
, indent=4)}
