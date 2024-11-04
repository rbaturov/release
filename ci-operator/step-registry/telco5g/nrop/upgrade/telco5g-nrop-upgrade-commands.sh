#!/bin/bash

operator-sdk run bundle-upgrade --timeout=10m --security-context-config restricted -n openshift-numaresources "$OO_BUNDLE_NEW"
oc wait --for condition=Available -n openshift-numaresources deployment numaresources-controller-manager