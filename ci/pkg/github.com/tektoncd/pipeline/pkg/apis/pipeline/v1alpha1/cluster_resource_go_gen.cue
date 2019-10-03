// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/pipeline/v1alpha1

package v1alpha1

// ClusterResource represents a cluster configuration (kubeconfig)
// that can be accessed by tasks in the pipeline
ClusterResource :: {
	name: string               @go(Name)
	type: PipelineResourceType @go(Type)

	// URL must be a host string
	url:      string @go(URL)
	revision: string @go(Revision)

	// Server requires Basic authentication
	username:  string @go(Username)
	password:  string @go(Password)
	namespace: string @go(Namespace)

	// Server requires Bearer authentication. This client will not attempt to use
	// refresh tokens for an OAuth2 flow.
	// Token overrides userame and password
	token: string @go(Token)

	// Server should be accessed without verifying the TLS certificate. For testing only.
	Insecure: bool

	// CAData holds PEM-encoded bytes (typically read from a root certificates bundle).
	// CAData takes precedence over CAFile
	cadata: bytes @go(CAData,[]byte)

	//Secrets holds a struct to indicate a field name and corresponding secret name to populate it
	secrets: [...SecretParam] @go(Secrets,[]SecretParam)
}