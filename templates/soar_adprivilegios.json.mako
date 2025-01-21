<%
import json
from utils.utils import get
%>
${json.dumps(
{
    "dateAndTime": get(data, 'timestamp', "n/a"),
    "sourceUserName": get(data, 'data.win.eventdata.subjectUserName', "n/a"),
    "destinationUserName": get(data, 'data.win.eventdata.memberName', "n/a"),
    "hostName": get(data, 'data.win.system.computer', 'n/a'),
    "domainName": get(data, 'data.win.eventdata.subjectDomainName', 'n/a'),
    "destinatinGroupName": get(data, 'data.win.eventdata.targetUserName', 'n/a'),
}
, indent=4)}
