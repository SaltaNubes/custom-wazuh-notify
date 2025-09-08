<%
import json
from utils.utils import get
%>
${json.dumps(
{
        "dateAndTime": get(data, 'timestamp', "n/a"),
        "targetHostame": get(data, 'agent.name', "n/a"),
        "targetIP": get(data, 'agent.ip', 'n/a'),
        "fullLog": get(data, 'full_log', 'n/a')
}
, indent=4)}
