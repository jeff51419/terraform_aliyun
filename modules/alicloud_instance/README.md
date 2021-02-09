https://www.terraform.io/docs/providers/alicloud/r/instance.html

You can launch an ECS instance for a VPC network via specifying parameter vswitch_id. 
One instance can only belong to one VSwitch.

NOTE: At present, 'PrePaid' instance cannot be deleted and must wait it to be outdated and release it automatically.

NOTE: The resource supports modifying instance charge type from 'PrePaid' to 'PostPaid' from version 1.9.6
However, at present, this modification has some limitation about CPU core count in one month, 
so strongly recommand that ""Don't modify instance charge type frequentlly in one month.""

NOTE: There is unsupported 'deletion_protection' attribute when the instance is spot

NOTE: From version 1.7.0, setting "internet_max_bandwidth_out" larger than 0 can allocate a public IP for an instance.
Setting "internet_max_bandwidth_out" to 0 can release allocated public IP for VPC instance
(For Classic instnace, its public IP cannot be release once it allocated, even thougth its bandwidth out is 0).
However, at present, 'PrePaid' instance cannot narrow its max bandwidth out when its 'internet_charge_type' is "PayByBandwidth".
