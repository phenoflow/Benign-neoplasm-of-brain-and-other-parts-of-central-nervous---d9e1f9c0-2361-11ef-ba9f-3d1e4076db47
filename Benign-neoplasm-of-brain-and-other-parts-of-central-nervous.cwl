cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary:
    run: benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  spinal-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary:
    run: spinal-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary/output
  benign-neoplasm-of-brain-and-other-parts-of-central-nervous-mmeningioma---primary:
    run: benign-neoplasm-of-brain-and-other-parts-of-central-nervous-mmeningioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: spinal-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary/output
  aortic-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary:
    run: aortic-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: benign-neoplasm-of-brain-and-other-parts-of-central-nervous-mmeningioma---primary/output
  craniopharyngeal-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary:
    run: craniopharyngeal-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: aortic-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary/output
  cerebral-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary:
    run: cerebral-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: craniopharyngeal-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary/output
  benign---primary:
    run: benign---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: cerebral-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary/output
  pituitary-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary:
    run: pituitary-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: benign---primary/output
  benign-neoplasm-of-brain-and-other-parts-of-central-nervous-neuroma---primary:
    run: benign-neoplasm-of-brain-and-other-parts-of-central-nervous-neuroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: pituitary-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary/output
  benign-neoplasm-of-brain-and-other-parts-of-central-nervous-meninge---primary:
    run: benign-neoplasm-of-brain-and-other-parts-of-central-nervous-meninge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: benign-neoplasm-of-brain-and-other-parts-of-central-nervous-neuroma---primary/output
  benign-neoplasm-of-brain-and-other-parts-of-central-nervous-system---primary:
    run: benign-neoplasm-of-brain-and-other-parts-of-central-nervous-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: benign-neoplasm-of-brain-and-other-parts-of-central-nervous-meninge---primary/output
  benign-neoplasm-of-brain-and-other-parts-of-central-nervous-paraganglia---primary:
    run: benign-neoplasm-of-brain-and-other-parts-of-central-nervous-paraganglia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: benign-neoplasm-of-brain-and-other-parts-of-central-nervous-system---primary/output
  pineal-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary:
    run: pineal-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: benign-neoplasm-of-brain-and-other-parts-of-central-nervous-paraganglia---primary/output
  carotid-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary:
    run: carotid-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: pineal-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: carotid-benign-neoplasm-of-brain-and-other-parts-of-central-nervous---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
