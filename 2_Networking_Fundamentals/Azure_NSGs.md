#### Azure Network Security Groups
- Can be used to filter, allow or deny inbound and outbound traffic between Azure resources
- Security rules are applied by default to an NSG
- Custom rules can be created and applied

- Rules are processed in a priority order - lower numbers have higher priority
- Rules are evaluated based on 5 sources of information -
    - Source
    - Source port
    - destination
    - destination port
    - protocol
- Rules with the same priority and direction (inbound / outbound) cannot be created as they will cause issues

- NSGs can be Stateful
    - E.g. a rule allowing outbound traffic does not need another rule to allow inbound response traffic back in
    - The same is true for allowed inbound traffic and outbound responses

- Rules can be removed and will not affect current connections
- If a new connection is tried after the rules have been removed it will not work
- The default rules created by Azure cannot be deleted but can be over-ridden with higher priority rules