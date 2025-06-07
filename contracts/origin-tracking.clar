;; Origin Tracking Contract
;; This contract tracks the origin of fibers

(define-data-var last-batch-id uint u0)

(define-map fiber-batches
  { batch-id: uint }
  {
    producer-id: uint,
    fiber-type: (string-ascii 50),
    harvest-date: uint,
    location: (string-ascii 100),
    quantity: uint
  }
)

(define-public (register-fiber-batch
    (producer-id uint)
    (fiber-type (string-ascii 50))
    (harvest-date uint)
    (location (string-ascii 100))
    (quantity uint))
  (let
    (
      (new-batch-id (+ (var-get last-batch-id) u1))
    )
    (var-set last-batch-id new-batch-id)
    (map-set fiber-batches
      { batch-id: new-batch-id }
      {
        producer-id: producer-id,
        fiber-type: fiber-type,
        harvest-date: harvest-date,
        location: location,
        quantity: quantity
      }
    )
    (ok new-batch-id)
  )
)

(define-public (get-fiber-batch (batch-id uint))
  (match (map-get? fiber-batches { batch-id: batch-id })
    batch (ok batch)
    (err u404)
  )
)

(define-constant contract-owner tx-sender)
