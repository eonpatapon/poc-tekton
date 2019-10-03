// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/pipeline/v1alpha1

package v1alpha1

// GCSResource is a GCS endpoint from which to get artifacts which is required
// by a Build/Task for context (e.g. a archive from which to build an image).
GCSResource :: {
	name:     string               @go(Name)
	type:     PipelineResourceType @go(Type)
	location: string               @go(Location)
	typeDir:  bool                 @go(TypeDir)

	//Secret holds a struct to indicate a field name and corresponding secret name to populate it
	secrets: [...SecretParam] @go(Secrets,[]SecretParam)
}