<%
from utils.utils import get
%>
timestamp: ${get(data, 'timestamp', "n/a")}
office365Subject: ${get(data, 'data.office365.Subject', "n/a")}
office365P2Sender: ${get(data, 'data.office365.P2Sender', "n/a")}
office365Recipients: ${get(data, 'data.office365.Recipients', "n/a")}
office365SenderIp: ${get(data, 'data.office365.SenderIp', "n/a")}
data.office365Verdict: ${get(data, 'data.office365.Verdict', "n/a")}
countryName: ${get(data, 'data.office365.SenderIp', "n/a")}
countryName: ${get(data, 'data.office365.PhishConfidenceLevel', "n/a")}
agentName: ${get(data, 'agent.name', "n/a")}
