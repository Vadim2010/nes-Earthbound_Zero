.segment "VECTORS"
.export RESET_vector
.import nmi, reset, irq

NMI_vector:
    .addr nmi

RESET_vector:
    .addr reset

IRQ_vector:
    .addr irq
