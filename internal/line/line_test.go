package line

import "testing"

// TestToolchain only proves that `go test` runs.
// Delete it as soon as you write your first real test.
func TestToolchain(t *testing.T) {
	if got := 1 + 1; got != 2 {
		t.Fatalf("1 + 1 = %d, want 2", got)
	}
}
