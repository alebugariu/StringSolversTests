(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x317 (str.contains """a""" "\x07")))
 (= $x317 false)))
(check-sat)

(get-info :reason-unknown)



