;; Staking Contract
;; Allows users to stake STX

;; Constants
(define-constant contract-owner tx-sender)
(define-constant err-owner-only (err u100))
(define-constant err-insufficient-balance (err u101))
(define-constant err-no-stake (err u102))

;; Data Variables
(define-data-var total-staked uint u0)

;; Data Maps
(define-map stakes principal uint)
(define-map stake-time principal uint)
