<%
import json
from utils.utils import get
%>
${json.dumps(
{
        "dateAndTime": get(data, 'timestamp', "n/a"),
        "hostName": get(data, 'agent.name', 'n/a'),
        "deviceIP": get(data, 'agent.ip', 'n/a'),
        "srcUserName": get(data, 'data.srcuser', 'n/a'),
        "targetUserName": get(data, 'data.dstuser', 'n/a'),
        "commandExecuted": get(data, 'data.command', 'n/a'),
        "description": get(data, 'rule.description', 'n/a')
}
, indent=4)}
