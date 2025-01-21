<%
import json
from utils.utils import get
%>
${json.dumps(
{
    "dateAndTime": get(data, 'timestamp', "n/a"),
    "sourceUserName": get(data, 'data.win.eventdata.targetUserName', "n/a"),
    "sourceIpAddress": get(data, 'data.win.eventdata.ipAddress', 'n/a'),
    "hostName": get(data, 'data.win.system.computer', 'n/a'),
    "failureReason": get(data, 'data.win.eventdata.subStatus', 'n/a'),
    "logonType": get(data, 'data.win.eventdata.logonType', 'n/a')
}
, indent=4)}
