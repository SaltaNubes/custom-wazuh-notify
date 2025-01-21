<%
import json
from utils.utils import get
%>
${json.dumps(
{
    "eventName": get(data, 'rule.description', "n/a"),
    "dateAndTime": get(data, 'timestamp', "n/a"),
    "sourceUserName": get(data, 'data.win.eventdata.subjectUserName', "n/a"),
    "destinationUserName": get(data, 'data.win.eventdata.targetUserName', 'n/a'),
    "domainName": get(data, 'data.win.eventdata.subjectDomainName', 'n/a'),
    "hostName": get(data, 'data.win.system.computer', 'n/a'),
}
, indent=4)}

