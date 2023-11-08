AWS CLI
=======

Describe instances based on filter and query:

    $ aws ec2 describe-instances  --filters "Name=tag:Name,Values=internal-api-gateway" --query "Reservations[*].Instances[*].[InstanceId,ImageId,Tags[*]]"
    
Alias for quick instance id lookup:

    $ alias lsec2="aws ec2 describe-instances --query "Reservations[].Instances[].[Tags[?Key=='Name']|[0].Value, InstanceId, State.Name]" --output text"
