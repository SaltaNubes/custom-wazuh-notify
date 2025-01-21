<%
import json
from utils.utils import get
%>
${json.dumps(
{
        "dateAndTime": get(data, 'timestamp', "n/a"),
        "UserName": get(data, 'data.dstuser', 'n/a'),
        "firewallHostName": get(data, 'data.devname', "n/a"),
        "action": get(data, 'data.action', 'n/a'),
        "firewallIP": get(data, 'location', 'n/a'),
        "message": get(data, 'data.msg', 'n/a'),
        "description": get(data, 'rule.description', 'n/a')
}
, indent=4)}
