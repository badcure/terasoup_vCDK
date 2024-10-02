import cdktf
import builtins
import constructs
from cdktf_cdktf_provider_docker.provider import DockerProvider

class TestStack(cdktf.TerraformStack):

    def __init__(self, scope: constructs.Construct, id: builtins.str) -> None:
        super().__init__(scope, id)