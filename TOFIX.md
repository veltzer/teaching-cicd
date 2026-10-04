# TOFIX

Findings from a code scan on 2026-10-04.

## Medium

- `Jenkinsfile.docker:10` - wraps `sh` in a bare `step { ... }` block; in declarative pipelines `step` takes a build-step class, not a closure, so this pipeline fails; call `sh 'python -m pytest'` directly inside `steps` (as `Jenkinsfile:6` does).
- `Jenkinsfile.multibranch:1` - the `pipeline` block has no top-level `agent` directive, which declarative pipeline validation rejects before any stage runs; add `agent any`. The `echo buiding ...` messages at lines 8 and 16 are also misspelled ("building").
- `README.md:3` - the repo has no `rsconstruct.toml`, `pyproject.toml` or `.github/workflows/build.yml`, so none of its Python, YAML or Markdown is checked in CI (unlike the rest of the fleet), even though `exercise.txt:7` asks students to build exactly such a workflow; add the fleet build setup (pytest on `tests/`, yamllint on the k8s/helm files).

## Low

- `Jenkinsfile.os_version:1` - byte-identical to `Jenkinsfile.parallel`, and `Jenkinsfile.simple` is byte-identical to `Jenkinsfile`; drop the duplicates or make each variant demonstrate something different.
- `Jenkinsfile.singlebranch:3` - uses the image `python_with_pytest:latest`, which nothing in the repo builds (the `Dockerfile` builds an app image without pytest), and then installs pytest anyway at line 9; use a public Python image (the commented-out line 2) and remove the dead commented lines 2, 4 and 8.
- `src/main/java/com/company/HelloWorld.java:1` - the file sits under `com/company/` but declares no `package com.company;`; add the package line so the source layout matches the package.
- `pom.xml:20` - `<source>1.8</source>`/`<target>1.8</target>` produce "source value 8 is obsolete" warnings on current JDKs (the `maven` image in `Jenkinsfile.java:4`); switch to `<maven.compiler.release>` with a supported LTS level.
- `deployment.yaml:14` - `hostNetwork: true` puts the nginx pod on the node's network namespace, which a plain web deployment does not need and which defeats pod network isolation; remove it (and fix the container name typo `nginxx` at line 16).
- `helm/values.yaml:1` - empty, and `helm/templates/pod.yaml` hardcodes everything (name, image), so the chart templates nothing; either parametrise the pod from values or note that it is a minimal skeleton. `helm/Chart.yaml:6` `appVersion: "1.16.0"` is the `helm create` default and unrelated to the app.
