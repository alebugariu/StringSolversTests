(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x579 (str.contains """a""" "0")))
 (= $x579 false)))
(check-sat)

(get-info :reason-unknown)



