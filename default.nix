with import <nixpkgs> {};

buildGoModule rec {
    pname ="nomad-driver-podman";
    version = "0.0.3";

    src = ./.;

    vendorSha256 = "0nlr65gs80ifimchxdiw3121ppwk8k6bs255fqv5iznhw47pfylq";

    meta = with lib; {
      description = "Pod Manager (podman) daemonless container runtime driver for executing Nomad tasks";
      homepage = "https://github.com/pascomnet/nomad-driver-podman";
      license = licenses.asl20;
      platforms = platforms.linux ++ platforms.darwin;
    };
}

