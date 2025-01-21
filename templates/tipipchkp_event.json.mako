<%
import json
from utils.utils import get
%>
${json.dumps(
{
    "dateAndTime": get(data, 'timestamp', "n/a"),
    "hostName": get(data, 'data.hostname', "n/a"),
     "sourceIpAddress": get(data, 'data.src', "n/a"),
    "destinationIpAddress": get(data, 'data.dst', 'n/a'),
    "destinationPort": get(data, 'data.dstport', 'n/a'),
    "sourceUserName": get(data, 'data.source_user', 'n/a'),
    "applicationName": get(data, 'data.product', 'n/a'),
    "action": get(data, 'data.fw_action', 'n/a'),
}
, indent=4)}
