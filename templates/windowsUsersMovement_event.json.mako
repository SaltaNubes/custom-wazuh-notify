<%
import json
from utils.utils import get
%>
${json.dumps(
{
    "dateAndTime": get(data, 'timestamp', "n/a"),
    "sourceUserName": get(data, 'data.win.eventdata.subjectUserName', "n/a"),
    "destinationUserName": get(data, 'data.win.eventdata.targetUserName', 'n/a'),
    "hostName": get(data, 'data.win.system.computer', 'n/a'),
    "domainName": get(data, 'data.win.eventdata.targetDomainName', 'n/a'),
    "eventId": get(data, 'data.win.system.eventID', 'n/a')
}
, indent=4)}
