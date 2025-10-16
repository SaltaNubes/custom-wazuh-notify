<%
import json
from utils.utils import get
%>
${json.dumps(
{
    "dateAndTime": get(data, 'timestamp', "n/a"),
    "sourceIpAddress": get(data, 'data.source_address', "n/a"),
    "destinationIpAddress": get(data, 'data.destination_address', 'n/a'),
    "sourceUserName": get(data, 'data.source_user', 'n/a')
}
, indent=4)}
