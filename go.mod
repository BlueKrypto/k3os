module github.com/BlueKrypto/k3os

go 1.16

require (
	github.com/ghodss/yaml v1.0.0
	github.com/mattn/go-isatty v0.0.16
	github.com/moby/moby v20.10.17+incompatible
	github.com/moby/sys/mount v0.3.3
	github.com/moby/sys/mountinfo v0.6.2
	github.com/otiai10/copy v1.7.0
	github.com/pkg/errors v0.9.1
	github.com/rancher/mapper v0.0.0-20190814232720-058a8b7feb99
	github.com/sirupsen/logrus v1.9.0
	github.com/urfave/cli v1.22.9
	golang.org/x/sys v0.0.0-20220829200755-d48e67d00261
	gopkg.in/freddierice/go-losetup.v1 v1.0.0-20170407175016-fc9adea44124
	pault.ag/go/modprobe v0.1.2
)

require (
	github.com/docker/go-units v0.5.0 // indirect
	github.com/rancher/wrangler v1.0.0 // indirect
	golang.org/x/term v0.0.0-20220722155259-a9ba230a4035
	gotest.tools/v3 v3.3.0 // indirect
)

replace (
	k8s.io/api => github.com/rancher/kubernetes/staging/src/k8s.io/api v1.16.3-k3s.2
	k8s.io/apiextensions-apiserver => github.com/rancher/kubernetes/staging/src/k8s.io/apiextensions-apiserver v1.16.3-k3s.2
	k8s.io/apimachinery => github.com/rancher/kubernetes/staging/src/k8s.io/apimachinery v1.16.3-k3s.2
	k8s.io/apiserver => github.com/rancher/kubernetes/staging/src/k8s.io/apiserver v1.16.3-k3s.2
	k8s.io/client-go => github.com/rancher/kubernetes/staging/src/k8s.io/client-go v1.16.3-k3s.2
	k8s.io/code-generator => github.com/rancher/kubernetes/staging/src/k8s.io/code-generator v1.16.3-k3s.2
	k8s.io/component-base => github.com/rancher/kubernetes/staging/src/k8s.io/component-base v1.16.3-k3s.2
	k8s.io/kube-aggregator => github.com/rancher/kubernetes/staging/src/k8s.io/kube-aggregator v1.16.3-k3s.2
	k8s.io/metrics => github.com/rancher/kubernetes/staging/src/k8s.io/metrics v1.16.3-k3s.2
)
