<%
import json
from utils.utils import get
%>
${json.dumps(
{
    "dateAndTime": get(data, 'timestamp', "n/a"),
    "hostName": get(data, 'data.hostname', "n/a"),
    "sourceIpAddress": get(data, 'data.srcip', "n/a"),
    "destinationIpAddress": get(data, 'data.dstip', 'n/a'),
    "destinationPort": get(data, 'data.dstport', 'n/a'),
    "sourceUserName": get(data, 'data.source_user', 'n/a'),
    "applicationName": get(data, 'data.appcat', 'n/a'),
    "action": get(data, 'data.action', 'n/a'),
}
, indent=4)}
