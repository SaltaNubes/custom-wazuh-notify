<%
from utils.utils import get
%>
timestamp: ${get(data, 'timestamp', "n/a")}
office365Operation: ${get(data, 'data.office365.Operation', "n/a")}
office365SourceRelativeUrl: ${get(data, 'data.office365.SourceRelativeUrl', "n/a")}
office365UserId: ${get(data, 'data.office365.UserId', "n/a")}
office365ObjectId: ${get(data, 'data.office365.ObjectId', "n/a")}
office365ClientIP: ${get(data, 'data.office365.ClientIP', "n/a")}
countryName: ${get(data, 'GeoLocation.country_name', "n/a")}
agentName: ${get(data, 'agent.name', "n/a")}
