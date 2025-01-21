<%
import json
from utils.utils import get
%>
${json.dumps(
{
    "dateAndTime": get(data, 'timestamp', "n/a"),
    "agentIp": get(data, 'agent.ip', "n/a"),
    "hostName": get(data, 'agent.name', 'n/a'),
    "eventDetail": get(data, 'rule.description', 'n/a')
}
, indent=4)}
