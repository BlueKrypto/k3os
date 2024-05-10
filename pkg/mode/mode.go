package mode

import (
	"os"
	"path/filepath"
	"strings"

	"github.com/BlueKrypto/k3os/pkg/system"
)

func Get(prefix ...string) (string, error) {
	bytes, err := os.ReadFile(filepath.Join(filepath.Join(prefix...), system.StatePath("mode")))
	if os.IsNotExist(err) {
		return "", nil
	} else if err != nil {
		return "", err
	}
	return strings.TrimSpace(string(bytes)), nil
}
