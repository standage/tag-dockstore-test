class: CommandLineTool
doc: |
    A Docker container for the **tag** annotation processing library.
    Built for testing & exploration purposes.
id: tag-0.3.3-test
label: "tag library v0.3.3: Dockstore test"

cwlVersion: v1.0

dct:creator:
  "@id": "http://orcid.org/0000-0003-0342-8531"
  foaf:name: Daniel Standage
  foaf:mbox: "mailto:daniel.standage@gmail.com"

requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/standage/tag:0.3.3"

inputs:
  gff3:
    type: File
    doc: "GFF3 file to be summarized"
    format: "https://github.com/The-Sequence-Ontology/Specifications/blob/master/gff3.md"
    inputBinding:
      position: 1

outputs:
  output.txt:
    type: File
    doc: "Summary output"
    outputBinding:
      glob: output.txt

baseCommand: ["tag", "sum"]
stdout: output.txt
