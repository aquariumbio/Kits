# typed: false
# frozen_string_literal: true

needs 'Standard Libs/Units'
needs 'Consumable Libs/ConsumableDefinitions'

# A compilation of the components and volumes in kits.
# @author Cannon Mallory <malloc3@uw.edu>
module KitContents
  include Units
  include ConsumableDefinitions

  #### Kit constants #####
  # Anneal RNA Kit
  EPH3_HT = 'EPH3 HT'

  # Synthesize First Strand cDNA Kit
  FSM_HT = 'First Strand Mix HT'
  RVT_HT = 'Reverse Transcriptase HT'

  # Amplify CDNA
  IPM_HT = 'Illumina PCR Mix HT'
  CPP1_HT = 'COVIDSeq Primer Pool 1 HT'
  CPP2_HT = 'COVIDSeq Primer Pool 2 HT'

  # Tagment PCR Aplicons
  EBLTS_HT = 'Enrichment BLT HT'
  TB1_HT = 'Tagmentation Buffer 1 HT'

  # Post Tagmentation Clean up
  ST2_HT = 'Stop Tagment Buffer 2 HT'
  TWB_HT = 'Tagmentation Wash Buffer HT'

  # Amplify Tagmented Amplicons
  EPM_HT = 'Enhanced PCR Mix HT'

  # Pool and Clean Up library
  ITB = 'Illumina Tune Beads'
  RSB_HT = 'Resuspension Buffer HT'C

  # dsDNA HS Assay Kit
  COMP_A = 'Qubit dsDNA HS Buffer'
  COMP_B = 'Qubit dsDNA HS Standard 1'
  COMP_C = 'Qubit dsDNA HS Standard 2'
  COMP_D = 'Qubit dsDNA HS Reagent Dye'
  SAMPLE_BUFFER = 'Agilent HS D100 Sample Buffer'

  #Agilent HS D100 Sample Kit
  AGE_BUFFER = 'Agilent HS D100 Sample Buffer'

  ##### Commonly used components ######
  ETOH = 'Absolute ethanol'
  WATER = 'Nuclease-free water'

  ###### Plate Extraction Components ####
  AVL = 'Buffer AVL'
  AW1 = 'Buffer AW1'
  AW2 = 'Buffer AW2'
  AVE = 'Buffer AVE'
  AVE_CARRIER = 'AVE Carrier RNA Aliquot'
  ELUTE = 'TopElute Fluid'

  CONTENTS = {

    'Anneal RNA Kit' => {
      description: 'Kit for Anneal RNA',
      location: ['M20 Freezer'],
      components: [
        {
          input_name: EPH3_HT,
          qty: 2.127, units: MICROLITERS,
          notes: 'Thaw at room temperature. Invert to mix. <b>Keep on ice until use</b>.'
        }
      ],
      consumables: []
    },

    'Synthesize First Strand cDNA Kit' => {
      description: 'Kit for Synthesize First Strand cDNA',
      location: ['M20 Freezer'],
      components: [
        { input_name: FSM_HT,
          qty: 2.2505, units: MICROLITERS,
          description: 'COVIDSeq Kit',
          sample_name: 'na',
          notes: 'Thaw at room temperature. Invert to mix. <b>Keep on ice until use</b>.' },
        { input_name: RVT_HT,
          description: 'COVIDSeq Kit',
          qty: 0.25, units: MICROLITERS,
          sample_name: 'na',
          notes: 'Thaw at room temperature. <b>Keep on ice until use</b>.' }
      ],
      consumables: [
        {
          consumable: CONSUMABLES[MICRO_TUBE],
          qty: 1, units: 'Each'
        }
      ]
    },

    'Amplify cDNA Kit' => {
      description: 'Kit for Amplify cDNA',
      location: ['M20 Freezer'],
      components: [
        { input_name: IPM_HT,
          qty: 7.501, units: MICROLITERS,
          sample_name: nil,
          notes: 'Thaw at room temperature. Invert to mix. <b>Keep on ice until use</b>.' },
        { input_name: CPP1_HT,
          qty: 1.075, units: MICROLITERS,
          sample_name: nil,
          notes: 'Thaw at room temperature. <b>Keep on ice until use</b>.' },
        { input_name: CPP2_HT,
          qty: 1.075, units: MICROLITERS,
          sample_name: nil,
          notes: 'Thaw at room temperature. <b>Keep on ice until use</b>.' }
      ],
      consumables: []
    },

    'Tagment PCR Amplicons Kit' => {
      description: 'Kit for Tagment PCR Amplicons Kit',
      location: ['M20 Freezer'],
      components: [
        { input_name: EBLTS_HT,
          qty: 1, units: MICROLITERS,
          notes:  'Bring to room temperature and vortex thoroughly before use.' },
        { input_name: TB1_HT,
          qty: 3, units: MICROLITERS,
          notes: 'Bring to room temperature and vortex thoroughly before use.' }
      ],
      consumables: [
        {
          consumable: CONSUMABLES[MICRO_TUBE],
          qty: 1, units: 'Each'
        },
        {
          consumable: CONSUMABLES[PLATE_384_WELL],
          qty: 1, units: 'Each'
        }
      ]
    },

    'Post Tagmentation Clean Up Kit' => {
      description: 'Kit for Post Tagmentation Clean Up Kit',
      location: ['M20 Freezer'],
      components: [ 
        { input_name: ST2_HT, 
          qty: 2.5, units: MICROLITERS,
          notes: 'Vortex thoroughly before use.' },
        { input_name: TWB_HT,
          qty: 30.005, units: MICROLITERS,
          notes: 'Vortex thoroughly before use.' }
      ],
      consumables: []
    },

    'Amplify Tagmented Amplicons Kit' => {
      description: 'Kit for amplifying tagmented amplicons',
      location: ['M20 Freezer'],
      components: [
        {
          input_name: EPM_HT,
          qty: 6, units: MICROLITERS,
          notes: 'Invert to mix. <b>Keep on ice until use.</b>'
        }
      ],
      consumables: []
    },

    'Library Pooling Kit' => {
      description: 'Kit for Library pooling and Cleanup',
      location: ['M20 Freezer'],
      components: [
        {
          input_name: ITB,
          qty: 504, units: MICROLITERS, #1.305
          sample_name: nil,
          notes: 'Thaw at room temperature, Vortex thoroughly before use. <b>Keep on ice until use</b>.'
        },
        {
          input_name: RSB_HT,
          qty: 55, units: MICROLITERS, # 0.142
          sample_name: nil,
          notes: 'Take off ice <b>30 minutes before use</b> to bring to room temperature. Vortex and invert to mix.'
        },
        {
          input_name: ETOH,
          qty: 1600, units: MICROLITERS, #4.145
          sample_name: nil,
          notes: 'Make 2mL fresh 80% EtOH. Vortex and centrifuge before use.'
        }
      ],
      consumables: []
    },

      # dsDNA HS Assay Kit
      # COMP_A = 'Qubit dsDNA HS Buffer'
      # COMP_B = 'Qubit dsDNA HS Standard 1'
      # COMP_C = 'Qubit dsDNA HS Standard 2'
      # COMP_D = 'Qubit dsDNA HS Reagent Dye'
      # SAMPLE_BUFFER = 'Agilent HS D100 Sample Buffer'

    'dsDNA HS Assay Kit' => {
      description: 'Qubit dsNDA HS Assay kit',
      location: ['M20 Freezer'],
      components: [
        {
          input_name: COMP_A,
          qty: 1990, units: MICROLITERS,
          sample_name: nil,
          notes: nil
        },
        {
          input_name: COMP_B,
          qty: 10, units: MICROLITERS,
          sample_name: nil,
          notes: 'Bring to room temp'
        },
        {
          input_name: COMP_C,
          qty: 10, units: MICROLITERS,
          sample_name: nil,
          notes: 'Bring to room temp'
        },
        {
          input_name: COMP_D,
          qty: 10, units: MICROLITERS,
          sample_name: nil,
          notes: 'Do not leave out in the light'
        },
        {
          input_name: SAMPLE_BUFFER,
          qty: 2, units: MICROLITERS,
          sample_name: nil,
          notes: 'Use at room temp'
        }
      ],
      consumables: [
        {
          consumable: CONSUMABLES[QBIT_TUBE],
          qty: 6, units: 'Each'
        },
        {
          consumable: CONSUMABLES[AGILENT_SCREEN_TAPE],
          qty: 1, units: 'Each',
          notes: 'Use at Room temperature'
        }
      ]
    },

    'Agilent HS D100 Kit' => {
      description: 'Agilent HS D100 Kit',
      location: ['M20 Freezer'],
      components: [
        {
          input_name: AGE_BUFFER,
          qty: 2, units: MICROLITERS,
          sample_name: nil,
          notes: 'Bring to room temp'
        }
      ],
      consumables: [
        {
          consumable: CONSUMABLES[STRIP_TUBE8],
          qty: 1, units: 'Each',
        },
        {
          consumable: CONSUMABLES[MICRO_TUBE],
          qty: 1, units: 'Each',
        },
        {
          consumable: CONSUMABLES[TUBE_5ML],
          qty: 1, units: 'Each',
        }
      ]
    },

    'QiAmp 96 Viral RNA Kit' => {
      description: 'QiAmp 96 Viral RNA Kit',
      location: ['Room Temperature Location'],
      components: [
        {
          input_name: AVL,
          qty: 560, units: MICROLITERS,
          sample_name: nil
        },
        {
          input_name: AW1,
          qty: 500, units: MICROLITERS,
          sample_name: nil
        },
        {
          input_name: AW2,
          qty: 500, units: MICROLITERS,
          sample_name: nil
        },
        {
          input_name: AVE,
          qty: 80, units: MICROLITERS,
          sample_name: nil
        },
        {
          input_name: ELUTE,
          qty: nil, units: MICROLITERS,
          sample_name: nil
        },
        {
          input_name: AVE_CARRIER,
          qty: 60, units: MICROLITERS,
          sample_name: nil
        }
      ],
      consumables: [
        {
          consumable: CONSUMABLES[QIAAMP_PLATE],
          qty: 10, units: 'Each'
        }
      ]
    }

  }.freeze
end
