#### Trouble-shooting Notes

Incident Queue
INC-4521: API service can't pull external data

Priority: High
Reported by: Backend Team
Time: 09:47 AM

    "Our API service that runs on the private subnet stopped being able to fetch data from external APIs this morning. We didn't change anything on our end. Requests to third-party services just hang and timeout. Internal calls between our services still work fine."

Affected system: API server (private subnet)
INC-4522: Service discovery broken

Priority: High
Reported by: Platform Team
Time: 10:15 AM

    "Our applications can't resolve internal hostnames anymore. We've been using web.internal.local, api.internal.local, and db.internal.local for service discovery but they stopped resolving. Public DNS works fine - we can resolve google.com. This is blocking deployments."

Affected system: All VMs
INC-4523: Web frontend can't reach backend

Priority: Critical
Reported by: Web Team
Time: 10:32 AM

    "The web frontend suddenly can't connect to the API backend. We're getting connection refused errors on port 8080. The API health endpoint works when we curl localhost on the API server itself, so the service is running. Also, the API team says they can't reach the database on port 5432."

Affected systems: Web server → API server, API server → Database
INC-4524: Security audit findings

Priority: Medium
Reported by: Security Team
Time: 11:00 AM

    "Our quarterly security scan flagged several issues with the network segmentation:

        SSH is accessible from the internet on all hosts — bastion should only allow SSH from your trusted source IP/CIDR, and internal hosts (web, API, database) should only allow SSH from the bastion subnet
        Database accepts connections on port 5432 from too broad a range — it should only accept connections from the API subnet (10.0.2.0/24)
        ICMP is open from anywhere on the web server — it should only be allowed from the bastion subnet

    These need to be tightened up before our compliance review next week."

Affected systems: Network security groups