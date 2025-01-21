<%
import json
from utils.utils import get
%>
${json.dumps(
{
    "dateAndTime": get(data, 'timestamp', "n/a"),
    "sourceUserName": get(data, 'data.win.eventdata.param7', "n/a"),
    "hostName": get(data, 'data.win.system.computer', 'n/a'),
    "actionTaken": get(data, 'data.win.eventdata.param5', 'n/a'),
    "eventDetail": get(data, 'data.win.eventdata.param3', 'n/a')
}
, indent=4)}
